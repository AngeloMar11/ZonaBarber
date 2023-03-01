package co.zonabarber.javawebZonaBarber.util;

import co.zonabarber.javawebZonaBarber.model.beans.User;
import co.zonabarber.javawebZonaBarber.model.repository.UserRepositoryImp;
import org.apache.commons.dbcp2.BasicDataSource;

import java.sql.Connection;
import java.sql.SQLException;

public class DBconnection {

    private static final String URL = "jdbc:mysql://localhost:3306/zonabarber"+ "?useUnicode=true&use"+ "JDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&"+
            "serverTimezone=UTC";
    private static final String USER = "root";
    private static final String PASS = "Admin123";

    private static BasicDataSource pool;
    public static BasicDataSource getInstance() throws SQLException
    {
        if (pool == null){
            pool= new BasicDataSource();
            pool.setUrl(URL);
            pool.setUsername(USER);
            pool.setPassword(PASS);

            pool.setInitialSize(8);
            pool.setMinIdle(8);
            pool.setMaxIdle(8);
            pool.setMaxTotal(8);
        }
        return pool;
    }
    public static Connection getConnection() throws SQLException {
        return getInstance().getConnection();

    }

    public static void main(String[] args) throws SQLException {
        User user = new User();
        UserRepositoryImp userl = new UserRepositoryImp();
        userl.listAll();
    }

}


