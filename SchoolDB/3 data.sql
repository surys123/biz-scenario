use SchoolDB 
go 

delete Applicant
go 

insert Applicant(FirstName, LastName, Address, City, State, ZipCode, PhoneNumber, DOB, Grade, ReceivedDate, InterviewDate, Accepted, RankingNum)
select 'Tzvi', 'Schwartz', '12 Horton Drive', 'Monsey', 'NY', '10952', '8457859856', '05-06-2008', 8, '11-30-2024', '12-05-2024', 1, 1
union select 'Yosef', 'Schwartz', '12 Horton Drive', 'Monsey', 'NY', '10952', '8457859856', '05-06-2008', 8, '11-30-2024', '12-05-2024', 1, 1
union select 'Yaakov', 'Fried', '158 College Road', 'Suffern', 'NY', '10901', '8455876598', '08-09-2012', 4, '10-20-2024', '12-05-2024', 1, 3
union select 'Yosef', 'Rubin', '11 Main Street',  'Monsey', 'NY', '10952', '8455836952', '10-01-2008', 7, '11-30-2024', '12-05-2024', 1, 3
union select 'Binyamin', 'Katz', '25 Willow Lane', 'Spring Valley', 'NY', '10977', '8456547823', '07-15-2010', 6, '11-15-2024', '12-01-2024', 1, 2
union select 'Moshe', 'Green', '72 Maple Court', 'Pomona', 'NY', '10970', '8458907621', '03-03-2009', 7, '10-25-2024', '12-01-2024', 1, 1
union select 'Avi', 'Rosenberg', '19 Ridge Road', 'New City', 'NY', '10956', '8457699824', '11-02-2011', 5, '11-10-2024', '12-01-2024', 1, 1
union select 'Rivka', 'Stern', '33 Chestnut Avenue', 'Airmont', 'NY', '10952', '8458134529', '06-24-2012', 4, '11-20-2024', '12-01-2024', 1, 2
union select 'Yaakov', 'Weiss', '48 Brookside Drive', 'Monsey', 'NY', '10952', '8459386120', '02-11-2009', 7, '11-28-2024', '12-01-2024', 1, 2
union select 'Eliyahu', 'Goldstein', '14 Oak Street', 'Monsey', 'NY', '10952', '8457916423', '09-25-2010', 6, '01-03-2025', null, null, 2
union select 'Moshe', 'Klein', '85 Cedar Lane', 'Spring Valley', 'NY', '10977', '8456238719', '04-18-2009', 7, '01-02-2025', null, null, 1
union select 'Shimon', 'Berger', '20 Forest Road', 'Airmont', 'NY', '10901', '8458726951', '07-11-2011', 5, '01-01-2025', null, null, 3
union select 'Aaron', 'Feldman', '45 Birch Lane', 'Spring Valley', 'NY', '10977', '8456723451', '08-17-2009', 7, '01-02-2025', null, null, 3
union select 'Menashe', 'Greenbaum', '12 Valley Road', 'Monsey', 'NY', '10952', '8458795632', '05-21-2010', 6, '01-01-2025', null, null, 2
union select 'Yitzchak', 'Silver', '78 Forest Lane', 'Pomona', 'NY', '10970', '8456981234', '07-30-2011', 5, '01-03-2025', null, null, 1
