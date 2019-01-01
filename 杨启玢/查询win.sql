-- 销量管理

	-- 订单录入
		insert Shopping(billNum,proNum,number,price,shopDate)
		values('S01','p1','2','10','2018-12-15'),
		('S02','p3','1','3','2018-12-15'),
		('S03','p5','3','6','2018-12-15'),
		('S04','p2','5','20','2018-12-15');

	-- 销量统计
		select Product.proNum,proName,counts
		from Product,
			(select Shopping.proNum,sum(number) counts
				from Shopping
				group by proNum) AS PRO
		where PRO.proNum=Product.proNum;
		
	-- 销量统计排行
		-- 全局
			-- 降序
				select Product.proNum,proName,counts
				from Product,
					(select Shopping.proNum,sum(number) counts
						from Shopping
						group by proNum) AS PRO 
				where PRO.proNum=Product.proNum
				order by counts Desc;
			-- 升序
				select Product.proNum,proName,counts
				from Product,
					(select Shopping.proNum,sum(number) counts
						from Shopping
						group by proNum) AS PRO
				where PRO.proNum=Product.proNum
                order by counts ASC;
			-- 当日/指定日期销量统计
				-- 降序
					select Product.proNum,proName,counts
					from Product,
						(select Shopping.proNum,sum(number) counts
							from Shopping
							where shopDate='2018-12-15'
							group by proNum) AS PRO 
					where PRO.proNum=Product.proNum 
					order by counts Desc;
		
				-- 升序
					select Product.proNum,proName,counts
					from Product,
						(select Shopping.proNum,sum(number) counts
							from Shopping
							where shopDate='2018-12-15'
							group by proNum) AS PRO
					where PRO.proNum=Product.proNum
					order by counts ASC;
			-- 指定日期段
					select Product.proNum,proName,counts
					from Product,
						(select Shopping.proNum,sum(number) counts
							from Shopping
							where shopDate<='2018-12-15' and shopDate>='2018-12-13'
							group by proNum) AS PRO 
					where PRO.proNum=Product.proNum 
					order by counts Desc;
		-- 指定商品统计销量
			-- 升序
				select Product.proNum,proName,counts
					from Product,
						(select Shopping.proNum,sum(number) counts
							from Shopping
							group by proNum) AS PRO
				where PRO.proNum=Product.proNum and PRO.proNum='P2'
				order by counts ASC;

		-- 指定商品统计销量(比较)
			-- 升序
				select Product.proNum,proName,counts
				from Product,
					(select Shopping.proNum,sum(number) counts
						from Shopping
						group by proNum) AS PRO
				where PRO.proNum=Product.proNum and Product.proNum in ('P1','P2')
				order by counts DESC;	
                
			-- 不同品牌生产的同类产品销量比拼
				select Product.proNum,proName,counts,Manu.manuName,Manu.manuLoc,Manu.manuTel
				from Product,Manu,
					(select Shopping.proNum,sum(number) counts
						from Shopping
						group by proNum) AS PRO
				where PRO.proNum=Product.proNum and Product.manuNum=Manu.manuNum and Product.proName like '%矿泉水'
				order by counts DESC;
                
	-- 盈利管理
		-- 全局
			select Product.proNum,proName,profitSum
				from Product,
					(select Shopping.proNum,sum(Shopping.number*price-Purchase.Cargoprice*Shopping.number) profitSum
						from Shopping,Purchase
						where Shopping.proNum=Purchase.proNum
						group by proNum) AS PRO
				where PRO.proNum=Product.proNum
				order by profitSum;
		-- 指定日期/段(当日也适用)					
			select Product.proNum,proName,profitSum
				from Product,
					(select Shopping.proNum,sum(Shopping.number*price-Purchase.Cargoprice*Shopping.number) profitSum
						from Shopping,Purchase
						where Shopping.proNum=Purchase.proNum and shopDate<='2018-12-15' and shopDate>'2018-12-13'
						group by proNum) AS PRO
				where PRO.proNum=Product.proNum
			order by profitSum;	
            
		-- 指定商品盈利
			select Product.proNum,proName,profitSum
				from Product,
					(select Shopping.proNum,sum(Shopping.number*price-Purchase.Cargoprice*Shopping.number) profitSum
						from Shopping,Purchase
						where Shopping.proNum=Purchase.proNum
						group by proNum) AS PRO
				where PRO.proNum=Product.proNum and Product.proNum='P6'
			order by profitSum;	
		-- 比较商品利润
			select Product.proNum,proName,profitSum
				from Product,
					(select Shopping.proNum,sum(Shopping.number*price-Purchase.Cargoprice*Shopping.number) profitSum
						from Shopping,Purchase
						where Shopping.proNum=Purchase.proNum
						group by proNum) AS PRO
				where PRO.proNum=Product.proNum and Product.proName like '%矿泉水'
			order by profitSum;	
            
-- 供货商管理
	-- 供货商信息管理
		-- 信息修改
			update Manu
            set ManuTel='17774809112'
            where manuNum='M05'
        
        -- 信息录入
        ;
			insert into Manu(manuNum,manuName,manuLoc,manuTel)
			values('M01','康帅傅','北京路15号','788415558'),
			('M02','农夫三拳','南京路30号','023-8845652'),
			('M03','哇哈哈','东京路45号','8008208820'),
			('M04','小宝','中山路33号','17788789454'),
			('M05','恰宝','南山区152号','4008884933');
            
        -- 信息删除
			delete 
            from Manu
            where manuNum='Mo1';
	
    -- 供货商信息查询
		-- 仅本表内查询
			select *
			from Manu;
            -- 查询指定商家的信息
				select *
                from Manu
                where manuName='康帅傅';
                
		-- 链表查询
			-- 查询商品的供应商
				select Product.proNum,Product.proName,Manu.manuName,Manu.manuLoc,Manu.manuTel
                from Manu,Product
                where Manu.manuNum=Product.manuNum;
                
                
			-- 查询指定商品的供应商
				select Product.proNum,Product.proName,Manu.manuName,Manu.manuLoc,Manu.manuTel
                from Manu,Product
                where Manu.manuNum=Product.manuNum and Product.proName='恰宝矿泉水';
                
                
            -- 查询指定供货商所供应的所有商品
				select Product.proNum,Product.proName,manuName
                from Product,Manu
                where Product.manuNum=Manu.manuNum and Product.manuNum='M03';
			
            -- 查询当前盈亏
				select Manu.manuNum,Manu.manuName,profitSUM
                from Manu,
					(select Purchase.manuNum,sum(Shopping.price*Shopping.number-Purchase.Cargoprice * Purchase.number) profitSUM
						from Purchase,Shopping
                        where Purchase.proNum=Shopping.proNum
						group by manuNum) AS PRO
				where Manu.manuNum=PRO.manuNum;
                
			-- 查询与所有供应商的交易总额
				select Manu.manuNum,Manu.manuName,purSUM
                from Manu,
					(select manuNum,sum(Cargoprice * number) purSUM
						from Purchase
						group by manuNum) AS PRO
				where Manu.manuNum=PRO.manuNum;
			
            -- 查询指定商品的产地
				select Product.proName,Product.proNum,Manu.manuName,Manu.manuLoc
                from Product,Manu
                where Product.manuNum=Manu.manuNum;
			
            -- 查询有供应同类商品的不同厂家
				select Product.proNum,Product.proName,Manu.manuName,Manu.manuLoc,Manu.manuTel
                from Manu,Product
                where Manu.manuNum=Product.manuNum and Product.proName like '%矿泉水';
                
				
					
				  
				  