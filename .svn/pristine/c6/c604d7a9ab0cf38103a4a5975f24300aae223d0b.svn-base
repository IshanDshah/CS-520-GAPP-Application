package gapp.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import gapp.model.Department;
import gapp.model.dao.DepartmentDao;

@Controller
public class HomeController {

	@Autowired
	private DepartmentDao departmentDao;

	@RequestMapping("/Login.html")
	public String index() {
		return "Login";
	}

	@RequestMapping("/department.html")
	public String department(ModelMap models) {

		List<Department> departments = departmentDao.getDepartments();

		models.put("departments", departments);

		return "department";
	}

	@RequestMapping(value = "/View.html", method = RequestMethod.GET)
	public String viewDepartment(@RequestParam Integer departmentId, ModelMap models) {

		Department department = departmentDao.getDepartment(departmentId);
		models.put("department", department);
		models.put("programs", department.getPrograms());
		models.put("extraInfo", department.getExtraInfo());
		return "View";
	}

	@RequestMapping(value = "/Edit.html", method = RequestMethod.GET)
	public String editDepartment(@RequestParam Integer departmentId, ModelMap models) {

		Department department = departmentDao.getDepartment(departmentId);
		models.put("department", department);
		models.put("programs", department.getPrograms());
		models.put("extraInfo", department.getExtraInfo());

		return "Edit";
	}

	@RequestMapping(value = "/Remove.html", method = RequestMethod.GET)
	public String removeDepartment(@RequestParam Integer departmentId, ModelMap models) {

		Department department = departmentDao.getDepartment(departmentId);
		models.put("department", department);
		models.put("programs", department.getPrograms());
		models.put("extraInfo", department.getExtraInfo());

		return "Remove";
	}

}