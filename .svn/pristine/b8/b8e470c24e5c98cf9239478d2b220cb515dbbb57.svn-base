package gapp.web.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import gapp.model.Users;
import gapp.model.dao.UsersDao;

@Component
public class UserValidator implements Validator {

	@Autowired
	private UsersDao usersDao;

	@Override
	public boolean supports(Class<?> clazz) {
		
		return Users.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
			Users users=(Users) target;
	
			if(!StringUtils.hasText(users.getEmail()))
				errors.rejectValue("Email", "error.field.empty");
			
		
	
	}

}
