package SQL;

import JDBC.connect;
import java.sql.*;

public class FinanceManage {
    Statement stmt=null;
    ResultSet rs=null;
    public void selesVolumeCollect(){
        try {
            stmt = connect.getConnection().createStatement();
            rs=stmt.executeQuery(  "select Product.proNum,proName,counts "+
		                            "from Product,"+
			                                "(select Shopping.proNum,sum(number) counts "+
				                            "from Shopping "+
                                            "group by proNum) AS PRO "+
		                            "where PRO.proNum=Product.proNum;");
            while(rs.next()){
                System.out.println("proNum "+rs.getString("proNum")+"proName "+rs.getString("proName")+"counts: "+rs.getString("counts"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            connect.release(stmt,rs);
        }
    }
}
