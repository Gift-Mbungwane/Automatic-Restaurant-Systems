package Management;
import java.sql.*;

public class App {


    public static void main(String[] args)
    {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        int orderID, productID=0, quantity=0;
        int table=7;

        try {
            conn = ConnectionConfiguration.getConnection();
            stmt = conn.createStatement();
            String sql = "SELECT * FROM orders WHERE IDTable="+table;
            rs = stmt.executeQuery(sql);

            rs.next();
            orderID  = rs.getInt("IDorder");

            sql = "SELECT productsID, quantity FROM order_product WHERE OrderID="+orderID;
            rs = stmt.executeQuery(sql);

            while(rs.next())
            {
                productID = rs.getInt("productsID");
                quantity = rs.getInt("quantity");

                //System.out.println("IDprod: " + productID + "    quant: "+quantity);


                Statement stmt2 = null;
                ResultSet rs2 = null;
                String name;
                float price;
                try
                {
                    //  if(productID!=0 && quantity!=0)
                    {
                        conn = ConnectionConfiguration.getConnection();
                        stmt2 = conn.createStatement();
                        String sql2 = "SELECT Name, Price FROM products WHERE IDproduct=" + productID;
                        rs2 = stmt2.executeQuery(sql2);

                        rs2.next();
                        name = rs2.getString("Name");
                        price = rs2.getFloat("Price");


                        System.out.println("IDproduct= " + productID + " quantity= " + quantity + " name= " + name + " price= " + price);

                        rs2.close();
                    }
                }
                catch(SQLException se)  { se.printStackTrace();}
                catch (Exception e) { e.printStackTrace(); }
                finally {
                    try{ if(stmt2!=null) conn.close(); }
                    catch(SQLException se){ }
                    try{ if(conn!=null) conn.close(); }
                    catch(SQLException se){ se.printStackTrace(); }
                }

            }
            rs.close();
        }
        catch(SQLException se)  { se.printStackTrace();}
        catch (Exception e) { e.printStackTrace(); }
        finally {
            try{ if(stmt!=null) conn.close(); }
            catch(SQLException se){ }
            try{ if(conn!=null) conn.close(); }
            catch(SQLException se){ se.printStackTrace(); }
        }




    }

    /*public static void main(String[] args)
    {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            conn = ConnectionConfiguration.getConnection();
            stmt = conn.createStatement();
            String sql = "SELECT * FROM employees";
            rs = stmt.executeQuery(sql);

            System.out.println("ID    POSITION    FIRSTNAME   LASTNAME    PASSWORD");
            while(rs.next()){
                int id  = rs.getInt("EmployeeLogin");
                String position = rs.getString("Position");
                String first = rs.getString("FirstName");
                String last = rs.getString("LastName");
                int pass  = rs.getInt("Password");
                System.out.println(id + "     " + position + "     " + first + "     " + last + "        " + pass);
            }
            rs.close();
        }
        catch(SQLException se)  { se.printStackTrace();}
        catch (Exception e) { e.printStackTrace(); }
        finally {
            try{ if(stmt!=null) conn.close(); }
            catch(SQLException se){ }
            try{ if(conn!=null) conn.close(); }
            catch(SQLException se){ se.printStackTrace(); }
        }
    }*/
}
