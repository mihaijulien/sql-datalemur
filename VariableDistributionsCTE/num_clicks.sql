with EmailLinkClicksCTE as (
select 
    UserID,
    count(*) as num_link_clicks
from
    FrontendEventLog
where  
    EventID = 5
group by
    UserID
)


select 
    num_link_clicks,
    count(*) as users
from 
    EmailLinkClicksCTE
group by
    num_link_clicks;
