-- 客户管理
	-- 客户信息录入：
		insert into Guest(guestNum,guestName,guestTel,guestSex,VipLevel,score)
		values('G01','元宝','13786544578','男','钻石会员','115'),
		('G02','红艳','17758645854','女','黑金会员','999'),
		('G03','安达','15868412565','男','白金会员','221'),
		('G04','阿炳','18545472423','男','黑金会员','10'),
		('G05','大哥','18888888888','男','钻石会员','99999');
		
		
	-- 客户信息修改:
		-- 设置VIP等级
			update guest
			set VipLevel='黑金会员'
			where guestNum='Go1';
			
			
		-- 设置电话号码
			update guest
			set guestTel='17774809112'
			where guestNum='Go1';
			
			
	-- vip 兑换比例调整
			update VIP
			set moneyRate=0.2;
			where Viplevel='黑金会员'
			
			
	-- 客户信息查询：
		select * 
		from guest;
		
		select *
		from Guest
		where VipLevel='钻石会员';
		
		-- 积分查询:
				-- 指定查询
					-- 通过客户码
						select guestNum,guestName,score
						from Guest
						where guestNum='G01';
				  
					-- 通过客户姓名
				  
						select guestNum,guestName,score
						from Guest
						where guestName='大哥'	
				  			  
				-- 全局查询
					-- 查询全表
					
						select guestNum,guestName,score
						from guest;
						
					-- 查询积分大于100的
						select guestNum,guestName,score
						from guest
						where score>100;
				  
		-- 电话查询
					-- 指定查询
						-- guestNum 通过客户码: 
							select guestNum,guestName,guestTel
							from Guest
							where guestNum='G01'
				  
						-- name 通过客户姓名:
				   
							select guestNum,guestName,guestTel
							from guest
							where guestName='大哥';
					
					-- 全局查询
					
							select guestNum,guestName,guestTel
							from Guest;
				   
		-- vip等级查询
					-- 全局查询
					
						select guestNum,guestName,VipLevel
						from Guest;
						
					-- 指定查询
						-- 客户码	
							select guestNum,guestName,VipLevel
							from Guest
							where guestNum='G01';
							
						-- 客户姓名
							select guestNum,guestName,VipLevel
							from guest
							where guestName='大哥';
							
						-- 指定等级查询
							select guestNum,guestName,VipLevel
							from guest
							where VipLevel='黑金会员';
							
							
-- 销量管理
	-- 销量统计
		select Product.proNum,proName,counts
		from Product,
			(select Shopping.proNum,sum(number) counts
				from Shopping
				group by proNum) 
				as PRO(proNum,counts) 
		where PRO.proNum=Product.proNum;
		
	-- 销量统计排行
		-- 全局
			-- 降序
				select Product.proNum,proName,counts
				from Product,
					(select Shopping.proNum,sum(number) counts
						from Shopping
						group by proNum) 
						as PRO(proNum,counts) 
				where PRO.proNum=Product.proNum
				order by counts;
			-- 升序
				select Product.proNum,proName,counts
				from Product,
					(select Shopping.proNum,sum(number) counts
						from Shopping
						group by proNum) 
						as PRO(proNum,counts) 
				where PRO.proNum=Product.proNum
	-- select 
		
		
		
								
							
							
						
							
							
						
				  
				
		
					
		
					
				  
				  