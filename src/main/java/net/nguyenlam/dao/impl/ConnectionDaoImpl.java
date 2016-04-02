package net.nguyenlam.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

import net.nguyenlam.dao.ConnectionDao;
import net.nguyenlam.utils.DatabaseProperties;

public class ConnectionDaoImpl implements ConnectionDao{
	protected DriverManagerDataSource dataSource = null;
	protected Connection connection = null;
	protected PreparedStatement preparedStatement = null;
	protected ResultSet resultSet = null;
	public void closeConnect() {
		// TODO Auto-generated method stub
		try {
			connection.close();
			preparedStatement.close();
		} catch(SQLException e) {
			System.out.println("An error occur in close connect: " + e.getMessage());
		}
		
	}
	public boolean connectToDB() {
		// TODO Auto-generated method stub
		boolean result = true;
        try {
			// load mysql driver
			Class.forName(DatabaseProperties.getData("driver"));
			connection = DriverManager.getConnection(DatabaseProperties
					.getData("url"), DatabaseProperties.getData("user"),
					DatabaseProperties.getData("password"));
		} catch (Exception e) {
			System.out.println("an exception occur: " + e.getMessage());
			result = false;
		}
        return result;
	}
	public void initDataSource() {
		// TODO Auto-generated method stub
		 dataSource = new DriverManagerDataSource();
	      dataSource.setDriverClassName(DatabaseProperties.getData("driver"));
	      dataSource.setUrl(DatabaseProperties.getData("url"));
	      dataSource.setUsername(DatabaseProperties.getData("user"));
	      dataSource.setPassword(DatabaseProperties.getData("password"));
	}
}
