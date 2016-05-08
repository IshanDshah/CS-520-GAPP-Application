package gapp.model.dao;

import java.util.List;

import gapp.model.Application;
import gapp.model.ApplicationStatus;

public interface ApplicationStatusDao {

	ApplicationStatus getApplicationStatus(Integer status_Id);

	List<ApplicationStatus> getstatus();

	ApplicationStatus saveApplicationstatus(ApplicationStatus status);
}
