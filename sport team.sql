create database ipl
use ipl
create table Teams(Tno int primary key,Tname varchar(30),Owner varchar(30),Sponsered_Company varchar(35),Coach varchar(30),
Founded int,Captain varchar(25),Location varchar(30),Trophy int)
insert into Teams values(1,"CSK","N.Srinivasan","India cements","Stephen Fleming",2008,"Dhoni","Chennai",5),
(2,"MI","Mukesh Ambani","Reliance","Mahela Jayawardene",2008,"Hardik","Mumbai",5),
(3,"RCB","United Spirits Limited","United Spirits Limited",	"Andy Flower",2008,"Patidhar","Bangalore",1),
(4,"KKR","ShahRukh Khan","Mehta Group","Chandrakant Pandit",2008,"Rahane","Kolkata",3),
(5,"RR","Manoj Badale","Red Birds","Rahul Dravid",2008,"Sanju","Jaipur",1),
(6,"SRH","Kalanithi Maran","Sun Networks","Daniel Vettori",2011,"Cummins","Hyderabad",1),
(7,"GT","Torrent Group","CVC Capital","Ashish Nehra",2022,"Gill","Ahmedabad",1),
(8,"PBKS","Preity Zinta","Dabur","Ricky Ponting",2008,"Shreyas","New chandikar",0),
(9,"DC","Sajjan Jindal","JSW","Hemang Badani",2008,"Axar","Delhi",0),
(10,"LSG","Sanjiv Goenka","Rp Sanjiv Goenka Group","Justin Langer",2022,"Pant","Lucknow",0),
(11,"KTK","Abhinav Presanth","Sahara Group","Geoff Lawson",2011,"Mahela Jayawardene","Kochi",0)
select * from Teams
drop table Teams
truncate table Teams
delete from Teams where Tno=11
alter table Teams change column Sponsered_Company Sponser varchar(35)
update Teams set Location = "Chepauk" where Tno = 1
select * from Teams where Tname = "MI"
select * from Teams where not (Tno=3 and Location="Bangalore")
select count(*) as temp from Teams
select sum(Trophy) as temp from Teams
select avg(Trophy) as temp from Teams
select max(Trophy) as temp from Teams
select min(Trophy) as temp from Teams
select * from Teams where Tname like "%R"
select * from Teams where Founded between 2008 and 2020
select * from Teams order by Tno desc
select count(Trophy),Trophy from Teams group by  Trophy
having count(Trophy)<=2

create table Players(Tno int,Tname Varchar(20) primary key ,Captain varchar(25),Batsmans varchar(50),Wicketkeeper varchar(20),All_Rounders varchar(30),
Bowlers varchar(40),FOREIGN KEY(Tno)REFERENCES teams(Tno))
insert into Players values(1,"CSK","MS Dhoni","Ayush,Urvil,Brevis,Conway","MS Dhoni","Jadeja,Rachin,Ashwin","Pathirana,Khaleel,Noor"),
(2,"MI","Hardik","Rohit,Surya,Tilak","Rickelton","Santner,Hardik,Naman","Boult,Bumrah,Deepak,Karn"),
(3,"RCB","Patidar","Kohli,Mayank,Patidar,Padikkal","Jitesh","Krunal,Livingston,Romario","Bhuvi,Josh,Thusara"),
(4,"KKR","Rahane","Rahane,Rinku,Raghu","Qinton","Russell,Narene,Ali,Venkatesh","Arora,Rana,Varun"),
(5,"RR","Sanju","Jaiswal,Vaibhav,Hetmyer,Rana,Sanju","Jurel","Hasaranga,Parag","Sandeep,Archer,Theekshana"),
(6,"SRH","Cummins","Head,Aniket,Klaasen","Ishan","Abishek,Nitish,Mulder","Shami,Cummins,Harshal,Eshan"),
(7,"GT","Gill","Gill,Sai","Buttler","Rashid,Shahrukh,Rutherford","Ishant,Siraj,Rabada,Prasidh,Kishore"),
(8,"PBKS","Shreyas","Arya,Wadhera,Shreyas,Prabhsimran","Inglis","Shashank,Omarzai,Jansen","Jamieson,Arshdeep,Chahal"),
(9,"DC","Axar","Faf,Jake,Karun,Poral","Rahul","Axar,Vipraj","Starc,Mohit,Natarajan,Kuldeep"),
(10,"LSG","Pant","Pooran,Miller","Pant","Marsh,Badoni,Thakur","Avesh,Mayank,Ravi,Digvesh,Shamar")
select*from Players
drop table Players
truncate table Players
delete from Players where Tno=10
alter table Players change column Wicketkeeper WK varchar(35)
update Players set Captain = "Jitesh" where Tno = 3
select * from Players where Tname = "DC"
select * from Players where not (Tno=9 and Captain="Axar")
select count(*) as temp from Players
select sum(Tno) as temp from Players
select avg(Tno) as temp from Players
select max(Tno) as temp from Players
select min(Tno) as temp from Players
select * from Teams where Tname like "%k"
select * from Teams where Tno between 6 and 9
select * from Teams order by Tno desc

Create table Matches(Matchid int primary key,Tname Varchar(20),Awayteam Varchar(30),Date date,Venue Varchar(30),Time time,
FOREIGN KEY(Tname)REFERENCES Players(Tname))
insert into Matches values(11,"CSK","MI",'2025-05-07',"Chennai",'20:00'),(12,"MI","LSG",'2025-05-08',"Mumbai",'19:30'),
(14,"KKR","SRH",'2025-05-09',"Kolkata",'19:00'),(15,"RR","DC",'2025-05-11',"Jaipur",'18:00'),
(16,"SRH","RCB",'2025-05-12',"Hyderabad",'20:00'),(17,"GT","LSG",'2025-05-13',"Ahmedabad",'19:00'),(18,"PBKS","KKR",'2025-05-14',"New chandikar",'19:30'),
(19,"DC","GT",'2025-05-15',"Delhi",'15:30')
select*from Matches
drop table Matches
truncate table Matches
select * from Matches where Tname like "P%"
select * from Matches where  Time between '19:00'  and '20:00'
select * from Matches order by Time asc

Create table Scores(Matchid int,1stInningsrun int,1stInningwicket int,2ndInningsrun int,2ndInningwicket int,Fours int,
Sixers int,Totalrun int,Win varchar(20) primary key,FOREIGN KEY(Matchid)REFERENCES Matches(Matchid))
insert into Scores values(11,200,4,190,8,16,12,390,"CSK"),(12,180,4,150,8,11,8,330,"MI"),
(14,201,4,185,9,12,10,386,"KKR"),(15,212,4,190,8,15,16,402,"RR"),(17,214,4,207,7,15,13,421,"GT"),
(18,245,4,220,6,16,14,465,"PBKS"),(19,178,6,163,8,8,9,341,"DC")
select*from Scores
drop table Scores
truncate table Scores
select count(*) as temp from Scores
select sum(Totalrun) as temp from Scores
select avg(Totalrun) as temp from Scores
select max(Totalrun) as temp from Scores
select min(Totalrun) as temp from Scores
select * from Scores where Win like "G%"
select * from Scores where Totalrun between 350 and 400
select * from Scores order by Totalrun desc

select Teams.Tname,Teams.Location,Players.Batsmans,Players.Wicketkeeper,Players.Bowlers from Teams inner join Players 
on Teams.Tno=Players.Tno;
select Teams.Tname,Teams.Location,Players.Batsmans,Players.Wicketkeeper,Players.Bowlers from Teams left outer join Players 
on Teams.Tno=Players.Tno;
select Teams.Tname,Teams.Location,Players.Batsmans,Players.Wicketkeeper,Players.Bowlers from Teams right outer join Players 
on Teams.Tno=Players.Tno;
select*from Teams left join Players on Teams.Tno=Players.Tno
union
select*from Teams right join Players on Teams.Tno=Players.Tno

select Players.Tno,Players.Captain,Matches.Matchid,Matches.Date,Matches.Venue from Players inner join Matches 
on Players.Tname=Matches.Tname;
select Players.Tno,Players.Captain,Matches.Matchid,Matches.Date,Matches.Venue from Players left outer join Matches 
on Players.Tname=Matches.Tname;
select Players.Tno,Players.Captain,Matches.Matchid,Matches.Date,Matches.Venue from Players right outer join Matches 
on Players.Tname=Matches.Tname;
select*from Players left join Matches on Players.Tname=Matches.Tname
union
select*from Players right join Matches on Players.Tname=Matches.Tname

select Matches.Awayteam,Matches.Venue,Scores.Win,Scores.1stInningsrun,Scores.2ndInningsrun from Matches inner join Scores 
on Matches.Matchid=Scores.Matchid;
select Matches.Awayteam,Matches.Venue,Scores.Win,Scores.1stInningsrun,Scores.2ndInningsrun from Matches left outer join Scores 
on Matches.Matchid=Scores.Matchid;
select Matches.Awayteam,Matches.Venue,Scores.Win,Scores.1stInningsrun,Scores.2ndInningsrun from Matches right outer join Scores 
on Matches.Matchid=Scores.Matchid;
select*from Matches left join Scores on Matches.Matchid=Scores.Matchid
union
select*from Matches right join Scores on Matches.Matchid=Scores.Matchid