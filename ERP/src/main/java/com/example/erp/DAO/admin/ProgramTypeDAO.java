package com.example.erp.DAO.admin;

import java.sql.ResultSet; 
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Service;

import com.example.erp.model.admin.ProgramType;

@Service
public class ProgramTypeDAO {

	JdbcTemplate template;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		template = new JdbcTemplate(dataSource);
	}

	public void save(String programtype) {
		System.out.println("DAO -->"+programtype);
		String sql = "insert into adminprogramtype(program_type) values('"+ programtype + "')";
		System.out.println(sql);
		template.update(sql);
	}

	public List<ProgramType>  AllProgramType() {
		return template.query("select * from adminprogramtype", new ResultSetExtractor<List<ProgramType>>() {

			public List<ProgramType> extractData(ResultSet rs) throws SQLException, DataAccessException {

				List<ProgramType> list = new ArrayList<ProgramType>();
				while (rs.next()) {
					ProgramType e = new ProgramType();
					e.setId(rs.getInt(1));
					e.setProgramType((rs.getString(2)));
					e.setProgramCode(rs.getInt(3));
					

					list.add(e);
				}
				return list;
			}
		});
	}

	public void deleteProgramType(int id) {
		String sql = "delete from adminprogramtype where id=" + id + "";
		template.update(sql);
	}

	
}
