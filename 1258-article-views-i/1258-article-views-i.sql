/* Write your T-SQL query statement below */

select distinct v.author_id as id 
from views v
where v.author_id = v.viewer_id
order by id asc;
