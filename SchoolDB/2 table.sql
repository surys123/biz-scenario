use SchoolDB 
go

drop table if exists Applicant 
go 

create table dbo.Applicant(
    ApplicantId int not null identity primary key,
    FirstName varchar(30) not null constraint ck_Applicant_FirstName_cannot_be_blank check(FirstName <> ''),
    MiddleName varchar(20) null constraint d_Applicant_MiddleName default '',
    LastName varchar(30) not null constraint ck_Applicant_LastName_cannot_be_blank check(LastName <> ''),
    Address varchar(100) not null constraint ck_Applicant_Address_cannot_be_blank check(Address <> ''),
    City varchar(20) not null constraint ck_Applicant_City_cannot_be_blank check(City <> ''),
    State char(2) not null constraint ck_Applicant_State_cannot_be_blank check(State <> ''),
    ZipCode char(5) not null constraint ck_Applicant_ZipCode_must_be_all_numeric check(ZipCode like '[0-9][0-9][0-9][0-9][0-9]'),
    PhoneNumber char(10) not null constraint ck_Applicant_PhoneNumber_is_all_numeric check(PhoneNumber like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    DOB date not null constraint ck_Applicant_DOB_between_September_30_2007_and_October_1_2019 check(DOB between '09-30-2007' and '10-01-2019'),
    Grade int not null constraint ck_Applicant_Grade_between_1_and_8 check(Grade between 1 and 8),
    ReceivedDate date not null constraint ck_Applicant_ReceivedDate_before_the_current_date check(ReceivedDate <= getdate()),
    InterviewDate date,
    Accepted bit,
    RankingNum int not null constraint ck_Applicant_RankingNum_between_1_and_4 check(RankingNum between 1 and 4),
    RankingDesc as case RankingNum
                    when 1 then 'Top Student'
                    when 2 then 'Average Student'
                    when 3 then 'Needs Improvement'
                    when 4 then 'Below Class Level'
                end,
    constraint ck_Applicant_ReceivedDate_must_be_before_InterviewDate check(ReceivedDate <= InterviewDate),
    constraint ck_Applicant_if_RankingNum_is_4_then_student_not_accepted check(RankingNum = 4 and Accepted = 0 or (RankingNum <> 4 and Accepted in (0,1))),
    constraint ck_Applicant_if_InterviewDate_is_null_then_cannot_be_Accepted_yet check((InterviewDate is null and Accepted is null) or (InterviewDate is not null and Accepted is not null))
)
go