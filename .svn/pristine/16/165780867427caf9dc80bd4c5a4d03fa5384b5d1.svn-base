package gapp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import gapp.model.ExtraInfo;
import gapp.model.Program;
import gapp.model.dao.ExtraInfoDao;

@Repository
public class ExtraInfoDaoImpl implements ExtraInfoDao {

	@PersistenceContext(type = PersistenceContextType.EXTENDED)
	private EntityManager entityManager;

	@Override
	public ExtraInfo getExtraInfo(Integer extr_id) {
		return entityManager.find(ExtraInfo.class, extr_id);

	}

	@Override
	public List<ExtraInfo> getExtraInfo() {
		return entityManager.createQuery("from ExtraInfo order by extr_id", ExtraInfo.class).getResultList();

	}

	@Override
	@Transactional
	public ExtraInfo saveExtraInfo(ExtraInfo extrainfo) {

		return entityManager.merge(extrainfo);

	}

	@Override

	@Transactional
	public void removeExtraInfo(ExtraInfo extrainfo) {
		// TODO Auto-generated method stub
		entityManager.remove(extrainfo);
	}

}
