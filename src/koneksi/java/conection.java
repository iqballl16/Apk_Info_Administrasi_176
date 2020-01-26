package koneksi.java;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;


public class conection {
    
    private static Connection connection;

    public static Connection getConnection() {
        if (connection == null) {
            try {
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/info_adm_siswa", "root","");
                System.out.println("Driver ditemukan");
            } catch (SQLException ex) {
                System.out.println("Error koneksi");
            }
        }
        return connection;
    }
}
