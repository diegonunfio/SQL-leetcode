# Write your MySQL query statement below
Select user_id, COUNT(follower_id) AS followers_count
from Followers
group by user_id
order by user_id asc 