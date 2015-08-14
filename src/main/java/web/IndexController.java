package web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/")
@Controller
public class IndexController {

	@RequestMapping("")
	public String index(Model model) {
		System.out.println("test1");
		return "index";
	}

}
