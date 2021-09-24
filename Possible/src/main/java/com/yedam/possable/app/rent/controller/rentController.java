package com.yedam.possable.app.rent.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/car/*")
public class rentController {

	@GetMapping("/list")
	public String list() {
		return "car/list";
	}
}
