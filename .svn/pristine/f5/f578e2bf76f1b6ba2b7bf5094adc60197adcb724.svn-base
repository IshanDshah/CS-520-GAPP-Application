package gapp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import gapp.model.ApplicationStatus;
import gapp.model.dao.ApplicationStatusDao;

@Repository
public class ApplicationStatusDaoImpl implements ApplicationStatusDao {

	@PersistenceContext(type = PersistenceContextType.EXTENDED)
	private EntityManager entityManager;

	@Override
	@Transactional
	public ApplicationStatus getApplicationStatus(Integer status_Id) {
		return entityManager.find(ApplicationStatus.class, status_Id);

	}

	@Override
	public List<ApplicationStatus> getstatus() {
		return entityManager.createQuery("from ApplicationStatus order by status_Id", ApplicationStatus.class)
				.getResultList();
	}

	@Override
	@Transactional
	public ApplicationStatus saveApplicationstatus(ApplicationStatus status) {
		// TODO Auto-generated method stub
		return entityManager.merge(status);
	}

}
