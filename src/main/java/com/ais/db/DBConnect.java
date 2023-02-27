package com.ais.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    private static Connection conn;

    public static Connection getConn() {
        try {
            if (conn == null) {
                Class.forName("com.mysql.sj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc://mysql://localhost:3306/job_portal_2", "root", "password");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
