use supmarket;
insert into JobKind(jobNum,jobName,salary)
values('E01','�ɹ�Ա','4000'),
('E02','����Ա','4000'),
('E03','����Ա','4000'),
('E04','���Ա','5000'),
('E05','����','3000');

insert into JobKind(jobNum,jobName,salary)
values('L01','�г�������','8000'),
('L02','���񲿲���','8000'),
('L03','Ӫ��������','8000'),
('L04','���ڲ�����','8000');


-- alter table Guest change guestTel guestTel char(12);

insert into VIP(Viplevel,transRate,moneyRate)
values('��ʯ��Ա','1','0.1'),
('�׽��Ա','1','0.2'),
('�ڽ��Ա','1','0.3');

insert into Manu(manuNum,manuName,manuLoc,manuTel)
values('M01','��˧��','����·15��','788415558'),
('M02','ũ����ȭ','�Ͼ�·30��','023-8845652'),
('M03','�۹���','����·45��','8008208820'),
('M04','С��','��ɽ·33��','17788789454'),
('M05','ǡ��','��ɽ��152��','4008884933');

insert into Guest(guestNum,guestName,guestTel,guestSex,VipLevel,score)
values('G01','Ԫ��','13786544578','��','��ʯ��Ա','115'),
('G02','����','17758645854','Ů','�ڽ��Ա','999'),
('G03','����','15868412565','��','�׽��Ա','221'),
('G04','����','18545472423','��','�ڽ��Ա','10'),
('G05','���','18888888888','��','��ʯ��Ա','99999');

alter table Product change weight weight char(10);

insert Product(proNum,proName,value,weight,manuNum,prodate,deadTime,proRemain)
values('P1','��˧������','5','200g','M01','2018-11-11','2019-11-11','50'),
('P2','ũ����ȭ�̲�','4','500ml','M02','2018-10-10','2019-10-10','60'),
('P3','�۹���AD����','3','200ml','M03','2018-10-11','2019-10-11','100'),
('P4','С������Ʒ','20','150ml','M04','2018-11-18','2020-11-18','30'),
('P5','ǡ����Ȫˮ','2','500ml','M05','2018-12-13','2020-12-13','100');

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
values('P1','��ʳ','A02'),
('p2','��Ʒ','A03'),
('p3','��Ʒ','A03'),
('p4','����Ʒ','A02'),
('p5','��Ʒ','A02');

insert Department(depNum,depName,depLeader)
values('K01','�г���','L1'),
('K02','����','L2'),
('K03','Ӫ����','L3'),
('K04','���ڲ�','L4');

insert Employee(emNum,name,sex,location,age,jobNum)
values('A01','��һ','Ů','����·1��','25','E01'),
('A02','�˶�','Ů','����·2��','23','E02'),
('A03','����','��','����·','28','E02'),
('A04','����','��','����·','30','E05'),
('A05','����','Ů','����·','35','E03'),
('A06','����','��','����·','50','E04');

update Employee
set depNum='K01'
where emNum='A01' or emNum='A02' or emNum='A03';

update Employee
set depNum='K02'
where emNum='A04' or emNum='A05' or emNum='A06';


insert Employee(emNum,name,sex,location,age,jobNum)
values('L1','Ǯ��','��','��ɽ·1��','30','L01'),
('L2','��ΰ','��','��ɽ·','20','L02'),
('L3','���','��','��ɽ·','20','L03'),
('L4','����','��','��ɽ·','20','L04');

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
