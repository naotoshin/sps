package dataaccess.user;

import model.user.User;
import model.user.UserRepository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userRepository")
public class UserDataAccess implements UserRepository
{
	@Autowired
	private SqlSession session;

	public User findUserByLoginMailAddress(String loginMailAddress)
	{
		try {
			User result = this.session.selectOne(this.getClass().getName() +".selectByLoginMailAddress", loginMailAddress);
			return result;

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("handle exception : " + e.getMessage());
			return null;
		}
	}

}
