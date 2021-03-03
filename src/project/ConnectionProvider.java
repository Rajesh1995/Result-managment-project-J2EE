package project;
import java.sql.*;

public class ConnectionProvider {
	public static Connection getCon()
	{
		String url="jdbc:sqlserver://DESKTOP-DEKR64P\\SQLEXPRESS; databaseName=raj";
		String user="sa";
		String password="123456789";
		try 
		{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection con=DriverManager.getConnection(url, user, password);
			return con;
		}
		catch(Exception e)
		{
			System.out.println("Getting Exception!!!!!     "+e);
			return null;
			
		}
	}

}
