package gapp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import gapp.model.Studentdetails;
import gapp.model.dao.StudentDetailsDao;

@Repository
public class StudentDetailsDaoImpl implements StudentDetailsDao {

	@PersistenceContext(type = PersistenceContextType.EXTENDED)
	private EntityManager entityManager;

	@Override
	public Studentdetails getStudentdetails(Integer student_id) {
		return entityManager.find(Studentdetails.class, student_id);

	}

	@Override
	public List<Studentdetails> getStudentDetails() {
		return entityManager.createQuery("from Studentdetails order by student_id", Studentdetails.class)
				.getResultList();
	}

	@Override
	@Transactional
	public Studentdetails saveStudentdetails(Studentdetails student) {
		// TODO Auto-generated method stub
		return entityManager.merge(student);

	}
}