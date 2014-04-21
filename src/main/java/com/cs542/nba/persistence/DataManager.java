package com.cs542.nba.persistence;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PropertiesLoaderUtils;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class DataManager {

	private static JdbcTemplate databaseInstance = null;
	
	public static JdbcTemplate getDatabaseInstance() {
		if (databaseInstance == null) {
			DriverManagerDataSource dataSource = new DriverManagerDataSource();
			Properties prop = new Properties();
			try {
				Resource resource = new ClassPathResource("/config.properties");
				// load a properties file
				prop = PropertiesLoaderUtils.loadProperties(resource);
			} catch (IOException ex) {
				ex.printStackTrace();
			} 
			dataSource.setUrl(prop.getProperty("databaseUrl"));
			dataSource.setUsername(prop.getProperty("dbuser"));
			dataSource.setPassword(prop.getProperty("dbpassword"));
			dataSource.setDriverClassName(prop.getProperty("driveClassName"));
	    	databaseInstance = new JdbcTemplate(dataSource);
		}
    	
		return databaseInstance;
	}
}
