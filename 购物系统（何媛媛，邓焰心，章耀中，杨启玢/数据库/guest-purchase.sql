-- �ͻ�����
	-- �ͻ���Ϣ¼�룺
		insert into Guest(guestNum,guestName,guestTel,guestSex,VipLevel,score)
		values('G01','Ԫ��','13786544578','��','��ʯ��Ա','115'),
		('G02','����','17758645854','Ů','�ڽ��Ա','999'),
		('G03','����','15868412565','��','�׽��Ա','221'),
		('G04','����','18545472423','��','�ڽ��Ա','10'),
		('G05','���','18888888888','��','��ʯ��Ա','99999');
		
		
	-- �ͻ���Ϣ�޸�:
		-- ����VIP�ȼ�
			update guest
			set VipLevel='�ڽ��Ա'
			where guestNum='Go1';
			
			
		-- ���õ绰����
			update guest
			set guestTel='17774809112'
			where guestNum='Go1';
			
			
	-- vip �һ���������
			update VIP
			set moneyRate=0.2;
			where Viplevel='�ڽ��Ա'
			
			
	-- �ͻ���Ϣ��ѯ��
		select * 
		from guest;
		
		select *
		from Guest
		where VipLevel='��ʯ��Ա';
		
		-- ���ֲ�ѯ:
				-- ָ����ѯ
					-- ͨ���ͻ���
						select guestNum,guestName,score
						from Guest
						where guestNum='G01';
				  
					-- ͨ���ͻ�����
				  
						select guestNum,guestName,score
						from Guest
						where guestName='���'	
				  			  
				-- ȫ�ֲ�ѯ
					-- ��ѯȫ��
					
						select guestNum,guestName,score
						from guest;
						
					-- ��ѯ���ִ���100��
						select guestNum,guestName,score
						from guest
						where score>100;
				  
		-- �绰��ѯ
					-- ָ����ѯ
						-- guestNum ͨ���ͻ���: 
							select guestNum,guestName,guestTel
							from Guest
							where guestNum='G01'
				  
						-- name ͨ���ͻ�����:
				   
							select guestNum,guestName,guestTel
							from guest
							where guestName='���';
					
					-- ȫ�ֲ�ѯ
					
							select guestNum,guestName,guestTel
							from Guest;
				   
		-- vip�ȼ���ѯ
					-- ȫ�ֲ�ѯ
					
						select guestNum,guestName,VipLevel
						from Guest;
						
					-- ָ����ѯ
						-- �ͻ���	
							select guestNum,guestName,VipLevel
							from Guest
							where guestNum='G01';
							
						-- �ͻ�����
							select guestNum,guestName,VipLevel
							from guest
							where guestName='���';
							
						-- ָ���ȼ���ѯ
							select guestNum,guestName,VipLevel
							from guest
							where VipLevel='�ڽ��Ա';
							
							
-- ��������
	-- ����ͳ��
		select Product.proNum,proName,counts
		from Product,
			(select Shopping.proNum,sum(number) counts
				from Shopping
				group by proNum) 
				as PRO(proNum,counts) 
		where PRO.proNum=Product.proNum;
		
	-- ����ͳ������
		-- ȫ��
			-- ����
				select Product.proNum,proName,counts
				from Product,
					(select Shopping.proNum,sum(number) counts
						from Shopping
						group by proNum) 
						as PRO(proNum,counts) 
				where PRO.proNum=Product.proNum
				order by counts;
			-- ����
				select Product.proNum,proName,counts
				from Product,
					(select Shopping.proNum,sum(number) counts
						from Shopping
						group by proNum) 
						as PRO(proNum,counts) 
				where PRO.proNum=Product.proNum
	-- select 
		
		
		
								
							
							
						
							
							
						
				  
				
		
					
		
					
				  
				  