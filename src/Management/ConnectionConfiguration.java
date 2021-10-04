package Management;
import java.sql.*;

public class ConnectionConfiguration {

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url, user, password);
        }catch(Exception e){
            //Handle errors for Class.forName
            e.printStackTrace();
        }
        return conn;
    }
    private final static String url = "jdbc:mysql://localhost:3306/arms?useSSL=false";
    private final static String user = "root";
    private final static String password = "Mbungwa1ne@";
    private final static String driver = "com.mysql.cj.jdbc.Driver";

}