-- SQL query for a report that provides the following information for each person in the Person table, regardless if there is an address for each of those people:
-- FirstName, LastName, City, State
select p.PersonId, p.FirstName, p.LastName, a.City, a.State from Person p left outer join Address a on p.PersonId = a.PersonId order by p.PersonId;


-- SQL query to get the second highest salary from the Employee_Salary
-- For example, given the above Employee table, the second highest salary is 200. If there is no second highest salary, then the query should return null.
select IFNULL((select Salary from Employee_Salary order by Salary DESC limit 1, 1), NULL) SecondHighestSalary;
--  Note: Limit xxx, yyy: xxx means offset yyy means row_count: https://dev.mysql.com/doc/refman/5.7/en/select.html

-- top N
-- Solution: Limit N-1 , 1

-- SQL query to rank scores. If there is a tie between two scores, both should have the same ranking.

-- METHOD 1
select Id, Score, (select count(distinct Score)+1 from Scores where Score > s.Score ) Rank from Scores s order by Score DESC;

-- METHOD 2 (FASTER than METHOD1)
SELECT  Score,   @rank := @rank + (@prev <> (@prev := Score)) Rank FROM
  Scores,
  (SELECT @rank := 0, @prev := -1) init
ORDER BY Score desc;

-- METHOD 3 (FASTEST, because it uses a tmp table)
select Id, Score, ( select count(*) + 1 from (select distinct(Score) s from Scores) tmp where s > Score ) Rank from Scores s order by Score DESC;

-- METHOD 4 Using variable
set @rank = 0; set @prev = -1; select Score, if(@prev = Score, @rank, if(@prev:=Score,@rank:= @rank + 1 , -1) ) Rank from Scores order by Score DESC;