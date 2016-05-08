package gapp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import gapp.model.Users;

import gapp.model.dao.UsersDao;

@Repository
public class UsersDaoImpl implements UsersDao {

	@PersistenceContext(type = PersistenceContextType.EXTENDED)
	private EntityManager entityManager;

	@Override
	@Transactional
	public Users getUser(Integer id) {
		return entityManager.find(Users.class, id);

	}

	@Override
	@Transactional
	public List<Users> getUsers() {
		return entityManager.createQuery("from Users order by id", Users.class).getResultList();
	}

	@Override
	@Transactional
	public Users saveUsers(Users users) {
		// TODO Auto-generated method stub
		return entityManager.merge(users);
	}

	
}
