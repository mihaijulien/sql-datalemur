select account_id, 
 sum(case 
   when transaction_type = 'Deposit' then amount else -1 * amount
   end) as balance_amount
from transactions
group by account_id
order by balance_amount;

