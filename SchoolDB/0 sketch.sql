/*
SchoolDB
Applicant
	FirstName varchar(30) not null not blank
	MiddleName varchar(20) null not blank
	LastName varchar(30) not null not blank
	Address varchar(100) not null not blank
    City varchar(20) not null not blank
    State char(2) not null not blank
    ZIpCode char(5) not null all numeric
	PhoneNumber char(10) not null all must be numeric
	DOB date not null between 09-30-2007 and 10-01-2019
	Grade int not null between 1 and 8
	ReceivedDate not null before current date
	InterviewDate null 
        Accepted bit not null 
	RankingNum int not null between 1 and 4
	RankingDesc computed
	
	constraint ReceivedDate < InterviewDate
	constraint if Rank = 4 then accepted must be 0
	constraint if interview date is null then accepted = 0

/