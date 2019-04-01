package com.example.erp.DAO.admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Service;

import com.example.erp.model.admin.AdminLogin;

@Service
public class AdminLoginDAO {
	
	JdbcTemplate template;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		template = new JdbcTemplate(dataSource);
	}

	public AdminLogin getAdminDetails() {
		return template.query("select * from adminlogin", new ResultSetExtractor<AdminLogin>() {

			public AdminLogin extractData(ResultSet rs) throws SQLException, DataAccessException {

				AdminLogin e = new AdminLogin();
				while (rs.next()) {

					e.setId(rs.getInt(1));
					e.setUsername((rs.getString(2)));
					e.setMailid(rs.getString(3));
					e.setPassword(rs.getString(4));
					/*
					 * e.setMailid(rs.getString(5)); e.setCourse(rs.getString(6));
					 */
				}
				return e;
			}
		});
	}

	
}
