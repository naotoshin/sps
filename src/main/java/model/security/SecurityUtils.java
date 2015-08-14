package model.security;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

public class SecurityUtils
{

	public static String getUserName()
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if(authentication == null)
		{
			return null;
		}
		Object principal = authentication.getPrincipal();
		if(principal instanceof UserDetails)
		{
			return ((UserDetails) principal).getUsername();
		}
		return (String)principal.toString();
	}
}
