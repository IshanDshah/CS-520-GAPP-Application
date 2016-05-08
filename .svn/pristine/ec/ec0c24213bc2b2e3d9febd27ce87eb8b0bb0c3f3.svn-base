package gapp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import gapp.model.Degree;
import gapp.model.Department;
import gapp.model.dao.DegreeDao;

@Repository
public class DegreeDaoImpl implements DegreeDao {

	@PersistenceContext
	// (type = PersistenceContextType.EXTENDED)
	private EntityManager entityManager;

	@Override
	public Degree getDegree(Integer degree_Id) {

		return entityManager.find(Degree.class, degree_Id);

	}

	@Override
	public List<Degree> getDegree() {
		return entityManager.createQuery("from Degree order by degree_Id", Degree.class).getResultList();

	}

	@Override
	@Transactional
	public void removeDegree(Degree degree) {

		entityManager.remove(degree);

	}

	@Override
	@Transactional
	public Degree saveDegree(Degree degree) {
		// TODO Auto-generated method stub
		return entityManager.merge(degree);

	}

}
