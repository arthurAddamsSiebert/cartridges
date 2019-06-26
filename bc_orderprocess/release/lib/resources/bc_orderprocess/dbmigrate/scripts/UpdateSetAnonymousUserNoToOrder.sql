-- set to an unregistered buyer a BuyerNo
-- it is set to the string unregistered-<DocumentNo>
-- alse see pipelet SetAnonymousUserNoToOrder.java

UPDATE isorder o
SET o.buyerno = 'unregistered-'||o.documentno, oca = oca+1
where o.buyerno is null
and o.anonymousflag = 1
;
commit;
