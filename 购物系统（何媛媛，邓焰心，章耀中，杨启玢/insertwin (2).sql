use supmarket;
insert into JobKind(jobNum,jobName,salary)
values('E01','采购员','4000'),
('E02','销售员','4000'),
('E03','收银员','4000'),
('E04','会计员','5000'),
('E05','保安','3000');

insert into JobKind(jobNum,jobName,salary)
values('L01','市场部部长','8000'),
('L02','财务部部长','8000'),
('L03','营销部部长','8000'),
('L04','后勤部部长','8000');


-- alter table Guest change guestTel guestTel char(12);

insert into VIP(Viplevel,transRate,moneyRate)
values('钻石会员','1','0.1'),
('白金会员','1','0.2'),
('黑金会员','1','0.3');

insert into Manu(manuNum,manuName,manuLoc,manuTel)
values('M01','康帅傅','北京路15号','788415558'),
('M02','农夫三拳','南京路30号','023-8845652'),
('M03','哇哈哈','东京路45号','8008208820'),
('M04','小宝','中山路33号','17788789454'),
('M05','恰宝','南山区152号','4008884933');

insert into Guest(guestNum,guestName,guestTel,guestSex,VipLevel,score)
values('G01','元宝','13786544578','男','钻石会员','115'),
('G02','红艳','17758645854','女','黑金会员','999'),
('G03','安达','15868412565','男','白金会员','221'),
('G04','阿炳','18545472423','男','黑金会员','10'),
('G05','大哥','18888888888','男','钻石会员','99999');

alter table Product change weight weight char(10);

insert Product(proNum,proName,value,weight,manuNum,prodate,deadTime,proRemain)
values('P1','康帅傅泡面','5','200g','M01','2018-11-11','2019-11-11','50'),
('P2','农夫三拳绿茶','4','500ml','M02','2018-10-10','2019-10-10','60'),
('P3','哇哈哈AD钙奶','3','200ml','M03','2018-10-11','2019-10-11','100'),
('P4','小宝护肤品','20','150ml','M04','2018-11-18','2020-11-18','30'),
('P5','恰宝矿泉水','2','500ml','M05','2018-12-13','2020-12-13','100');

-- faild
insert Purchase(cbillNum,proNum,emNum,Cargoprice,number,manuNum,GargoDate)
values('1','P1','A01','3.5','50','M01','2018-12-15'),
('2','P2','A01','2.5','60','M02','2018-12-15'),
('3','P3','A01','2','100','M03','2018-12-15'),
('4','P4','A01','15','30','M04','2018-12-15'),
('5','P5','A01','1.1','100','M05','2018-12-15');

-- faild
insert Shopping(billNum,proNum,number,price,shopDate)
values('S01','p1','2','10','2018-12-15'),
('S02','p3','1','3','2018-12-15'),
('S03','p5','3','6','2018-12-15'),
('S04','p2','5','20','2018-12-15');

insert ProType(proNum,type,emNum)
values('P1','副食','A02'),
('p2','饮品','A03'),
('p3','饮品','A03'),
('p4','日用品','A02'),
('p5','饮品','A02');

insert Department(depNum,depName,depLeader)
values('K01','市场部','L1'),
('K02','财务部','L2'),
('K03','营销部','L3'),
('K04','后勤部','L4');

insert Employee(emNum,name,sex,location,age,jobNum)
values('A01','何一','女','东明路1号','25','E01'),
('A02','邓二','女','西明路2号','23','E02'),
('A03','杨三','男','北明路','28','E02'),
('A04','章四','男','南明路','30','E05'),
('A05','方五','女','中明路','35','E03'),
('A06','赵六','男','上明路','50','E04');

update Employee
set depNum='K01'
where emNum='A01' or emNum='A02' or emNum='A03';

update Employee
set depNum='K02'
where emNum='A04' or emNum='A05' or emNum='A06';


insert Employee(emNum,name,sex,location,age,jobNum)
values('L1','钱七','男','中山路1号','30','L01'),
('L2','曹伟','男','西山路','20','L02'),
('L3','燕城','男','北山路','20','L03'),
('L4','煜霖','男','西山路','20','L04');

update Employee
set depNum='K01'
where emNum='L1';

update Employee
set depNum='K02'
where emNum='L2';

update Employee
set depNum='K03'
where emNum='L3';

update Employee
set depNum='K04'
where emNum='L4';
