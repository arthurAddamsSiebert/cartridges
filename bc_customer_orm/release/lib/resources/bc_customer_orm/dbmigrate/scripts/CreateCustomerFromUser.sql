declare
  v_customerTypeID customer.customertypeid%type := '&param1';
  v_typeCode       basicprofile.typeCode%type   := '&param2';
  v_customerUUID   customer.uuid%type;
  v_newCCnt        number := 0;
  v_newCPACnt      number := 0;
begin
  for v_rec in
  (
    select bp.uuid,
           bp.businesspartnerno,
           c.uuid                   as customerUUID,
           org.organizationdomainid as domainid
      from basicprofile bp
      join organization org on (org.organizationdomainid = bp.domainid and org.typecode = 50)
      -- get all (also "nulls" for customerUUID) the customers with customer no that matches the business partner no of the basicprofile
      left outer join customer c on (c.customerno = bp.businesspartnerno and c.domainid = bp.domainid)
      -- filter: get only not yet existing customer/customerprofileassignment rows
     where not exists
           (
             select 1
               from customer c
               join customerprofileassignment cpa on (c.uuid = cpa.customerid)
              where bp.domainid = c.domainid
                and bp.uuid = cpa.profileid
           )
  )
  loop
    begin
      if v_rec.customerUUID is null
      then
        -- generate new customer uuid
        v_customerUUID := sf_create_uuid();
        -- create customer
        insert into customer (customerno, customertypeid, profileid, uuid, domainid, oca, lastmodified)
          values (v_rec.businesspartnerno, v_customerTypeID, v_rec.uuid, v_customerUUID, v_rec.domainid, 0, utctimestamp());
        v_newCCnt := v_newCCnt + 1;
      else
        v_customerUUID := v_rec.customerUUID;
      end if;

      -- set profile type to company profile, e.g.main profile                  
      update basicprofile set typecode = v_typecode
       where uuid = v_rec.uuid;

      -- create customer profile assignment
      insert into customerprofileassignment (customerid, profileid, oca)
        values (v_customerUUID, v_rec.uuid, 0);

      v_newCPACnt := v_newCPACnt + 1;

    exception
      when others then
        logger.log('can not migrate user to customer!');
        rollback;
    end;
  end loop;
  commit;
  logger.log('Customer added count: '||v_newCCnt);
  logger.log('Customer profile assignment added count: '||v_newCPACnt);
end;
/
