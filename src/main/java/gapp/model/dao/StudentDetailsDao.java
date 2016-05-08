package gapp.model.dao;

import java.util.List;

import gapp.model.Studentdetails;

public interface StudentDetailsDao {

	Studentdetails getStudentdetails(Integer student_id);

	List<Studentdetails> getStudentDetails();

	Studentdetails saveStudentdetails(Studentdetails student);
}
