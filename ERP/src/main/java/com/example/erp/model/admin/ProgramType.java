package com.example.erp.model.admin;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ProgramType{

	@Id
	private int id;
	private String programType;
	private int programCode;
	
	
	public int getProgramCode() {
		return programCode;
	}
	public void setProgramCode(int programCode) {
		this.programCode = programCode;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProgramType() {
		return programType;
	}
	public void setProgramType(String programType) {
		this.programType = programType;
	}
	
	
}
