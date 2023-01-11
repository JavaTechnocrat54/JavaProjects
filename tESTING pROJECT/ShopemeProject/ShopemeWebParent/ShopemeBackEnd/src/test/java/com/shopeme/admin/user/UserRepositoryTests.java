package com.shopeme.admin.user;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.isNotNull;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.test.annotation.Rollback;

import com.shopeme.common.entity.Role;
import com.shopeme.common.entity.User;

@DataJpaTest
@AutoConfigureTestDatabase(replace = Replace.NONE)
@Rollback(false)
public class UserRepositoryTests {
	@Autowired
	private UserRepository repo;

	@Autowired
	private TestEntityManager entityManager;

	@Test
	public void testCreateUserWithOneRole() {
		Role roleAdmin = entityManager.find(Role.class, 1);
		User name = new User("prajwal@gmail.com", "prajwal1234", "Prajwal", "Chandra");
		name.addRole(roleAdmin);
		User saveUser=repo.save(name);
		assertThat(saveUser.getId()).isGreaterThan(0);

	}
	@Test
	public void testCreateUserWithTwoRole() {
		User userPrajwal=new User("prajwalChnayak@gmail.com","prajwal","Chandra","Nayak");
		Role roleEditor=new Role(3);
		Role roleAssistant=new Role(5);
		
		userPrajwal.addRole(roleEditor);
		userPrajwal.addRole(roleAssistant);
		
		User savedUser=repo.save(userPrajwal);
		
		assertThat(savedUser.getId()).isGreaterThan(0);
		
	}
	
	@Test
	public void testListAllUser() {
	Iterable<User> listUser	=repo.findAll();
	listUser.forEach(user -> System.out.println(user));
	
		
	}
	@Test
	public void testGetUserById()
	{
		User userName=repo.findById(1).get();
		System.out.println(userName);
		assertThat(userName).isNotNull();
	}
	@Test
	public void testUdateUserDatails()
	{
		User username=repo.findById(1).get();
		username.setEnabled(true);
		username.setEmail("PrajwalChandraNayak@gmail.com");
		repo.save(username);
		
	}
	@Test
	public void testUpdateUserRole()
	{
		User username=repo.findById(4).get();
		Role roleEditor =new Role(3);
		Role RoleSales=new Role(2);
		username.getRoles().remove(roleEditor);
		username.addRole(RoleSales);
		repo.save(username);
	}
	@Test
	public void testDeleteUser() {
		Integer userId=6;
		repo.deleteById(userId);;
	}
	
	@Test
	public void testGetUserByEmail() {
		String email="kanna.allada@gmail.com";
	User user=	repo.getUserByEmail(email);
	System.out.println(assertThat(user).isNotNull());
	}
	@Test
	public void testGetUserByEmailfind() {
		String email="kanna.allada@gmail.com";
	User user=	repo.findByEmail(email);
	System.out.println(assertThat(user).isNotNull());
	}
	@Test
	public void testCuntById() {
		Integer id=45;
		Long cuntById=repo.countById(id);
		assertThat(cuntById).isNotNull().isGreaterThan(0);
	}
	
	@Test
	public void testDisbleUSer() {
		Integer id=9;
		repo.updateEnableStatus(id, false);
	}
	@Test
	public void testEnableUSer() {
		Integer id=9;
		repo.updateEnableStatus(id, true);
	}
	
	@Test
	public void testListFirstPage() {
		int pageNumber = 0;
		int pageSize = 4;

		Pageable pageable = PageRequest.of(pageNumber, pageSize);
		Page<User> page = repo.findAll(pageable);

		List<User> listUsers = page.getContent();

		listUsers.forEach(user -> System.out.println(user));

		assertThat(listUsers.size()).isEqualTo(pageSize);
	}
	@Test
	public void testSearchUsers() {
		String keyword = "Prajwal";

		int pageNumber = 0;
		int pageSize = 4;

		Pageable pageable = PageRequest.of(pageNumber, pageSize);
		Page<User> page = repo.findAll(keyword, pageable);

		List<User> listUsers = page.getContent();

		listUsers.forEach(user -> System.out.println(user));	

		assertThat(listUsers.size()).isGreaterThan(0);
	}
}
