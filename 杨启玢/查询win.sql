-- ��������

	-- ����¼��
		insert Shopping(billNum,proNum,number,price,shopDate)
		values('S01','p1','2','10','2018-12-15'),
		('S02','p3','1','3','2018-12-15'),
		('S03','p5','3','6','2018-12-15'),
		('S04','p2','5','20','2018-12-15');

	-- ����ͳ��
		select Product.proNum,proName,counts
		from Product,
			(select Shopping.proNum,sum(number) counts
				from Shopping
				group by proNum) AS PRO
		where PRO.proNum=Product.proNum;
		
	-- ����ͳ������
		-- ȫ��
			-- ����
				select Product.proNum,proName,counts
				from Product,
					(select Shopping.proNum,sum(number) counts
						from Shopping
						group by proNum) AS PRO 
				where PRO.proNum=Product.proNum
				order by counts Desc;
			-- ����
				select Product.proNum,proName,counts
				from Product,
					(select Shopping.proNum,sum(number) counts
						from Shopping
						group by proNum) AS PRO
				where PRO.proNum=Product.proNum
                order by counts ASC;
			-- ����/ָ����������ͳ��
				-- ����
					select Product.proNum,proName,counts
					from Product,
						(select Shopping.proNum,sum(number) counts
							from Shopping
							where shopDate='2018-12-15'
							group by proNum) AS PRO 
					where PRO.proNum=Product.proNum 
					order by counts Desc;
		
				-- ����
					select Product.proNum,proName,counts
					from Product,
						(select Shopping.proNum,sum(number) counts
							from Shopping
							where shopDate='2018-12-15'
							group by proNum) AS PRO
					where PRO.proNum=Product.proNum
					order by counts ASC;
			-- ָ�����ڶ�
					select Product.proNum,proName,counts
					from Product,
						(select Shopping.proNum,sum(number) counts
							from Shopping
							where shopDate<='2018-12-15' and shopDate>='2018-12-13'
							group by proNum) AS PRO 
					where PRO.proNum=Product.proNum 
					order by counts Desc;
		-- ָ����Ʒͳ������
			-- ����
				select Product.proNum,proName,counts
					from Product,
						(select Shopping.proNum,sum(number) counts
							from Shopping
							group by proNum) AS PRO
				where PRO.proNum=Product.proNum and PRO.proNum='P2'
				order by counts ASC;

		-- ָ����Ʒͳ������(�Ƚ�)
			-- ����
				select Product.proNum,proName,counts
				from Product,
					(select Shopping.proNum,sum(number) counts
						from Shopping
						group by proNum) AS PRO
				where PRO.proNum=Product.proNum and Product.proNum in ('P1','P2')
				order by counts DESC;	
                
			-- ��ͬƷ��������ͬ���Ʒ������ƴ
				select Product.proNum,proName,counts,Manu.manuName,Manu.manuLoc,Manu.manuTel
				from Product,Manu,
					(select Shopping.proNum,sum(number) counts
						from Shopping
						group by proNum) AS PRO
				where PRO.proNum=Product.proNum and Product.manuNum=Manu.manuNum and Product.proName like '%��Ȫˮ'
				order by counts DESC;
                
	-- ӯ������
		-- ȫ��
			select Product.proNum,proName,profitSum
				from Product,
					(select Shopping.proNum,sum(Shopping.number*price-Purchase.Cargoprice*Shopping.number) profitSum
						from Shopping,Purchase
						where Shopping.proNum=Purchase.proNum
						group by proNum) AS PRO
				where PRO.proNum=Product.proNum
				order by profitSum;
		-- ָ������/��(����Ҳ����)					
			select Product.proNum,proName,profitSum
				from Product,
					(select Shopping.proNum,sum(Shopping.number*price-Purchase.Cargoprice*Shopping.number) profitSum
						from Shopping,Purchase
						where Shopping.proNum=Purchase.proNum and shopDate<='2018-12-15' and shopDate>'2018-12-13'
						group by proNum) AS PRO
				where PRO.proNum=Product.proNum
			order by profitSum;	
            
		-- ָ����Ʒӯ��
			select Product.proNum,proName,profitSum
				from Product,
					(select Shopping.proNum,sum(Shopping.number*price-Purchase.Cargoprice*Shopping.number) profitSum
						from Shopping,Purchase
						where Shopping.proNum=Purchase.proNum
						group by proNum) AS PRO
				where PRO.proNum=Product.proNum and Product.proNum='P6'
			order by profitSum;	
		-- �Ƚ���Ʒ����
			select Product.proNum,proName,profitSum
				from Product,
					(select Shopping.proNum,sum(Shopping.number*price-Purchase.Cargoprice*Shopping.number) profitSum
						from Shopping,Purchase
						where Shopping.proNum=Purchase.proNum
						group by proNum) AS PRO
				where PRO.proNum=Product.proNum and Product.proName like '%��Ȫˮ'
			order by profitSum;	
            
-- �����̹���
	-- ��������Ϣ����
		-- ��Ϣ�޸�
			update Manu
            set ManuTel='17774809112'
            where manuNum='M05'
        
        -- ��Ϣ¼��
        ;
			insert into Manu(manuNum,manuName,manuLoc,manuTel)
			values('M01','��˧��','����·15��','788415558'),
			('M02','ũ����ȭ','�Ͼ�·30��','023-8845652'),
			('M03','�۹���','����·45��','8008208820'),
			('M04','С��','��ɽ·33��','17788789454'),
			('M05','ǡ��','��ɽ��152��','4008884933');
            
        -- ��Ϣɾ��
			delete 
            from Manu
            where manuNum='Mo1';
	
    -- ��������Ϣ��ѯ
		-- �������ڲ�ѯ
			select *
			from Manu;
            -- ��ѯָ���̼ҵ���Ϣ
				select *
                from Manu
                where manuName='��˧��';
                
		-- �����ѯ
			-- ��ѯ��Ʒ�Ĺ�Ӧ��
				select Product.proNum,Product.proName,Manu.manuName,Manu.manuLoc,Manu.manuTel
                from Manu,Product
                where Manu.manuNum=Product.manuNum;
                
                
			-- ��ѯָ����Ʒ�Ĺ�Ӧ��
				select Product.proNum,Product.proName,Manu.manuName,Manu.manuLoc,Manu.manuTel
                from Manu,Product
                where Manu.manuNum=Product.manuNum and Product.proName='ǡ����Ȫˮ';
                
                
            -- ��ѯָ������������Ӧ��������Ʒ
				select Product.proNum,Product.proName,manuName
                from Product,Manu
                where Product.manuNum=Manu.manuNum and Product.manuNum='M03';
			
            -- ��ѯ��ǰӯ��
				select Manu.manuNum,Manu.manuName,profitSUM
                from Manu,
					(select Purchase.manuNum,sum(Shopping.price*Shopping.number-Purchase.Cargoprice * Purchase.number) profitSUM
						from Purchase,Shopping
                        where Purchase.proNum=Shopping.proNum
						group by manuNum) AS PRO
				where Manu.manuNum=PRO.manuNum;
                
			-- ��ѯ�����й�Ӧ�̵Ľ����ܶ�
				select Manu.manuNum,Manu.manuName,purSUM
                from Manu,
					(select manuNum,sum(Cargoprice * number) purSUM
						from Purchase
						group by manuNum) AS PRO
				where Manu.manuNum=PRO.manuNum;
			
            -- ��ѯָ����Ʒ�Ĳ���
				select Product.proName,Product.proNum,Manu.manuName,Manu.manuLoc
                from Product,Manu
                where Product.manuNum=Manu.manuNum;
			
            -- ��ѯ�й�Ӧͬ����Ʒ�Ĳ�ͬ����
				select Product.proNum,Product.proName,Manu.manuName,Manu.manuLoc,Manu.manuTel
                from Manu,Product
                where Manu.manuNum=Product.manuNum and Product.proName like '%��Ȫˮ';
                
				
					
				  
				  