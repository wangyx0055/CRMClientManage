package com.icss.bean;

public class DepartmentInfoBean {
	private String department_id;
	private String department_name ;
	private String department_desc ;
	private String is_used ;
	
	public DepartmentInfoBean(){}
	public DepartmentInfoBean(String department_name,String department_desc){
		this.department_name = department_name;
		this.department_desc = department_desc;
	}
	
	public DepartmentInfoBean(String department_id,String department_name,String department_desc,String is_used){
		this.department_id = department_id;
		this.department_name = department_name;
		this.department_desc = department_desc;
		this.is_used =is_used;
	}
	public String getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(String department_id) {
		this.department_id = department_id;
	}
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	public String getDepartment_desc() {
		return department_desc;
	}
	public void setDepartment_desc(String department_desc) {
		this.department_desc = department_desc;
	}
	public String getIs_used() {
		return is_used;
	}
	public void setIs_used(String is_used) {
		this.is_used = is_used;
	}
	
}
