package sql;

import java.sql.*;

public class supermarket {
    public static void main(String[] args) {
        Statement stmt = null;
        PreparedStatement prestmt=null;
        ResultSet rs = null;
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mysql://47.106.241.153:3306/studentdb","root","QiBin`smysqlcount..66");
            stmt=conn.createStatement();
            rs=stmt.executeQuery("select * from sc;");
            System.out.println("sno\t\t\t"+"cno\t"+"grage");
            while(rs.next()) {
                String sno=new String(rs.getString("sno"));
                int cno=rs.getInt("cno");
                float grage=rs.getFloat("grage");
                System.out.println(sno+"\t"+cno+"\t"+grage);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(rs!=null){
                try{
                    rs.close();
                }catch(SQLException e){
                    e.printStackTrace();
                }
            }
            if(prestmt!=null){
                try{
                    prestmt.close();
                }catch(SQLException e){
                        e.printStackTrace();
                }
            }

            if(stmt!=null){
                try{
                    stmt.close();
                }catch(SQLException e){
                    e.printStackTrace();
                }
            }

            if(conn!=null){
                try{
                   conn.close();
                }catch(SQLException e){
                    e.printStackTrace();
                }
            }
        }
    }
}
