package net.nguyenlam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	@RequestMapping(value= "/test")
	public String tt(Model model) {
		return "test";
	}
}
