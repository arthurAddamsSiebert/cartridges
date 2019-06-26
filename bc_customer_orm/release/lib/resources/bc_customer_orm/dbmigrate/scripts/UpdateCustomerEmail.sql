declare
  v_typecode            		     basicprofile.typecode%type   := '&param1';
  v_basiccredentials    		     basiccredentials%rowtype;  
  v_upcnt               		     number := 0;
  v_email               		     varchar2(256);    
  v_email_regular_expr  		     varchar2(268)  := '([^()<>@,;:\\".\[\] \x00-\x1f\x7f]+|"([^"\\\r]|\\.)*")(\.([^()<>@,;:\\".\[\] \x00-\x1f\x7f]+|"([^"\\\r]|\\.)*"))*@([^()<>@,;:\\".\[\] _\x00-\x1f\x7f]+([^()<>@,;:\\".\[\] \x00-\x1f\x7f]+)+)(\.([^()<>@,;:\\".\[\] _\x00-\x1f\x7f]+([^()<>@,;:\\".\[\] \x00-\x1f\x7f]+)+))+';
  v_email_reserved_domains_expr  varchar2(69)  := '([@.](example|invalid|localhost|test)$|[@.]example[.](com|net|org)$)';
begin
  for v_rec in
  (
    select bp.uuid, bp.domainid, bp.defaultaddressid 
      from basicprofile bp 
     where bp.email is null and bp.typecode = v_typecode    
  )
  loop
    begin
      if v_rec.defaultaddressid is not null
      then
        -- use the email from the default address
        select ba.email into v_email from basicaddress ba where ba.uuid = v_rec.defaultaddressid and ba.domainid = v_rec.domainid;
        v_upcnt := v_upcnt + 1;        
      else      
        -- get the login and reminderemail from the basic credentials
        select * into v_basiccredentials from basiccredentials bc where bc.basicprofileid = v_rec.uuid and bc.domainid = v_rec.domainid;    
        
        -- if login is an email format use it, otherwise use the reminderemail
        if regexp_like(v_basiccredentials.login, v_email_regular_expr) and regexp_like(v_basiccredentials.login, v_email_reserved_domains_expr) then
            v_email := v_basiccredentials.login;            
        else
            v_email := v_basiccredentials.reminderemail;                        
        end if;        
        
        v_upcnt := v_upcnt + 1;
      end if;

      -- set email of the consumer               
      update basicprofile set email = v_email
       where uuid = v_rec.uuid;
    exception
      when others then
        logger.log('Can not set consumer email!');
        rollback;
    end;
  end loop;
  commit;
  logger.log('Updated profiles count: '||v_upcnt);
end;
/
