package gapp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import gapp.model.Department;
import gapp.model.Program;
import gapp.model.dao.ProgramDao;

@Repository

public class ProgramDaoImpl implements ProgramDao {

	@PersistenceContext(type = PersistenceContextType.EXTENDED)
	private EntityManager entityManager;

	@Override
	public Program getProgram(Integer programId) {
		return entityManager.find(Program.class, programId);

	}

	@Override
	public List<Program> getProgram() {
		return entityManager.createQuery("from Program order by programId", Program.class).getResultList();

	}

	@Override
	@Transactional
	public Program saveProgram(Program program) {
		// TODO Auto-generated method stub
		return entityManager.merge(program);
	}

	@Override
	@Transactional
	public void removeProgram(Program program) {

		 entityManager.remove(program);
	}


}
