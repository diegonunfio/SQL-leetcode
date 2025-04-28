# Write your MySQL query statement below
Select e.name, b.bonus 
From Employee e
left join Bonus b
On e.empid = b.empid
Where b.bonus < 1000 or b.bonus is Null;