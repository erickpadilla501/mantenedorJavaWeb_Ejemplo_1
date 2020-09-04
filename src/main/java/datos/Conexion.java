package datos;

import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.*;
import javax.sql.DataSource; //<<<---- de aqui viene el DataSource, de este tipo es
import org.apache.commons.dbcp2.BasicDataSource; //<<<--- de aqui viene BasicDataSource, de este tipo es...

public class Conexion {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/control_clientes?useSSL="
            + "false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";

    private static final String JDBC_USER = "root";

    private static final String JDBC_PASSWORD = "admin";

    private static BasicDataSource dataSource;

    public static DataSource getDataSource() {

        if (dataSource == null) {
            dataSource = new BasicDataSource();
            dataSource.setUrl(JDBC_URL);
            dataSource.setUsername(JDBC_USER);
            dataSource.setPassword(JDBC_PASSWORD);
            dataSource.setInitialSize(50);

        }
        return dataSource;

    }

    public static Connection getConnection() throws SQLException {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return getDataSource().getConnection();
    }

    public static void close(PreparedStatement stmt) {

        try {
            stmt.close();

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
        
    }
    
    
        public static void close(Connection conn) {

        try {
            conn.close();

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
        
    }
            public static void close(ResultSet rs) {

        try {
            rs.close();

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
        
    }





//    public Connection conectarABaseDatos() throws SQLException {
//
//        Connection conBaseDeDatos = null;
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            String sURL = "jdbc:mysql://localhost:3306/taller_app?useSSL="
//                    + "false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
//            conBaseDeDatos = DriverManager.getConnection(sURL, "root", "admin");
//
//        } catch (Exception ex) {
//
//        }
//
//        return conBaseDeDatos;
//    }
}
