package springmvc.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.testng.annotations.Test;

import gapp.model.Department;
import gapp.model.Program;
import gapp.model.dao.DepartmentDao;

@Test(groups = "DepartmentDaoTest")
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class DepartmentDaoTest extends AbstractTransactionalTestNGSpringContextTests {

	@Autowired
	DepartmentDao departmentDao;

	@Test
	public void getDepartments() {
		//assert departmentDao.getDepartments().size() == 2;
	}

	@Test
	public void getDepartmentByTerm() {
		/*
		int counter = 0;
		List<Department> departments = departmentDao.getDepartments();

		for (Department department : departments) {
			List<Program> programs = department.getPrograms();
			for (Program program : programs) {
				if (program.getApplication() != null) {
					if (program.getApplication().getTerm().equals("Fall 2016")) {
						counter++;
					}
				}
			}
		}
		//assert counter == 1;
	*/}

}
