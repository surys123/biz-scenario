--1) We would like to give the teachers a print-out of the accepted applicants presented as: Last name, first name, address, phone number, birthday, grade and student ranking.
--Can you order the top students on top?
select a.LastName, a.FirstName, Address = concat(a.Address, ' ', a.City, ' ', a.State, ' ', a.ZipCode), a.PhoneNumber, a.DOB, a.Grade, a.RankingNum
from Applicant a 
where a.Accepted = 1
order by a.RankingNum 
--2) The principal would like to see how many students will need to be in the rememdial classroom. Anyone with a ranking of 3 will need.
--Can you show me the name of the student and grade of those who will need to be placed there?
select a.FirstName, a.LastName, a.Grade
from Applicant a 
where a.RankingNum = 3
and a.Accepted = 1
--3) Show me the average amount of days it took for students to recieve an interview once we recieved their application, per student ranking.
--For the students who didn't yet recieve an interview, calculate the average days from the current date.
select AvgDaysToRecieveInterview = avg(datediff(day, a.ReceivedDate, isnull(a.InterviewDate, getdate()))), a.RankingNum
from Applicant a 
group by a.RankingNum
