package gapp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import gapp.model.Application;
import gapp.model.dao.ApplicationDao;


@Repository
public class ApplicationDaoImpl implements ApplicationDao {
	@PersistenceContext(type = PersistenceContextType.EXTENDED)
	private EntityManager entityManager;

	@Override
	public Application getapplication(Integer application_Id) {
		return entityManager.find(Application.class, application_Id);

	}

	@Override
	@Transactional
	public List<Application> getapplications() {
		return entityManager.createQuery("from Application order by application_Id", Application.class).getResultList();

	}

	@Override
	@Transactional
	public Application saveApplication(Application application) {
		// TODO Auto-generated method stub
		return entityManager.merge(application);
	}

}
