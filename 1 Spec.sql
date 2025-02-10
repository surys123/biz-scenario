/*
School Admissions: I am in charge of the application process of a boys elementary school from grades 1st-8th grade. 
Until now, we've been keeping track of all the applications and acceptances manually, but due to to the overwhelming applicants, 
we would like to computerize it.

We would like to record the applicants name (last, first, middle), address, phone number, date of birth and grade applying for.
To keep track of which applications were receieved first, we want to record the date we recieved the application.

To help keep it more organized, please include the interview date and whether or not they were accepted.

In addidion, to try to figure out which students to accept, we need a ranking system which the principal of the previous school provides.
1 = Top Student
2 = Average Student
3 = Needs Improvement
4 = Below Class Level

Since our school is a high pressure academic school, we will not be able to accept anyone who's below class level.

If we recieve an application and any field is not completed, we will disregard the entire application.

Questions:
Q: What is the cutoff date for the school?
The youngest applicant we will accept has to be born on or after 10-01-2019.
The oldest applicant we will accept has to be born on or before 09-30-2007.

Q: Did you already give all applicants an interview?
No, we just received a few new applicants which were not given an interview date yet.

Q: Can someone be accepted before they recieve an interview?
No, it is the school's policy we need to meet with you in person before.

Reports:
1) We would like to give the teachers a print-out of the accepted applicants presented as: Last name, first name, address, phone number, birthday, grade and student ranking.
Can you order the top students on top?
2) The principal would like to see how many students will need to be in the rememdial classroom. Anyone with a ranking of 3 will need.
Can you show me the name of the student and grade of those who will need to be placed there?
3) Show me the average amount of days it took for students to recieve an interview once we recieved their application, per student ranking.
For the students who didn't yet recieve an interview, calculate the average days from the current date.


Here's a partial list of applicants we have:
Tzvi Schwartz, 12 Horton Drive Monsey, NY 10952, 8457859856, 05-06-08, 8th grade, 11-30-24, 12-05-24, accepted, 1
Yosef Schwartz, 12 Horton Drive Monsey, NY 10952, 8457859856, 05-06-08, 8th grade, 11-30-24, 12-05-24, accepted, 1
Yaakov Fried, 158 College Road Suffern, NY 10901, 8455876598, 08-09-12, 4th grade, 10-20-24, 12-05-24, accepted, 3
Yosef Rubin, 11 Main Street  Monsey, NY 10952, 8455836952, 10-01-08, 7th grade, 11-30-24, 12-05-24, accepted, 3
Binyamin Katz, 25 Willow Lane Spring Valley, NY 10977, 8456547823, 07-15-10, 6th grade, 11-15-24, 12-01-24, accepted, 2
Moshe Green, 72 Maple Court Pomona, NY 10970, 8458907621, 03-03-09, 7th grade, 10-25-24, 12-01-24, accepted, 1
Avi Rosenberg, 19 Ridge Road New City, NY 10956, 8457699824, 11-02-11, 5th grade, 11-10-24, 12-01-24, accepted, 1
Rivka Stern, 33 Chestnut Avenue Airmont, NY 10952, 8458134529, 06-24-12, 4th grade, 11-20-24, 12-01-24, accepted, 2
Yaakov Weiss, 48 Brookside Drive Monsey, NY 10952, 8459386120, 02-11-09, 7th grade, 11-28-24, 12-01-24, accepted, 2
Eliyahu Goldstein, 14 Oak Street Monsey, NY 10952, 8457916423, 09-25-10, 6th grade, 01-03-25, null, null, 2
Moshe Klein, 85 Cedar Lane Spring Valley, NY 10977, 8456238719, 04-18-09, 7th grade, 01-02-25, null, null, 1
Shimon Berger, 20 Forest Road Airmont, NY 10901, 8458726951, 07-11-11, 5th grade, 01-01-25, null, null, 3
Aaron Feldman, 45 Birch Lane Spring Valley, NY 10977, 8456723451, 08-17-09, 7th grade, 01-02-25, null, null, 3
Menashe Greenbaum, 12 Valley Road Monsey, NY 10952, 8458795632, 05-21-10, 6th grade, 01-01-25, null, null, 2
Yitzchak Silver, 78 Forest Lane Pomona, NY 10970, 8456981234, 07-30-11, 5th grade, 01-03-25, null, null, 1
*/