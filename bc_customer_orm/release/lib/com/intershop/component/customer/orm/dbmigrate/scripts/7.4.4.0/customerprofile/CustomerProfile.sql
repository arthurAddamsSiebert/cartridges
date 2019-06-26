update customer c set 
c.profileid = (
    select bp.uuid
    from basicprofile bp 
    inner join customerprofileassignment cpa on bp.uuid = cpa.profileid and bp.typecode = 3 
    where c.uuid = cpa.customerid
);

/