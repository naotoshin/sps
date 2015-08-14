package service.security;

import model.security.AuthenticatedUserDetails;
import model.user.User;
import model.user.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;


@Service("authenticatedUserDetailService")
public class AuthenticatedUserDetailService implements UserDetailsService{

	@Autowired
	private UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String loginMailAddress)
			throws UsernameNotFoundException {

		User user = this.userRepository.findUserByLoginMailAddress(loginMailAddress);

		return new AuthenticatedUserDetails(user);
	}

}
