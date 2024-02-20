select * from titanic;

select * from titanic order by PassengerId desc limit 10;

-- 1. Number of passengers who survived.
select count(*) as "Total_Survived" from titanic where Survived=1;

-- 2. Average age of passengers.
select avg(age) from titanic;

-- 3. Find the number of passengers in each class.
select Pclass, count(*) as "Total_Passengers"  from titanic group by Pclass;

-- 4. The average fare paid by passengers in each class.
select Pclass,avg(Fare) from titanic group by Pclass;

-- 5. The name of the passenger with the highest fare.
select Name, Fare from titanic where Fare=(select max(Fare) from titanic);

-- 6. The oldest survivor
select Name,Age from titanic where age=(select max(age) from titanic where Survived=1);

-- 7. The number of passengers who paid more than the average fare.
select count(*) as num_passengers from titanic where Fare > (select avg(Fare) from titanic);

-- 8. the name of the passenger who had the most parents or children on board.
select Name from titanic where Parch= (select max(Parch) from titanic);

-- 9. Number of male and female passengers.
select 
sum(case when Sex = "male" then 1 else 0 end) as num_male,
sum(case when Sex = "female" then 1 else 0 end) as num_female
from titanic;

-- 10. the number of male and female passengers who survived.
select Sex, count(*) from titanic where Survived=1
group by Sex;




