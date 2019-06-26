WHENEVER SQLERROR EXIT SQL.SQLCODE

--
-- Create view containing consolidation relevant basket information.
-- This view is a workaround for a platform level query encoding problem.
--
-- For performance reasons, this view should be changed into a snapshot
-- view that gets updated in feasible intervals. This however would 
-- introduce a time gap into query and may cause consistency problems.
--

CREATE OR REPLACE VIEW BasketState AS
SELECT asg.ownerid AS BasketID,osg.intvalue AS OrderState, asg.intvalue AS ApprovalState 
FROM Basket_AV asg,Basket_AV osg
WHERE
asg.ownerid = osg.ownerid AND
asg.name = 'ApprovalStateGroup' AND
osg.name = 'OrderStateGroup'
;

-- ...

exit