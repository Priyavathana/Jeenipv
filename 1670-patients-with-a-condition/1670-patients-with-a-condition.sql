/* Write your T-SQL query statement below */

select patient_id,
patient_name,
conditions
from patients
where (patindex('DIAB1%',conditions) >0) or (patindex('% DIAB1%',conditions) > 0) ;

