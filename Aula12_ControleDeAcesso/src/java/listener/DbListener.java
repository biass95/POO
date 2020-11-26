/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.*;
import java.util.ArrayList;

/**
 * Web application lifecycle listener.
 *
 * @author biancasobral
 */
public class DbListener implements ServletContextListener {
    public static final String DRIVER_CLASS = "org.sqlite.JDBC";
    public static final String DATABASE_URL = "jdbc:sqlite:/Users/biancasobral/Desktop/tasks-noturno.db";
    
    
    public static Exception exception = null;
    
    public static Connection getConection() throws SQLException{
    return DriverManager.getConnection(DATABASE_URL);
    }
    
    
    public static int getUsersCount() {
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    int count = 0;
    
        try {
            Class.forName(DRIVER_CLASS);
            con = getConection();
            stmt = con.createStatement();
            rs = stmt.executeQuery("SELECT count(*) as count from users");
            if(rs.next()){
                count = rs.getInt("count");
            }
            rs.close();
            stmt.close();
            con.close();
            
        } catch (Exception ex) {
            exception = ex;
            try {rs.close();} catch (Exception ex2) {}
            try {stmt.close();} catch (Exception ex2) {}
            try {con.close();} catch (Exception ex2) {}
        }
    return count;
    }
    public static ArrayList<String> getUsersEmails() {
    ArrayList<String> list = new ArrayList<>();
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    
        try {
            Class.forName(DRIVER_CLASS);
            con = getConection();
            stmt = con.createStatement();
            rs = stmt.executeQuery("SELECT email from users");
            while(rs.next()){
                list.add(rs.getString("email"));
            }
            rs.close();
            stmt.close();
            con.close();
            
        } catch (Exception ex) {
            exception = ex;
            try {rs.close();} catch (Exception ex2) {}
            try {stmt.close();} catch (Exception ex2) {}
            try {con.close();} catch (Exception ex2) {}
        }
    return list;
    }
 
 
    @Override
    public void contextInitialized(ServletContextEvent sce) {
    Connection con = null;
    Statement stmt = null;
        
        try {
            Class.forName(DRIVER_CLASS);
            con = getConection();
            stmt = con.createStatement();
            stmt.execute("CREATE TABLE IF NOT EXISTS users ("
                + "name VARCHAR(200) NOT NULL,"
                + "email VARCHAR(200) PRIMARY KEY,"
                + "password_hash INTEGER"
                + ")");
            
            if (getUsersCount() == 0 ){
            stmt.execute("INSERT INTO users VALUES("
                + "'Administrador'," 
                + "'admin@domain.com',"
                + "1234".hashCode()
                +    ")");
            
            stmt.execute("INSERT INTO users VALUES("
                + "'Fulano da Silva'," 
                + "'fulanodasilva@domain.com',"
                + "1234".hashCode()
                +    ")");
            
            stmt.close();
            con.close();
            }
        } catch (Exception ex) {
            exception = ex;
            try {stmt.close();} catch (Exception ex2) {}
            try {con.close();} catch (Exception ex2) {}
        }
        
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
