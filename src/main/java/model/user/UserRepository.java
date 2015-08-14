package model.user;

public interface UserRepository
{
	public User findUserByLoginMailAddress(String LoginMailAddress);
}
