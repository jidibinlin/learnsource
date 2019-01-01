
insert into Purchase (cbillNum,proNum,emNum,Cargoprice,number,manuNum,GargoDate)
values 
('7','P1','A01',3.5,50,'M01','2018-12-20');

update Purchase set GargoDate='2018-11-20'
where cbillNum=1 or cbillNum=2 or cbillNum=3;
