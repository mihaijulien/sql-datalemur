-- SQL request(s)​​​​​​‌‌‌​​‌​‌​​​​‌‌‌‌​‌‌‌​‌‌​​ below

/*

*/
with MaxStatusReachedCTE as (
select 
	SubscriptionID,
	max(StatusID) as MaxStatus
from 
	PaymentStatusLog
group by
	SubscriptionID
),

PaymentFunnelStageCTE as (
select 
	s.SubscriptionID,
	case when m.MaxStatus = 1 then 'PaymentWidgetOpened'
		when m.MaxStatus = 2 then 'PaymentEntered'
		when m.MaxStatus = 3 and s.CurrentStatus = 0 then 'User Error with Payment Submission'
		when m.MaxStatus = 3 and s.CurrentStatus != 0 then 'Payment Submitted'
		when m.MaxStatus = 4 and s.CurrentStatus = 0 then 'Payment Processing Error with Vendor'
		when m.MaxStatus = 4 and s.CurrentStatus != 0 then 'Payment Success'
		when m.MaxStatus = 5 then 'Complete'
		when m.MaxStatus is null then 'User did not start payment process'
		end as paymentfunnelstage
from 
	Subscriptions s
left join 
	MaxStatusReachedCTE m
on s.SubscriptionID = m.SubscriptionID
)

select 
	paymentfunnelstage
	count(SubscriptionID) as subscriptions
from 
	PaymentFunnelStageCTE
group by 
	paymentfunnelstage;
