create database library;

use library;

create table Branch(Branch_no int PRIMARY KEY,Manager_Id int,Branch_address varchar(25),Contact_no int);

desc Branch;

insert into Branch values
(101,100111,"DevOps",222555),
(102,100289,"AWS",223355),
(103,100777,"Data Science",227879),
(104,100554,"Java",221456),
(105,100892,"Python",224469);

select * from branch;

create table Employee(Emp_Id int PRIMARY KEY,Emp_name varchar(25),Position varchar(20),Salary int,Branch_no int,FOREIGN Key(Branch_no) references Branch(Branch_no));

desc Employee;

insert into Employee values
(112369,"Priya","Developer",35000,104),
(118976,"Mariya","Developer",34000,105),
(118236,"Martin","Engineer",37000,101),
(117526,"Basil","Engineer",44000,102),
(113652,"Jerin","Analyst",22000,103),
(114529,"Paul","Engineer",39000,103),
(118921,"Lakshmi","Developer",33000,105),
(117447,"Thomas","Developer",38000,104),
(116533,"Joseph","Engineer",52000,102),
(112745,"Tom","Analyst",32000,103),
(115889,"Pablo","Engineer",55000,103),
(112785,"Gabriel","Developer",32000,104),
(112145,"Anu","Developer",32000,104),
(113665,"Manu","Support",20000,104),
(112148,"Wilson","Implementation",32500,104),
(119987,"Jackson","Implementation",32000,105),
(113785,"Jennifer","Developer",55000,104),
(116332,"Sebastian","Support",21000,105),
(114446,"Arun","Implementation",28000,105),
(115523,"Ajith","Support",21000,105),
(118523,"Alfred","Engineer",56000,103);

select * from employee;

create table Books(ISBN varchar(20) PRIMARY KEY,Book_title varchar(100),Category varchar(30),Rental_Price int,Status enum("yes","no"),Author varchar(30),Publisher varchar(50));

desc Books;

insert into books values
("978-93-5163-389-1","Data Structure Using C","Programming",100,"no","Reema Thareja","Thakur Publications Lucknow"),
("978-93-5019-561-1","Junior Level Books Introduction to Computer","Programming",100,"yes","Perry Donham","Reader's Zone"),
("978-93-8067-432-2","Client Server Computing","Server Computing",100,"yes","Smith","Sun India Publications, New Delhi"),
("978-81-933904-9-8","Client Server Computing","Server Computing",100,"yes","Paul","K Nath & Sons, Meerut"),
("978-06-794207-3-6","A Tale Of Two Cities","Historical fiction",80,"no","Charles Dickens","Knopf : Distributed by Random House, New York"),
("978-06-061709-7-0","Harry Potter and the Philosopher's Stone","Fantasy",70,"yes","J. K. Rowling","Scholastic Inc., New York"),
("978-00-625021-7-9","The Alchemist","Fables",100,"yes","Paulo Coelho","HarperSanFrancisco, [San Francisco]"),
("978-06-796001-2-1","Les Misérables","History",100,"no","Victor Hugo","The Modern Library, New York"),
("978-01-520239-8-0","The Little Prince","Fairy tales",50,"no","Antoine de Saint-Exupéry","Harcourt, San Diego"),
("978-00-602348-1-2","The Lion, the Witch and the Wardrobe","Fantasy",40,"yes","C. S. Lewis","HarperCollins, New York"),
("978-04-868219-5-5","Don Quixote","Fiction",100,"no","Miguel de Cervantes","Dover Publications, INC, Mineola, New York"),
("978-06-796016-8-5","Pride and prejudice","Domestic fiction",80,"yes","Jane Austen","Modern Library, New York"),
("978-03-855042-0-1","The Da Vinci code","Fiction",100,"yes","Dan Brown","Doubleday, New York"),
("978-06-708691-7-6","Around the world in eighty days","Adventure stories",90,"yes","Jules Verne","Viking, New York"),
("978-0190866273","Democracy: A Life","History",50,"yes","Paul Cartledge","Oxford University Press"),
("978-0394703916","What Is History?","History",60,"yes","Carr, E. H.","Vintage"),
("978-0394740676","Orientalism","History",40,"yes","Edward Wadie Said","Vintage"),
("978-1620973929","Lies My Teacher Told Me: Everything Your American History Textbook Got Wrong","History",40,"yes","James W. Loewen","Dover Publications, INC, Mineola, New York"),
("9788122613049","Randamoozham","Novel",80,"no","M. T. Vasudevan Nair","Current Books"),
("9788184231175","Aadujeevitham","Novel",90,"no","Benyamin","Green Books Pvt. Ltd"),
("9788171305704","Oru Desathinte Kadha","Novel",70,"yes","S. K. Pottekkatt","DC Books"),
("9788171305797","Oru Theruvinte Kadha","Novel",70,"yes","S. K. Pottekkatt","DC Books"),
("9780863117367","Kaalam","Novel",50,"yes","M. T. Vasudevan Nair","Current Books"),
("‎978-8171302444","Neermathalam Pootha Kalam","Memoirs",80,"no","Madhavikutty","DC Books"),
("978-8171309900","Agnichirakukal","Autobiography",100,"yes","A.P.J Abdul Kalam","DC Books"),
("978-8126404612","Paathira Sooryante Naattil","Malayalam Travel Literature",60,"yes","S. K. Pottekkatt","DC Books"),
("978-8171309047","Balidweep","Malayalam Travel Literature",50,"yes","S. K. Pottekkatt","DC Books"),
("978-8171300716","Kayar","Novel",70,"yes","Thakazhi Sivasankara Pillai","DC Books");

select * from books;

create table Customer(Customer_Id int PRIMARY KEY,Customer_name varchar(25),Customer_address varchar(50),Reg_date date);
desc Customer;

insert into Customer values
(1001,"Alfred","64,ABC Street",'2017-06-06'),
(1002,"Jennifer","North Avenue,XYZ Street",'2017-09-11'),
(1003,"Pablo","23 Workhaven Lane",'2018-01-05'),
(1004,"Joseph","1411 Lillydale Drive",'2018-04-24'),
(1005,"Basil","North Road,ABC Street",'2018-08-29'),
(1006,"Paul","853 Broadway, South Lane",'2018-11-21'),
(1007,"Thomas","West Park Road, 123 Street",'2019-07-03'),
(1008,"Martin","125 Statue Road, Freedom Street",'2020-02-23'),
(1009,"Priya","18 Waverly Pl,Brownhills",'2020-09-10'),
(1010,"Mariya","334 E 25th St",'2021-05-17'),
(1011,"Lakshmi","240 Mercer St",'2021-08-02'),
(1012,"Wilson","310 3rd Ave,DS Street",'2021-09-09'),
(1013,"Anu","636 Greenwich St",'2022-01-30'),
(1014,"Tom","239 Greene St",'2022-07-11'),
(1015,"Gabriel","20 Cooper Square",'2022-10-01'),
(1016,"Jackson","238 1st Ave, Brownhill",'2022-12-12'),
(1017,"Arun","100 Bleecker St",'2023-03-18'),
(1018,"John","5 University Pl,Greenvilla",'2023-06-22'),
(1019,"Jerin","101 Johnson St",'2023-08-19'),
(1020,"Ajith","123, Rubin Residence,HS Street",'2023-10-25'),
(1021,"Sebastian","80 Lafayette St",'2024-01-28'),
(1022,"Manu","242 Greene St",'2024-03-10');

select * from Customer;

create table IssueStatus(Issue_Id int PRIMARY KEY,Issued_cust int,FOREIGN KEY (Issued_cust) references CUSTOMER(customer_id),Issued_book_name varchar(100),Issue_date date,Isbn_book varchar(20),
FOREIGN KEY(Isbn_book) references BOOKS(isbn));

desc IssueStatus;

insert into IssueStatus values
(60001,1001,"Client Server Computing",'2017-07-10','978-81-933904-9-8'),
(60002,1001,"The Alchemist",'2017-10-13','978-00-625021-7-9'),
(60003,1002,"Client Server Computing",'2017-12-12','978-93-8067-432-2'),
(60004,1003,"Pride and prejudice",'2018-02-10','978-06-796016-8-5'),
(60005,1001,"The Little Prince",'2018-02-15','978-01-520239-8-0'),
(60006,1004,"Paathira Sooryante Naattil",'2018-05-25','978-8126404612'),
(60007,1005,"Oru Desathinte Kadha",'2018-11-10','9788171305704'),
(60008,1001,"Democracy: A Life",'2018-11-21','978-0190866273'),
(60009,1006,"Aadujeevitham",'2018-12-02','9788184231175'),
(60010,1004,"Kayar",'2018-12-29','978-8171300716'),
(60011,1002,"Harry Potter and the Philosopher's Stone",'2019-02-08','978-06-061709-7-0'),
(60012,1006,"The Alchemist",'2019-04-18','978-00-625021-7-9'),
(60013,1004,"Neermathalam Pootha Kalam",'2019-07-11','‎978-8171302444'),
(60014,1004,"Balidweep",'2020-02-15','978-8171309047'),
(60015,1006,"Harry Potter and the Philosopher's Stone",'2020-03-04','‎978-06-061709-7-0'),
(60016,1002,"Around the world in eighty days",'2020-03-15','978-06-708691-7-6'),
(60017,1001,"The Da Vinci code",'2020-05-03','978-03-855042-0-1'),
(60018,1004,"Agnichirakukal",'2020-06-30','978-8171309900'),
(60019,1003,"Lies My Teacher Told Me: Everything Your American History Textbook Got Wrong",'2020-09-23','978-1620973929'),
(60020,1006,"Kaalam",'2021-01-03','9780863117367'),
(60021,1001,"What Is History?",'2021-01-23','978-0394703916'),
(60022,1004,"Junior Level Books Introduction to Computer",'2021-03-11','978-93-5019-561-1'),
(60023,1002,"A Tale Of Two Cities",'2021-04-07','978-06-794207-3-6'),
(60024,1005,"Oru Theruvinte Kadha",'2021-05-25','9788171305797'),
(60025,1011,"Harry Potter and the Philosopher's Stone",'2021-08-10','978-06-061709-7-0'),
(60026,1006,"Randamoozham",'2021-12-28','9788122613049'),
(60027,1013,"Aadujeevitham",'2022-03-15','9788184231175'),
(60028,1016,"The Da Vinci code",'2022-03-15','978-03-855042-0-1'),
(60029,1011,"Balidweep",'2022-04-24','978-8171309047'),
(60030,1006,"Oru Theruvinte Kadha",'2022-06-23','9788171305797'),
(60031,1011,"Aadujeevitham",'2023-01-18','9788184231175‎'),
(60032,1006,"Pride and prejudice",'2023-01-18','978-06-796016-8-5'),
(60033,1016,"Oru Desathinte Kadha",'2023-01-29','9788171305704'),
(60034,1013,"The Alchemist",'2023-01-29','978-00-625021-7-9'),
(60035,1001,"Orientalism",'2023-05-05','978-0394740676'),
(60036,1011,"Neermathalam Pootha Kalam",'2023-05-22','‎978-8171302444'),
(60037,1018,"Oru Theruvinte Kadha",'2023-07-22','9788171305797'),
(60038,1019,"Client Server Computing",'2023-09-19','978-93-8067-432-2'),
(60039,1003,"Data Structure Using C",'2023-10-10','978-93-5163-389-1'),
(60040,1004,"Kaalam",'2023-10-21','9780863117367'),
(60041,1011,"Kayar",'2023-11-23','978-8171300716'),
(60042,1002,"Les Misérables",'2023-12-29','978-06-796001-2-1'),
(60043,1018,"Client Server Computing",'2023-12-29','‎‎978-81-933904-9-8'),
(60044,1019,"The Little Prince",'2024-01-05','‎‎978-01-520239-8-0'),
(60045,1001,"Don Quixote",'2024-01-19','978-04-868219-5-5'),
(60046,1021,"The Lion, the Witch and the Wardrobe",'2024-02-10','978-00-602348-1-2'),
(60047,1006,"A Tale Of Two Cities",'2024-02-28','978-06-794207-3-6'),
(60048,1004,"Randamoozham",'2024-03-11','9788122613049'),
(60049,1013,"Neermathalam Pootha Kalam",'2024-03-30','‎‎978-8171302444'),
(60050,1016,"Aadujeevitham",'2024-03-30','‎‎9788184231175'),
(60051,1011,"Data Structure Using C",'2024-05-07','978-93-5163-389-1');

select * from issuestatus;

create table ReturnStatus(Return_Id int PRIMARY KEY,Return_cust varchar(30),Return_book_name varchar(100),Return_date date,Isbn_book2 varchar(20),
FOREIGN KEY(Isbn_book2) references BOOKS(isbn));

desc ReturnStatus;

insert into ReturnStatus values
(80001,'Alfred','Client Server Computing','2017-10-10','978-81-933904-9-8'),
(80002,'Alfred','The Alchemist','2017-12-28','978-00-625021-7-9'),
(80003,'Pablo','Pride and prejudice','2018-04-25','978-06-796016-8-5'),
(80004,'Jennifer','Client Server Computing','2018-04-27','978-93-8067-432-2'),
(80005,'Joseph','Paathira Sooryante Naattil','2018-06-27','978-8126404612'),
(80006,'Alfred','The Little Prince','2018-08-17','978-01-520239-8-0'),
(80007,'Basil','Oru Desathinte Kadha','2019-02-22','9788171305704'),
(80008,'Paul','Aadujeevitham','2019-03-03','9788184231175'),
(80009,'Alfred','Democracy: A Life','2019-03-30','978-0190866273'),
(80010,'Joseph','Kayar','2019-05-02','978-8171300716'),
(80011,'Paul','The Alchemist','2019-07-17','978-00-625021-7-9'),
(80012,'Jennifer',"Harry Potter and the Philosopher's Stone",'2019-08-26','978-06-061709-7-0'),
(80013,'Joseph','Neermathalam Pootha Kalam','2019-10-20','‎978-8171302444'),
(80014,'Joseph','Balidweep','2020-05-25','978-8171309047'),
(80015,'Jennifer','Around the world in eighty days','2020-06-21','978-06-708691-7-6'),
(80016,'Paul',"Harry Potter and the Philosopher's Stone",'2020-09-19','978-06-061709-7-0'),
(80017,'Alfred','The Da Vinci code','2020-12-22','978-03-855042-0-1'),
(80018,'Joseph','Agnichirakukal','2020-12-30','978-8171309900'),
(80019,'Pablo','Lies My Teacher Told Me: Everything Your American History Textbook Got Wrong','2021-02-05','978-1620973929'),
(80020,'Alfred','What Is History?','2021-06-18','978-0394703916'),
(80021,'Joseph','Junior Level Books Introduction to Computer','2021-08-25','978-93-5019-561-1'),
(80022,'Paul','Kaalam','2021-08-30','9780863117367'),
(80023,'Jennifer','A Tale Of Two Cities','2021-09-09','978-06-794207-3-6'),
(80024,'Basil','Oru Theruvinte Kadha','2021-09-28','9788171305797'),
(80025,'Lakshmi',"Harry Potter and the Philosopher's Stone",'2022-03-07','978-06-061709-7-0'),
(80026,'Paul','Randamoozham','2022-04-11','9788122613049'),
(80027,'Anu','Aadujeevitham','2022-08-02','9788184231175'),
(80028,'Lakshmi','Balidweep','2022-11-15','978-8171309047'),
(80029,'Paul','Oru Theruvinte Kadha','2022-11-30','9788171305797'),
(80030,'Lakshmi','Aadujeevitham','2023-04-19','9788184231175'),
(80031,'Anu','The Alchemist','2023-05-13','978-00-625021-7-9'),
(80032,'Lakshmi','Neermathalam Pootha Kalam','2023-07-19','‎978-8171302444'),
(80033,'Paul','Pride and prejudice','2023-07-26','978-06-796016-8-5'),
(80034,'Jackson','The Da Vinci code','2023-09-26','978-03-855042-0-1'),
(80035,'Alfred','Orientalism','2023-12-25','978-0394740676'),
(80036,'John','Oru Theruvinte Kadha','2023-12-28','9788171305797'),
(80037,'Jerin','Client Server Computing','2024-01-12','978-93-8067-432-2'),
(80038,'Joseph','Kaalam','2024-02-22','9780863117367'),
(80039,'Lakshmi','Kayar','2024-03-09','978-8171300716'),
(80040,'Jackson','Oru Desathinte Kadha','2024-03-26','9788171305704'),
(80041,'Pablo','Data Structure Using C','2024-04-27','978-93-5163-389-1'),
(80042,'John','Client Server Computing','2024-05-12','978-81-933904-9-8'),
(80043,'Sebastian','The Lion, the Witch and the Wardrobe','2024-05-12','978-00-602348-1-2');

select * from ReturnStatus;

-- 1. Retrieve the book title, category, and rental price of all available books.
select book_title,category,rental_price from books;

-- 2. List the employee names and their respective salaries in descending order of salary.
select emp_name,salary from employee order by salary desc;

-- 3. Retrieve the book titles and the corresponding customers who have issued those books.
select i.issued_book_name,c.customer_name  from issuestatus i join customer c on i.issued_cust=c.customer_id order by i.issued_book_name;

-- 4. Display the total count of books in each category.
select category,count(*) as bookcount from books group by category;

-- 5.  Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
select emp_name,position from employee where salary>50000;

-- 6. List the customer names who registered before 2022-01-01 and have not issued any books yet.
select customer_name from customer where customer_name not in (select distinct(c.customer_name) from customer c 
 join issuestatus i on c.customer_id=i.issued_cust) and Reg_date <'2022-01-01' ;

-- 7. Display the branch numbers and the total count of employees in each branch.
select branch_no,count(*) as total_employee from employee group by branch_no;

-- 8. Display the names of customers who have issued books in the month of June 2023.
select c.customer_name from customer c join issuestatus i on c.customer_id=i.issued_cust 
where issue_date between '2023-06-01' and '2023-06-30';

-- 8.Display the names of customers who have issued books in the month of July 2023.
select c.customer_name from customer c join issuestatus i on c.customer_id=i.issued_cust
 where issue_date between '2023-07-01' and '2023-07-31';

-- 9. Retrieve book_title from book table containing history.
select book_title from books where category='History';

-- 10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees
select branch_no,count(*) as employeecount from employee group by branch_no having employeecount>5;

