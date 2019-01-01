create database supmarket;
create table Department(
    depNum char(10),
    constraint DEPP primary key(depNum),
    depName char(20) not null,
    depLeader char(11) not null
);

alter table Department add constraint DEPF foreign key(depLeader) references Employee(emNum);

create table JobKind(
    jobNum char(10),
    constraint JOBP primary key(jobNum),
    jobName char(10) not null,
    salary float(10) not null,
    constraint JobC check(salary>=0)
);

create table Employee(
    emNum char(11),
    constraint ENP primary key(emNum),
    name char(8) not null,
    sex char(2) not null,
    location char(100),
    age int not null,
    constraint ENC check (age >= 18 and age <= 50),
    depNum char(10),
    jobNum char(10),
    constraint ENFJ foreign key(jobNum) references JobKind(jobNum)
);

alter table Employee add constraint ENF foreign key(depNum) references Department(depNum);

create table Product(
    proNum char(20),

    constraint ProP primary key(proNum),
    proName char(30) not null,
    value float(10) not null,
    constraint ProC0 check (value>=0),
    weight char(10) not null,
    constraint ProC1 check (weight >0),
    manuNum char(10) not null,
    prodate date not null,
    deadTime date not null, 
	proRemain int not null,
	constraint ProC2 check (proRemain>=0)
);

create table ProType(
    proNum char(20) not null,
    constraint PROTFkey foreign key(proNum) references Product(proNum),
	type char(10) not null,
    emNum char(11) not null,
    constraint PROTFkey1 foreign key(emNum) references Employee(emNum)
);

create table Manu(
	manuNum char(10) not null,
	constraint ManuPk primary key(manuNum),
	manuName char(30) not null,
	manuLoc char (100) not null,
	manuTel char(11) not null
);

create table VIP(
    Viplevel char(10) not null, constraint vippk primary key (Viplevel),
	transRate float not null,
	moneyRate float not null
);

create table Guest(
	guestNum char(10) not null,
	guestName char(10) not null,
	guestTel char(11) not null,
	guestSex char(2) not null,
	VipLevel char(10),
	constraint guestfk foreign key(Viplevel) references VIP(Viplevel),
	constraint guestCk check(VipLevel>=0),
	score int,
	constraint guestCk1 check(score>=0)
);

create table Purchase(
	cbillNum char(10) not null,
	constraint PUCPk primary key(cbillNum),
	proNum char(20),
	constraint PCFk foreign key(proNum) references Product(proNum),
	emNum char(11),
	constraint PCFk1 foreign key(emNum) references Employee(emNum),
	Cargoprice float(10) not null,
	constraint PurCk check(Cargoprice>0),
	number int not null,
	constraint PurCk1 check(number>0),
	manuNum char(10) not null,
	GargoDate date not null
);

create table Shopping(
	billNum char(10) not null,
	proNum char (20) not null,
	constraint ShopFk foreign key(proNum) references Product(proNum),
	constraint ShopPk primary key(billNum,proNum),
	number int not null,
	constraint ShopCk check(number>0),
	price float not null, 
	constraint ShopCk1 check (price >0),
	shopDate date not null
);

-- create view Earn(OpDate,CargoCost,OpEarn,DalyProfit)
-- as 
-- select shopDate,sum(Cargoprice),sum(price),sum(price)-sum(Cargoprice)
-- from Shopping,Purchase
-- where Shopping.proNum=Purchase.proNum
-- group by shopDate,Cargoprice,price;

-- create view storeInfo(proNum,manuNum,proName,proRemain)
-- as
-- select proNum,manuNum,proName,proRemain
-- from Product;