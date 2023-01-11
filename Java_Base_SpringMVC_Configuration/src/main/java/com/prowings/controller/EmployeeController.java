package com.prowings.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.prowings.model.Employee;
import com.prowings.service.EmployeeService;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeService employeeService;

	@RequestMapping(value = "/createNewEmployee", method = RequestMethod.POST)
	public String createEmployee(@ModelAttribute("employee") Employee employee) {
		try {
			employeeService.createEmployee(employee);
		} catch (Exception e) {
			System.out.println("sjhjkhj");
		}
		return "employeeView";

	}

	@RequestMapping(value = "/updateEmployee", method = RequestMethod.POST)
	public String updateEmployee(@ModelAttribute("employee") Employee employee) {
		try {
			employeeService.updateEmployee(employee);
		} catch (Exception e) {
			System.out.println("sjhjkhj");
		}
		return "updateEmployeeView";

	}

	@RequestMapping(value = "/deleteEmployee", method = RequestMethod.POST)
	public String deleteEmployee(@ModelAttribute("id") int id) {
		try {
			employeeService.deleteEmployee(id);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("gsdfsdhvsdh");
		}
		return "deleteEmployeeView";
	}

	@RequestMapping(value = "/readEmployee", method = RequestMethod.POST)
	public ModelAndView readEmployee(@ModelAttribute("id") int id) {
		Employee e = employeeService.readEmployee(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject(e);
		mv.setViewName("viewEmployee");
		return mv;

	}

	

}
