package gapp.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import gapp.model.Application;
import gapp.model.Department;
import gapp.model.ExtraInfo;
import gapp.model.Program;
import gapp.model.dao.ApplicationDao;
import gapp.model.dao.DepartmentDao;
import gapp.model.dao.ExtraInfoDao;
import gapp.model.dao.ProgramDao;

@Controller
public class DepartmentController {

	@Autowired
	private DepartmentDao departmentDao;

	@Autowired
	private ProgramDao programDao;

	@Autowired
	private ExtraInfoDao extrainfoDao;

	// @Autowired
	// private ApplicationDao applicationDao;

	@RequestMapping(value = "/AddDepartment.html", method = RequestMethod.GET)
	public String AddDepartment(ModelMap models) {

		models.put("department", new Department());

		return "AddDepartment";
	}

	@RequestMapping(value = "/AddDepartment.html", method = RequestMethod.POST)
	public String addDepartment(@ModelAttribute Department department, BindingResult result) {

		department = departmentDao.saveDepartment(department);

		return "AddDepartment";

	}

	@RequestMapping(value = "/updatedepartment.html", method = RequestMethod.POST)
	public String updateDepartment(@RequestParam String departmentName, @RequestParam int departmentId,
			@ModelAttribute Department department, BindingResult result) {

		department.setDepartmentId(departmentId);
		department.setDepartmentName(departmentName);
		Department department1 = departmentDao.getDepartment(departmentId);

		departmentDao.saveDepartment(department);

		return "redirect:department.html";
	}

	@RequestMapping(value = "/updateprogram.html", method = RequestMethod.POST)
	public String updateProgram(@RequestParam int programid, @RequestParam String programname,
			@RequestParam int departmentid, @ModelAttribute Department department) {

		Program program = new Program();
		program.setProgramId(programid);
		program.setProgramName(programname);

		Department department1 = departmentDao.getDepartment(departmentid);

		program.setDepartment(department1);

		programDao.saveProgram(program);

		return "redirect:department.html";
	}

	@RequestMapping(value = "/updateextraInfo.html", method = RequestMethod.POST)
	public String updateExtraInfo(@RequestParam int extr_id, @RequestParam String fieldName,
			@RequestParam String fieldType, @RequestParam Boolean required, @RequestParam int departmentid,
			@ModelAttribute Department department) {

		ExtraInfo extrainfo = new ExtraInfo();
		extrainfo.setExtr_id(extr_id);

		extrainfo.setFieldName(fieldName);
		extrainfo.setFieldType(fieldType);
		extrainfo.setRequired(required);
		Department department1 = departmentDao.getDepartment(departmentid);

		extrainfo.setDepartment(department1);

		extrainfoDao.saveExtraInfo(extrainfo);

		return "redirect:department.html";
	}

	@RequestMapping(value = "/removeprogram.html", method = RequestMethod.POST)
	public String removeProgram(@RequestParam int programid, @RequestParam String programname,
			@RequestParam int departmentid, @ModelAttribute Department department) {

		// Program program = new Program();
		// program.setProgramId(programid);
		// program.setProgramName(programname);

		Program program = programDao.getProgram(programid);
		Application application = (Application) program.getApplication();
		if (application != null)
			application.setProgram(null);
		// applicationDao.saveApplication(application);

		programDao.removeProgram(program);
		System.out.println("Removed from database");

		return "redirect:department.html";
	}

	@RequestMapping(value = "/removeextraInfo.html", method = RequestMethod.POST)
	public String removeExtraInfo(@RequestParam int extr_id, @RequestParam String fieldName,
			@RequestParam String fieldType, @RequestParam Boolean required, @RequestParam int departmentid,
			@ModelAttribute Department department) {

		ExtraInfo extrainfo = extrainfoDao.getExtraInfo(extr_id);

		extrainfoDao.removeExtraInfo(extrainfo);
		;

		return "redirect:department.html";
	}

}
