package JDBC;
import java.sql.*;

public class example01 {
    public static void main(String[] args){
        ResultSet rs=null;
        Connection coon=null;
        Statement stmt=null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            coon = DriverManager.getConnection("jdbc:mysql://47.106.241.153:3306/test", "root", "QiBin`smysqlcount..66");
            stmt = coon.createStatement();
            rs = stmt.executeQuery("select * from test.Course");
            System.out.println("Cno\t|Cname\t\t|Cpno\t|Ccredit");
            while(rs.next()){
                int Cno=rs.getInt("Cno");
                String Cname=rs.getString("Cname");
                int Cpno=rs.getInt("Cpno");
                int Ccredit=rs.getInt("Ccredit");
                System.out.println(Cno+"\t|"+Cname+"\t\t|"+Cpno+"\t\t|"+Ccredit);
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(rs!=null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                rs = null;


                }
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }

                stmt=null;
            }

            if(coon!=null){
                try{
                    coon.close();
                }catch(SQLException e){
                    e.printStackTrace();
                }

                coon=null;
            }
        }
    }
}
