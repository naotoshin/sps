package model.user;

import java.io.Serializable;

public class User implements Serializable{


	private static final long serialVersionUID = 4557521830486441206L;

	private Integer id;

	private String loginMailAddress;

	private String password;

	public User()
	{

	}

	public User(String loginMailAddress, String password)
	{
		this.loginMailAddress = loginMailAddress;
		this.password = password;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLoginMailAddress() {
		return loginMailAddress;
	}

	public void setLoginMailAddress(String loginMailAddress) {
		this.loginMailAddress = loginMailAddress;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


}
