package gapp.model.dao;

import java.util.List;

import gapp.model.Degree;
import gapp.model.Department;
import gapp.model.Program;

public interface DegreeDao {

	Degree getDegree(Integer degree_Id);

	List<Degree> getDegree();

	Degree saveDegree(Degree degree);

	void removeDegree(Degree degree);

}
