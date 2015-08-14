package web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/login")
public class LoginController {

	@RequestMapping("/formLogin")
	public String showLoginForm(Model model)
	{
		return "login/loginForm";
	}

	@RequestMapping(value = "/processLogin", method=RequestMethod.POST)
	public String processLogin(
			@RequestParam( "loginMailAddress" ) String loginMailAddress,
			@RequestParam( "password" ) String password,
			Model model)
	{
		return "index";
	}
}
