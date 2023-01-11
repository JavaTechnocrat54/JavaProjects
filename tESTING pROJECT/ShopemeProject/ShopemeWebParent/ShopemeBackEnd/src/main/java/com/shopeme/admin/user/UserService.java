package com.shopeme.admin.user;

import java.util.List;
import java.util.NoSuchElementException;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.shopeme.common.entity.Role;
import com.shopeme.common.entity.User;

@Service
@Transactional
public class UserService {

	@Autowired
	private UserRepository userrepo;
	@Autowired
	private RoleRepository rolerepo;
	@Autowired
	private PasswordEncoder passwordEncoder;

	public List<User> listAll() {
		return (List<User>) userrepo.findAll();
	}

	public List<Role> listRoles() {
		return (List<Role>) rolerepo.findAll();
	}

	public User save(User user) {
		boolean isUpdatingUser=(user.getId() !=null);
		if(isUpdatingUser) {
			User existingUser=userrepo.findById(user.getId()).get();
			if(user.getPassword().isEmpty()) {
				user.setPassword(existingUser.getPassword());
			}else {
				encoderPassword(user);
			}
		}else {
		encoderPassword(user);
		}
	return	userrepo.save(user);

	}

	private void encoderPassword(User user) {
		String encodedPassword = passwordEncoder.encode(user.getPassword());
		user.setPassword(encodedPassword);
	}

	public boolean isEmailUnique(String email) {
		User userByEmail = userrepo.getUserByEmail(email);
		return userByEmail == null;
	}

	public User get(Integer id) throws UserNotFoundException {
		try {
		return userrepo.findById(id).get();
	   }catch (NoSuchElementException e) {
		throw new UserNotFoundException("Could Not find and User With ID"+id);
	}
	}
	public void delete(Integer id) throws UserNotFoundException {
		Long countById=userrepo.countById(id);
		if(countById ==null || countById ==0) {
			throw new UserNotFoundException("Could Not find and User With ID"+id);
		}
		userrepo.deleteById(id);
		
		
	}
	
	public void updateUserEnableStatus(Integer id,boolean enabled) {
		userrepo.updateEnableStatus(id, enabled);
	}
	
}
