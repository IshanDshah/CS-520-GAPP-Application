package gapp.web.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import gapp.model.Users;
import gapp.model.dao.UsersDao;

@Component
public class LoginValidator implements Validator {

	@Autowired
	private UsersDao usersDao;

	@Override
	public boolean supports(Class<?> clazz) {

		return Users.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Users users = (Users) target;

		for (Users user : usersDao.getUsers()) {
			if (user.getEmail().equalsIgnoreCase(users.getEmail())) {

				errors.rejectValue("email", "error.email.existing");
			}
		}


	}

}
