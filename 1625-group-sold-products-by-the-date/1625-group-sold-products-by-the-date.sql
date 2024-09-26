/* Write your T-SQL query statement below */

with cte_products as 
(
    select distinct sell_date, product
    from activities
)
select sell_date,
count(product) as num_sold,
string_agg(product,',') within group (order by product asc) as products
from cte_products
group by sell_date
order by sell_date



