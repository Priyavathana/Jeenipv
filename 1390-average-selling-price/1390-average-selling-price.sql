/* Write your T-SQL query statement below */

select p.product_id, 
coalesce(round(cast(sum(u.units*p.price) as decimal(10,2))/cast(sum(u.units)as decimal(10,2)),2),0) as average_price 
from prices p
left join unitssold u
on p.product_id = u.product_id
and u.purchase_date between p.start_date and p.end_date
group by p.product_id; 
