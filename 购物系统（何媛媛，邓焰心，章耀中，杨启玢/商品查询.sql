--查询饮品类商品的所有信息
select * from Product,ProType
where Product.proNum=ProType.proNum
and type='饮品';

--查询库存量大于100的商品的种类
select TYPE from Product,ProType
where Product.proNum=ProType.proNum and proRemain>=100;

--查询单价在4元以上的商品的商品号，商品名，库存量
select proNum,proName,proRemain from Product
where value>=4

--查询厂家地址为北京路15号的厂家生产的所有产品
select * from Product,Manu
where Product.manuNum=Manu.manuNum
and manuLoc='北京路15号';

--查询所有商品的商品名，单价，生产日期、保质期
select proName,value,prodate,deadTime from Product


--将商品名为‘恰宝矿泉水’的商品库存量改为0
update Product
set proRemain=0
where proName='恰宝矿泉水';

--查询下架的商品所有信息（库存量为0的商品即为下架商品）
select * from Product where proRemain=0;

--查询2018-11-11之后生产的商品的所有信息
select * from Product where prodate>'2018-11-11';

--向商品表中添加一组数据
insert into Product(proNum,proName,value,weight,manuNum,prodate,deadTime,proRemain) values
('P6','心异抽纸','2.5','3g','M04','2018-11-25','2024-1-5',50);

--更改商品号为P6的商品名为：“心怡抽纸”
update Product set proName='心怡抽纸' where proNum='P6';

--删除心怡抽纸记录
delete from Product where proName='心怡抽纸';