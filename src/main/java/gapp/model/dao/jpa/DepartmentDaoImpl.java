package gapp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import gapp.model.Department;
import gapp.model.dao.DepartmentDao;

@Repository
public class DepartmentDaoImpl implements DepartmentDao {

	@PersistenceContext(type = PersistenceContextType.EXTENDED)
	private EntityManager entityManager;

	@Override
	public Department getDepartment(Integer departmentId) {
		return entityManager.find(Department.class, departmentId);

	}

	@Override
	public List<Department> getDepartments() {
		return entityManager.createQuery("from Department order by departmentId", Department.class).getResultList();

	}

	@Override
	@Transactional
	public Department saveDepartment(Department department) {
		
		return entityManager.merge(department);
	
	
	}
	
	

}
