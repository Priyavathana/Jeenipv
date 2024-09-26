/* Write your T-SQL query statement below */

select user_id,
concat(  upper(left(name,1)),
          lower(substring(name,2,8))
          ) as name
from users
order by user_id;