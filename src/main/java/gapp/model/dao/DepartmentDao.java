package gapp.model.dao;

import java.util.List;

import gapp.model.Department;


public interface DepartmentDao {

	Department getDepartment(Integer departmentId);

	List<Department> getDepartments();
	
	Department saveDepartment(Department department);
	
	

}
