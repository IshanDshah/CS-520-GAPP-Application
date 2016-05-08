package gapp.web.controller;

import java.lang.invoke.MethodType;
import java.lang.reflect.Method;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.annotation.HttpConstraint;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Status;

import org.json.JSONArray;
import org.json.JSONObject;
import org.omg.CORBA.Request;
import org.springframework.beans.Mergeable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.testng.internal.Nullable;

import gapp.model.Application;
import gapp.model.ApplicationStatus;
import gapp.model.Degree;
import gapp.model.Department;
import gapp.model.Program;
import gapp.model.Studentdetails;
import gapp.model.Users;
import gapp.model.dao.ApplicationDao;
import gapp.model.dao.ApplicationStatusDao;
import gapp.model.dao.DegreeDao;
import gapp.model.dao.DepartmentDao;
import gapp.model.dao.ProgramDao;
import gapp.model.dao.StudentDetailsDao;
import gapp.model.dao.UsersDao;

@Controller
public class StudentController {
	Boolean boolean_save;

	@Autowired
	private StudentDetailsDao studentDao;

	@Autowired
	UsersDao usersdao;

	@Autowired
	private DepartmentDao departmentDao;

	@Autowired
	private DegreeDao degreeDao;

	@Autowired
	private ApplicationStatusDao applicationStatusDao;

	@Autowired
	private ApplicationDao applicationDao;

	@Autowired
	private ProgramDao programDao;

	/* view */
	@RequestMapping(value = "/Studentapplication.html", method = RequestMethod.GET)
	public String application(ModelMap models, HttpSession session) throws InterruptedException, NullPointerException {

		Users user = (Users) session.getAttribute("user");

		// user = usersdao.getUser(user.getUser_id());
		Studentdetails stu = user.getStudentdetails();

		List<ApplicationStatus> lstAppStatus = stu.getStatus();

		models.put("user", lstAppStatus);

		return "Studentapplication";

	}

	@RequestMapping(value = "/student1.html")
	public String student1(ModelMap models, HttpSession session) {

		Users user = (Users) session.getAttribute("user");
		
		List<ApplicationStatus> lstAppStatus = user.getStudentdetails().getStatus();
		models.put("abc", lstAppStatus);

		return "student1";
	}

	@RequestMapping(value = "/Viewapplication.html")
	public String viewApplication(ModelMap models, HttpSession session, @RequestParam Integer application_Id) {
		// Application application =((ApplicationDao)
		// applicationDao).getapplication(Application_id);
		Application application = applicationDao.getapplication(application_Id);
		// Users user = (Users) session.getAttribute("user");
		List<ApplicationStatus> lstAppStatus = application.getStatus();
		// models.put("std", user.getStudentdetails());
		// lstAppStatus.get(0).getStudent().getDegrees().get(0).getCollegeName()
		// lstAppStatus.get(0).getStudent().getDepartment().getDepartmentName()
		// lstAppStatus.get(0).getStudent().getDepartment().getPrograms().get(0).getProgramName()
		// lstAppStatus.get(0).getApplication().getTerm()
		// lstAppStatus.get(0).getApplication().getProgram().getDepartment().getPrograms().get(0).getProgramName()
		models.put("view", lstAppStatus);
		for (ApplicationStatus student : lstAppStatus) {
			List<Degree> objDegree = student.getStudent().getDegrees();
			// objDegree.get(0).getMajor()
			models.put("deg", objDegree);

		}
		return "Viewapplication";

	}

	@RequestMapping(value = "/Editapplication.html", method = RequestMethod.POST)
	public String editAppli(ModelMap models, HttpSession session, @RequestParam Integer application_Id) {

		Application application = applicationDao.getapplication(application_Id);
		List<ApplicationStatus> lstAppStatus = application.getStatus();
		// Users user = (Users) session.getAttribute("user");
		// models.put("std", user.getStudentdetails());

		models.put("view", lstAppStatus);

		for (ApplicationStatus student : lstAppStatus) {
			List<Degree> objDegree = student.getStudent().getDegrees();
			models.put("deg", objDegree);

		}
		return "Viewapplication";

	}

	@RequestMapping(value = "/Createapplication.html", method = RequestMethod.GET)
	public String createApplication(ModelMap models) {

		List<Department> departments = departmentDao.getDepartments();
		models.put("departments", departments);

		models.put("student", studentDao);
		// List<Studentdetails> personal = studentDao.getStudentDetails();
		// models.put("personal", personal);
		return "Selectapplication";

	}

	@RequestMapping(value = "/Selectapplication.html", method = RequestMethod.POST)
	public String Selectapplication(ModelMap models, HttpSession session, @RequestParam String programName,
			@RequestParam String term) {
		Users user = (Users) session.getAttribute("user");
		Application application = new Application();
		// status.setStudent(user.getStudentdetails().getStudent_id());
		int p = Integer.parseInt(programName);

		application.setTerm(term);

		application.setProgram(programDao.getProgram(p));

		application = applicationDao.saveApplication(application);

		session.setAttribute("applisave", application);

		ApplicationStatus status = new ApplicationStatus();
		status.setApplication(application);

		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();

		status.setComment(null);
		status.setEventTime(date);
		Studentdetails student = user.getStudentdetails();
		status.setStudent(student);

		applicationStatusDao.saveApplicationstatus(status);
		return "Createapplication";

	}

	/*----*/
	@RequestMapping(value = "/Createapplication.html", method = RequestMethod.POST)
	public String saveApplication(ModelMap models, @ModelAttribute Studentdetails student, HttpSession session,
			BindingResult result, @RequestParam String firstName, @RequestParam String lastName,
			@RequestParam String CIN, @RequestParam String PhoneNO, @RequestParam String Gender, @RequestParam Date DOB,
			@RequestParam String citizen, @RequestParam String email, @RequestParam String Toefl,
			@RequestParam String Gre, @RequestParam String Gpa) {
		Users user = (Users) session.getAttribute("user");
		// user.getStudentdetails().getStudent_id();
		student.setStudent_id(user.getStudentdetails().getStudent_id());
		// Department department =
		// (user.getStudentdetails().getDepartment().getDepartmentId());

		// student.setDepartment(department);
		student.setUser(user);
		student.setEmail(email);

		double gpa = Double.parseDouble(Gpa);
		double gre = Double.parseDouble(Gre);
		double toefl = Double.parseDouble(Toefl);

		student.setGre(gre);
		student.setGpa(gpa);
		student.setToefl(toefl);

		Integer Cin = Integer.parseInt(CIN);
		student.setCin(Cin);

		student.setCitizenship(citizen);
		student.setLastName(lastName);
		student.setPhone(PhoneNO);
		student.setGender(Gender);
		student.setDateOfBirth(DOB);
		student.setTranscript(null);
		student.setFirstName(firstName);
		// System.out.println(student);
		// System.out.println(Gender);
		// System.out.println("Ishan");

		student = studentDao.saveStudentdetails(student);

		return "CreateDegree";

	}

	@RequestMapping(value = "/CreateDegree.html", method = RequestMethod.GET)
	public String CreateDegree(ModelMap models) {

		models.put("degree", degreeDao);
		return "CreateDegree";

	}

	@RequestMapping(value = "/saveDegree.html", method = RequestMethod.POST)
	public String saveDegree(ModelMap models, HttpSession session, @RequestParam String collegeName,
			@RequestParam String degreeGained, @RequestParam String major, @ModelAttribute Degree degree,
			@ModelAttribute Studentdetails student, @RequestParam Date startDate, @RequestParam Date endDate)
					throws ParseException {
		Users user = (Users) session.getAttribute("user");
		// int a = user.getStudentdetails().getStudent_id();
		// degree.setStudent(student);
		// degree.setStudent(student.setStudent_id(user.getStudentdetails().getStudent_id()));
		// degree.setStudent(null);
		// degree.setStudent(student);
		// int students = student.getUser().getStudentdetails().getStudent_id();
		// degree.setStudent(student);
		Studentdetails st = user.getStudentdetails();
		degree.setStudent(st);
		degree.setCollegeName(collegeName);
		// degree.setDegree_Id(degree_Id);
		degree.setMajor(major);
		// DateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
		// Date std = (Date) formatter.parse(startDate);
		// Date end = (Date) formatter.parse(endDate);
		degree.setEndDate(endDate);
		degree.setStartDate(startDate);
		degree.setDegreeGained(degreeGained);
		degree = degreeDao.saveDegree(degree);
		return "AcademicRecord";
	}

	@RequestMapping(value = "/getProgram")
	public @ResponseBody List<Program> getProgram(@RequestParam("prog") String prog) {

		return null;
	}

	@RequestMapping(value = "/Editapplication.html", method = RequestMethod.GET)
	public String editApplication(ModelMap models, HttpSession session, @RequestParam Integer application_Id) {

		// Users user = (Users) session.getAttribute("user");

		List<Department> departments = departmentDao.getDepartments();

		models.put("departments", departments);

		Application application = applicationDao.getapplication(application_Id);
		session.setAttribute("applisave", application);
		List<ApplicationStatus> lstAppStatus = application.getStatus();
		// getApplication().getProgram().getDepartment().getPrograms().get(0).ge
		// lstAppStatus.get(0).getStudent().get
		models.put("view", lstAppStatus);
		// lstAppStatus.get(0).getStudent().getFirstName()
		// lstAppStatus.get(0).getApplication().getProgram().getProgramName()
		// lstAppStatus.get(0).getApplication().getApplication_Id()

		for (ApplicationStatus student : lstAppStatus) {
			List<Degree> objDegree = student.getStudent().getDegrees();
			models.put("deg", objDegree);

		}
		return "Editapplication";

	}

	@RequestMapping(value = "/AddDegree.html", method = RequestMethod.GET)
	public String addDegree(Model models) {

		return "AddDegree";

	}

	@RequestMapping(value = "/AddEditDegree.html", method = RequestMethod.GET)
	public String addeditDegree(Model models) {

		return "AddEditDegree";

	}

	@RequestMapping(value = "/AddEditDegree.html", method = RequestMethod.POST)
	public String addeditdeg(ModelMap Models, @RequestParam String collegeName, @RequestParam String degreeGained,
			@RequestParam String major, HttpSession session, @RequestParam Date startDate, @RequestParam Date endDate,
			@ModelAttribute Degree degree) {

		Users user = (Users) session.getAttribute("user");
		Studentdetails st = user.getStudentdetails();
		degree.setStudent(st);
		degree.setCollegeName(collegeName);
		degree.setMajor(major);
		degree.setEndDate(endDate);
		degree.setStartDate(startDate);
		degree.setDegreeGained(degreeGained);
		degree = degreeDao.saveDegree(degree);
		return null;
	}

	@RequestMapping(value = "/AddDegree.html", method = RequestMethod.POST)
	public String adddeg(ModelMap Models, @RequestParam String collegeName, @RequestParam String degreeGained,
			@RequestParam String major, HttpSession session, @RequestParam Date startDate, @RequestParam Date endDate,
			@ModelAttribute Degree degree) {

		Users user = (Users) session.getAttribute("user");
		Studentdetails st = user.getStudentdetails();
		degree.setStudent(st);
		degree.setCollegeName(collegeName);
		// degree.setDegree_Id(degree_Id);
		degree.setMajor(major);
		// DateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
		// Date std = (Date) formatter.parse(startDate);
		// Date end = (Date) formatter.parse(endDate);
		degree.setEndDate(endDate);
		degree.setStartDate(startDate);
		degree.setDegreeGained(degreeGained);
		degree = degreeDao.saveDegree(degree);
		return null;
	}

	@RequestMapping(value = "/RemoveDegree.html", method = RequestMethod.GET)
	public String removeDegree(ModelMap models, HttpSession session, @RequestParam Integer application_Id,
			@ModelAttribute Studentdetails student) {

		// System.out.println("Degree Removed");
		// Users user = (Users) session.getAttribute("user");

		Users user = (Users) session.getAttribute("user");
		student.setStudent_id(user.getStudentdetails().getStudent_id());

		Degree degree = new Degree();
		// degree.setStudent(student);
		degree.setStudent(student);

		Application application = applicationDao.getapplication(application_Id);

		List<ApplicationStatus> lstAppStatus = application.getStatus();

		for (ApplicationStatus st : lstAppStatus) {
			List<Degree> objDegree = st.getStudent().getDegrees();
			// student.getApplication().getApplication_Id()
			models.put("deg", objDegree);
			// objDegree.get(0).getDegree_Id()

		}

		return null;

	}

	@RequestMapping(value = "/Removedegree.html", method = RequestMethod.POST)
	public String removeDeg(ModelMap models, HttpSession session, @ModelAttribute Studentdetails student,
			@RequestParam int degree_Id) {

		Users user = (Users) session.getAttribute("user");

		student.setStudent_id(user.getStudentdetails().getStudent_id());

		Degree degree = degreeDao.getDegree(degree_Id);

		degree.setStudent(student);

		degreeDao.removeDegree(degree);
		System.out.println("Nikli");
		return "RemoveDegree";

	}

	@RequestMapping(value = "/saveDegree.html", method = RequestMethod.GET)
	public String saveDegree(ModelMap models) {

		List<Department> departments = departmentDao.getDepartments();
		models.put("departments", departments);
		return "AcademicRecord";

	}

	@RequestMapping(value = "/Saveapplication.html", method = RequestMethod.POST)
	public String saveappli(ModelMap models, HttpSession session) {

		// Users user = (Users) session.getAttribute("user");
		boolean_save = true;
		// status.setComment("Saved");

		Application application = (Application) session.getAttribute("applisave");
		application.setSaved(false);
		application = applicationDao.saveApplication(application);

		return "redirect:Studentapplication.html";

	}

	@RequestMapping(value = "/Submitapplication.html", method = RequestMethod.POST)
	public String submitappli(ModelMap models, HttpSession session) {

		boolean_save = false;

		// status.setComment("Submitted");
		/*
		 * status.setComment("Submitted");
		 * 
		 * status.setApplication(application);
		 * 
		 * DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		 * Date date = new Date();
		 * 
		 * status.setEventTime(date); Studentdetails student =
		 * user.getStudentdetails(); status.setStudent(student);
		 * 
		 * applicationStatusDao.saveApplicationstatus(status);
		 */
		Application application = (Application) session.getAttribute("applisave");
		System.out.println(application);
		application.isSaved();
		application = applicationDao.saveApplication(application);
		return "redirect:Studentapplication.html";

	}

	@RequestMapping(value = "/EditedApplication.html", method = RequestMethod.POST)
	public String check(ModelMap models, HttpSession session, @ModelAttribute Studentdetails student,
			@ModelAttribute Application application, BindingResult result, @RequestParam String firstName,
			@RequestParam String lastName, @RequestParam String phnNO, @RequestParam String gender,
			@RequestParam String toefl, @RequestParam String gre, @RequestParam String gpa,
			@RequestParam String citizen, @RequestParam String email, @RequestParam String term,
			@RequestParam Integer applicationId, @RequestParam Integer programidentifica) {

		// application.setTerm(term);
		// application.setProgram(programDao.getProgram(progID));,
		// @RequestParam Integer progID
		// applicationDao.saveApplication(application);
		// application.setApplication_Id(application_Id);
		// System.out.println(application.setApplication_Id(applicationId));
		// Application application=new Application();
		// applicationId.se'
		// int p = Integer.parseInt(programidentifica);
		//application.setProgram(programDao.getProgram(programidentifica));
		
		application.setApplication_Id(applicationId);
		application.setTerm(term);

		// int p = Integer.parseInt(programName);
		// application.setProgram(programDao.getProgram().ge);
		// application = applicationDao.
		application = applicationDao.saveApplication(application);
		// System.out.println(programName);

		Users user = (Users) session.getAttribute("user");
		student.setStudent_id(user.getStudentdetails().getStudent_id());
		student.setUser(user);
		student.setEmail(email);
		student.setDepartment(user.getStudentdetails().getDepartment());
		double Gpa = Double.parseDouble(gpa);
		double Gre = Double.parseDouble(gre);
		double Toefl = Double.parseDouble(toefl);

		student.setGre(Gre);
		student.setGpa(Gpa);
		student.setToefl(Toefl);
		student.setCin(user.getStudentdetails().getCin());
		student.setDateOfBirth(user.getStudentdetails().getDateOfBirth());
		student.setCitizenship(citizen);
		student.setLastName(lastName);
		student.setPhone(phnNO);
		student.setGender(gender);
		// Date dob=Date.parse(DOB);
		// student.setDateOfBirth(dob);
		// student.setTranscript(null);
		student.setFirstName(firstName);

		student = studentDao.saveStudentdetails(student);
		// session.invalidate();
		return "Confirm";
	}

	@RequestMapping(value = "/Confirm.html")
	public String confirm(ModelMap Models) {
		return "Confirm";

	}

	@RequestMapping(value = "/Confirm.html", method = RequestMethod.POST)
	public String confirmsubmit(ModelMap Models) {

		return "redirect:Studentapplication.html";

	}

	@RequestMapping(value = "getProgram.html", method = RequestMethod.POST)
	public @ResponseBody String getProgram(@RequestParam Integer department, HttpServletResponse response,
			ModelMap models) {
		Department dept = departmentDao.getDepartment(department);
		List<Program> program = dept.getPrograms();
		JSONObject objectJson = new JSONObject();
		JSONArray array = new JSONArray();

		for (Program p : program) {

			JSONObject objJson = new JSONObject();
			objJson.put("programId", p.getProgramId());
			objJson.put("programName", p.getProgramName());
			array.put(objJson);
		}
		objectJson.put("programs", array);
		return objectJson.toString();
	}

}
