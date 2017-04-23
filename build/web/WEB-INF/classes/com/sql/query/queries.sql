drop sequence student_id_seq;
drop sequence course_id_seq;
drop sequence prof_id_seq;
drop sequence dept_id_seq;

drop table student;
drop table courses;
drop table professsor;
drop table DEPARTMENT;

create sequence student_id_seq start with 627000 increment by 1 order;
create sequence course_id_seq start with 110 increment by 10 order;
create sequence prof_id_seq start with 200000 increment by 10 order;
create sequence dept_id_seq start with 100 increment by 10 order;


create table student(
ID varchar(20) not null primary key,
USERNAME varchar(20) NOT NULL,
PASSWORD varchar(8) NOT NULL,
FIRSTNAME varchar(255) NOT NULL,
LASTNAME varchar(255) NOT NULL,
DATEOFBIRTH date not null,
EMAILADDRESS varchar(255) NOT NULL
);

insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0001', 'BING0001', 'Avinsah', 'Sharma', '01-APR-99', 'avinash@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0002', 'BING0002', 'Ankush', 'Sharma', '01-APR-00', 'ankush@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0003', 'BING0003', 'Bobby', 'Gelda', '01-APR-89', 'bobby@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0004', 'BING0004', 'Fred', 'Johns', '01-JAN-89', 'fred@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0005', 'BING0005', 'Bob', 'Wolmer', '01-JAN-88', 'bob@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0006', 'BING0006', 'Papa', 'Johns', '01-JAN-88', 'papa@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0007', 'BING0007', 'Ram', 'Malik', '10-APR-86', 'ram@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0008', 'BING0008', 'Mohit', 'Chaudhri', '10-APR-86', 'mohit@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0009', 'BING0009', 'Piyush', 'Shrivastava', '1-APR-86', 'piyush@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0010', 'BING0010', 'Avinash', 'Reddy', '1-JUN-86', 'avinsah@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0011', 'BING0011', 'Avinash', 'Reddy', '1-JUN-86', 'avinsah@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0012', 'BING0012', 'Ankit', 'Shamrma', '1-JUN-86', 'ankit@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0013', 'BING0013', 'Anil', 'Shamrma', '1-JUN-84', 'anil@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0014', 'BING0014', 'Srikanth', 'Murli', '1-JUN-74', 'srikanth@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0015', 'BING0015', 'Bhanu', 'Pratap', '1-JUN-74', 'bhanu@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0016', 'BING0016', 'Kushdeep', 'Rana', '21-JAN-87', 'kushdeep@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0017', 'BING0017', 'Mukesh', 'Jangra', '21-OCT-87', 'mukesh@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0018', 'BING0018', 'Dharminder', 'Kumar', '21-NOV-67', 'dharminder@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0019', 'BING0019', 'Rishi', 'Kumar', '21-NOV-07', 'rishi@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0020', 'BING0020', 'Prabhash', 'Manmeet', '11-FEB-07', 'prabhash@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0021', 'BING0021', 'Abhishek', 'Tyagi', '21-FEB-97', 'abhishek@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0022', 'BING0022', 'Anupesh', 'Pachori', '21-JAN-87', 'anupesh@binghamton.edu');
insert into student values ('B00'||LPAD(student_id_seq.nextval,6,0), 'BING0023', 'BING0023', 'Hunny', 'Khanduja', '21-SEP-87', 'hunny@binghamton.edu');


create table courses(
courseid varchar(20) not null primary key,
DEPTCODE varchar(20) NOT NULL,
TITLE varchar(255) NOT NULL,
COURSE_CREDIT int NOT NULL,
PREREQUISITECOURSEID varchar(255) NOT NULL,
COURSEINTAKE int NOT NULL
);

insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'Computer Architecture', 3, 'CS410', 50);
insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'Program System Tools', 3, 'CS405', 50);
insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'zVM Virtualization', 3, 'CS450', 50);
insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'Machine Learning', 3, 'CS350', 30);
insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'Data Structure & Algorithm', 3, 'CS200', 60);
insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'Computer Networks', 3, 'CS530', 60);
insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'Programming Language', 3, 'CS260', 60);
insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'Database System', 3, 'CS360', 60);
insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'Data Mining', 3, 'CS280', 30);
insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'Termination Project', 3, 'CS520', 30);
insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'Object Oriented Programming', 3, 'CS220', 30);
insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'Operating Systems', 3, 'CS222', 30);
insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'Visual Information Processing', 3, 'CS262', 30);
insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'Distributed System', 3, 'CS268', 30);
insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'Industrial Internship', 3, 'NONE', 30);
insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'Independent Study', 3, 'CS297', 30);
insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'Master Thesis', 3, 'CS199', 90);
insert into courses values('CS'||LPAD(course_id_seq.nextval,3,0), 'Computer Science', 'Predissertation Research', 3, 'CS698', 90);

create table PROFESSOR
(PROFID varchar(20) not null primary key,
FIRSTNAME varchar(255) NOT NULL,
LASTNAME varchar(255) NOT NULL,
DATEOFBIRTH date not null,
DEPT varchar(20),
COURSEID  varchar(20),
EMAILADDRESS varchar(255) NOT NULL
);
insert into PROFESSOR values('B00'||LPAD(prof_id_seq.nextval,6,0), 'Karthik', 'Gopalan', '1-APR-86', 'Computer Science','CS520','karthik.gopalan@binghamton.edu'); 
insert into PROFESSOR values('B00'||LPAD(prof_id_seq.nextval,6,0), 'Weiyi', 'Meng', '21-APR-56', 'Computer Science','CS532','weiyi.meng@binghamton.edu');
insert into PROFESSOR values('B00'||LPAD(prof_id_seq.nextval,6,0), 'Yu', 'Liu', '21-Jan-56', 'Computer Science','CS532','yu.liu@binghamton.edu');
insert into PROFESSOR values('B00'||LPAD(prof_id_seq.nextval,6,0), 'Aravind', 'Prakash', '21-OCT-66', 'Computer Science','CS632','aravind.prakash@binghamton.edu');
insert into PROFESSOR values('B00'||LPAD(prof_id_seq.nextval,6,0), 'Leslie', 'Lander', '21-OCT-66', 'Computer Science','CS698','leslie.lander@binghamton.edu');
insert into PROFESSOR values('B00'||LPAD(prof_id_seq.nextval,6,0), 'Guahan', 'Yan', '11-NOV-56', 'Computer Science','CS532','guahan.yan@binghamton.edu');
insert into PROFESSOR values('B00'||LPAD(prof_id_seq.nextval,6,0), 'Madhusudan', 'GovindRaju', '11-NOV-56', 'Computer Science','CS520','madhusudan.govindraju@binghamton.edu');
insert into PROFESSOR values('B00'||LPAD(prof_id_seq.nextval,6,0), 'Michael J', 'Lewis', '11-NOV-56', 'Computer Science','CS599','michael.lewis@binghamton.edu');
insert into PROFESSOR values('B00'||LPAD(prof_id_seq.nextval,6,0), 'Kenneth', 'Chiu', '11-NOV-56', 'Computer Science','CS698','kenneth.chiu@binghamton.edu');
insert into PROFESSOR values('B00'||LPAD(prof_id_seq.nextval,6,0), 'Ping', 'Yang', '15-Feb-76', 'Computer Science','CS698','ping.yang@binghamton.edu');
insert into PROFESSOR values('B00'||LPAD(prof_id_seq.nextval,6,0), 'Mo', 'Sha', '15-Feb-76', 'Computer Science','CS698','mo.sha@binghamton.edu');
insert into PROFESSOR values('B00'||LPAD(prof_id_seq.nextval,6,0), 'Patrick', 'Madden', '15-Feb-76', 'Computer Science','CS698','patrick.madden@binghamton.edu');
insert into PROFESSOR values('B00'||LPAD(prof_id_seq.nextval,6,0), 'Kyoung-Don', 'Kang', '15-Jan-65', 'Computer Science','CS698','kdkang@binghamton.edu');
insert into PROFESSOR values('B00'||LPAD(prof_id_seq.nextval,6,0), 'Anand', 'Seetharan', '15-Jan-65', 'Computer Science','CS599','anand.seetharan@binghamton.edu');
insert into PROFESSOR values('B00'||LPAD(prof_id_seq.nextval,6,0), 'Zongfie', 'Zang', '25-MAY-75', 'Computer Science','CS597','zongfie.zang@binghamton.edu');
insert into PROFESSOR values('B00'||LPAD(prof_id_seq.nextval,6,0), 'Lijun', 'Yin', '25-MAY-75', 'Computer Science','CS597','lijun.yin@binghamton.edu');



create table DEPARTMENT
(DEPTID varchar(20),
DEPARTMENT_NAME varchar (255),
BUILDING varchar(255),
DEPARTMENT_INTAKE  int
);

insert into DEPARTMENT values('BU'||LPAD(dept_id_seq.nextval,3,0), 'Computer Science', 'Engineering Building', 290);
insert into DEPARTMENT values('BU'||LPAD(dept_id_seq.nextval,3,0), 'Department of Economics', 'Science 2', 90);
insert into DEPARTMENT values('BU'||LPAD(dept_id_seq.nextval,3,0), 'Music Department', 'Fine Arts', 50);
insert into DEPARTMENT values('BU'||LPAD(dept_id_seq.nextval,3,0), 'Health Department', 'Champlain', 130);
insert into DEPARTMENT values('BU'||LPAD(dept_id_seq.nextval,3,0), 'Industrial Engineering', 'Anderson Center', 130);
insert into DEPARTMENT values('BU'||LPAD(dept_id_seq.nextval,3,0), 'Mechanical Engineering', 'Scince 5', 80);
insert into DEPARTMENT values('BU'||LPAD(dept_id_seq.nextval,3,0), 'Information Technology', 'University Union', 80);
insert into DEPARTMENT values('BU'||LPAD(dept_id_seq.nextval,3,0), 'Mathematical Sciences', 'Science 1', 90);
insert into DEPARTMENT values('BU'||LPAD(dept_id_seq.nextval,3,0), 'Social Services Sciences', 'Science 3', 190);
insert into DEPARTMENT values('BU'||LPAD(dept_id_seq.nextval,3,0), 'Anthropology', 'Fine Arts', 10);
insert into DEPARTMENT values('BU'||LPAD(dept_id_seq.nextval,3,0), 'BioChemistry', 'Science 3', 50);
insert into DEPARTMENT values('BU'||LPAD(dept_id_seq.nextval,3,0), 'Entreprenership', 'Science 4', 60);
insert into DEPARTMENT values('BU'||LPAD(dept_id_seq.nextval,3,0), 'Business Administration', 'Science 5', 60);

