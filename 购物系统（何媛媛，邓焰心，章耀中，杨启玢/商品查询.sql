--��ѯ��Ʒ����Ʒ��������Ϣ
select * from Product,ProType
where Product.proNum=ProType.proNum
and type='��Ʒ';

--��ѯ���������100����Ʒ������
select TYPE from Product,ProType
where Product.proNum=ProType.proNum and proRemain>=100;

--��ѯ������4Ԫ���ϵ���Ʒ����Ʒ�ţ���Ʒ���������
select proNum,proName,proRemain from Product
where value>=4

--��ѯ���ҵ�ַΪ����·15�ŵĳ������������в�Ʒ
select * from Product,Manu
where Product.manuNum=Manu.manuNum
and manuLoc='����·15��';

--��ѯ������Ʒ����Ʒ�������ۣ��������ڡ�������
select proName,value,prodate,deadTime from Product


--����Ʒ��Ϊ��ǡ����Ȫˮ������Ʒ�������Ϊ0
update Product
set proRemain=0
where proName='ǡ����Ȫˮ';

--��ѯ�¼ܵ���Ʒ������Ϣ�������Ϊ0����Ʒ��Ϊ�¼���Ʒ��
select * from Product where proRemain=0;

--��ѯ2018-11-11֮����������Ʒ��������Ϣ
select * from Product where prodate>'2018-11-11';

--����Ʒ�������һ������
insert into Product(proNum,proName,value,weight,manuNum,prodate,deadTime,proRemain) values
('P6','�����ֽ','2.5','3g','M04','2018-11-25','2024-1-5',50);

--������Ʒ��ΪP6����Ʒ��Ϊ����������ֽ��
update Product set proName='������ֽ' where proNum='P6';

--ɾ��������ֽ��¼
delete from Product where proName='������ֽ';