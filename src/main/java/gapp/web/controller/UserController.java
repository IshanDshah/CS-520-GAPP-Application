package gapp.web.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.naming.Binding;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import gapp.model.Program;
import gapp.model.Users;
import gapp.model.dao.DepartmentDao;
import gapp.model.dao.UsersDao;
import gapp.web.validator.LoginValidator;

@Controller
public class UserController {

	@Autowired
	private UsersDao userDao;

	@SuppressWarnings("unused")
	@Autowired
	private DepartmentDao departmentDao;

	@Autowired
	private LoginValidator loginValidator;

	@RequestMapping("/list.html")
	public String users(ModelMap models) {

		List<Users> users = userDao.getUsers();

		models.put("users", users);

		return "list";
	}

	@RequestMapping(value = "/Register.html", method = RequestMethod.GET)
	public String register(ModelMap models) {
		models.put("users", new Users());

		return "Register";

	}

	@RequestMapping(value = "/Register.html", method = RequestMethod.POST)
	public String addUser(@ModelAttribute Users users, BindingResult result) {

		loginValidator.validate(users, result);
		if (result.hasErrors()) {
			return "Register";
		}

		users = userDao.saveUsers(users);

		return "redirect:student.html";

	}

	@RequestMapping(value = "/Login.html", method = RequestMethod.GET)
	public String userLogin(ModelMap models, HttpSession session) {
		session.invalidate();
		models.put("users", new Users());

		return "Login";

	}

	@RequestMapping(value = "/Login.html", method = RequestMethod.POST)
	public String loginCheck(@ModelAttribute Users users, HttpSession session) {

		if (users.getEmail().isEmpty() && users.getPassword().isEmpty()) {
			return "Login";
		}

		List<Users> user = userDao.getUsers();
		Users loginUser = null;
		for (Users userlogin : user) {

			if (userlogin.getEmail().equalsIgnoreCase(users.getEmail())
					&& userlogin.getPassword().equals(users.getPassword())) {
				loginUser = userlogin;
				System.out.println(userlogin.getUser_id());
				break;
			}

		}

		/*
		 * String objEmail = loginUser.getEmail(); if
		 * (objEmail.contains("student1")) return "redirect:student1.html"; else
		 * if (objEmail.contains("student2")) return "redirect:student2.html";
		 * 
		 * else if (objEmail.contains("staff")) return "redirect:staff.html";
		 * 
		 * else if (objEmail.contains("admin")) return
		 * "redirect:department.html";
		 * 
		 */

		Users ouser = userDao.getUser(loginUser.getUser_id());
		session.setAttribute("user", ouser);

		List<String> userTypes = ouser.getUserType();
		// System.out.println(loginUser.getUserType().get(index));
		for (String type : userTypes) {
			if (type.contains("student"))
				return "redirect:student1.html";
			else if (type.contains("staff"))
				return "redirect:staff.html";

			else if (type.contains("admin"))
				return "redirect:department.html";

		}

		return null;

	}

	@RequestMapping("/student.html")
	public String student(ModelMap models) {

		return "student";
	}

	@RequestMapping("/staff.html")
	public String staff(ModelMap models) {

		return "staff";
	}

}