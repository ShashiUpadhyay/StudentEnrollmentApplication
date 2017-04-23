package org.student.util;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class DbUtil {

    private static Connection dbConnection = null;

    public static Connection getConnection() {
        if (dbConnection != null) {
            System.out.println("Returning existing connection");
            return dbConnection;
        } else {
            try {
                InputStream inputStream = DbUtil.class.getClassLoader().getResourceAsStream("db.properties");
                Properties properties = new Properties();
                if (properties != null) {
                    properties.load(inputStream);

                    String dbDriver = properties.getProperty("dbDriver");
                    String connectionUrl = properties.getProperty("connectionUrl");
                    String userName = properties.getProperty("userName");
                    String password = properties.getProperty("password");

                    Class.forName(dbDriver).newInstance();
                    dbConnection = DriverManager.getConnection(connectionUrl,
                            userName, password);
                    System.out.println("dbConnection -> " + dbConnection);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            System.out.println("Created new connection");
            return dbConnection;
        }
    }
}
