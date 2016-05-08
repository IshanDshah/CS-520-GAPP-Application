package gapp.model.dao;

import java.util.List;

import gapp.model.Application;

public interface ApplicationDao {

	Application getapplication(Integer application_Id);

	List<Application> getapplications();
	

	Application saveApplication(Application application);
	

}
