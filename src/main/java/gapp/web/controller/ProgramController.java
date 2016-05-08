package gapp.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import gapp.model.Department;
import gapp.model.Program;
import gapp.model.dao.DepartmentDao;
import gapp.model.dao.ExtraInfoDao;
import gapp.model.dao.ProgramDao;

@Controller
public class ProgramController {

	@Autowired
	private DepartmentDao departmentDao;

	@Autowired
	private ProgramDao programDao;

	@Autowired
	private ExtraInfoDao extrainfoDao;

	int departmentid = 0;

	@RequestMapping(value = "/AddProgram.html", method = RequestMethod.GET)
	public String AddProgram(ModelMap models, @RequestParam int departmentId) {

		Department department = departmentDao.getDepartment(departmentId);

		departmentid = departmentId;
		models.put("department", department);
		models.put("program", new Program());

		return "AddProgram";
	}

	@RequestMapping(value = "/AddProgram.html", method = RequestMethod.POST)
	public String addProgram(@ModelAttribute Program program, @ModelAttribute Department department) {

		System.out.println(departmentid);

		Department department1 = departmentDao.getDepartment(departmentid);

		program.setDepartment(department1);

		programDao.saveProgram(program);

		return "redirect:department.html";

	}

}
