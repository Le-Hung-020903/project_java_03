package conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionUtils {
	  public static Connection getMSSQLConnections() throws SQLException, ClassNotFoundException {
	        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	        String url = "jdbc:sqlserver://LAPTOP-2C5N86N9\\SQLEXPRESS:1433;databaseName=Mock_Project3_db;encrypt=false";
	        String user = "sa";
	        String password = "hoang1407";

	        Connection conn = DriverManager.getConnection(url, user, password);
	        return conn;
	    }
	   
	   public static void main(String[] args) throws SQLException, ClassNotFoundException {
	        Connection conn = getMSSQLConnections();
	        System.out.println("connection " + conn);

	        System.out.println("done");

	    }

}
