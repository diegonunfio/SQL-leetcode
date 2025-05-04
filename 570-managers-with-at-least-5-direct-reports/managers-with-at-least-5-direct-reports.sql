# Write your MySQL query statement below
Select e.name 
from Employee e
JOIN (
    SELECT managerId
    From employee
    Where managerId IS NOT NULL
    GROUP BY managerId
    having COUNT(*) >= 5
) m ON e.id = m.managerId;