package com.nav.autocomp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.nav.autocomp.domain.Employee;

@Controller
public class AjaxController {
	List<Employee> data = new ArrayList<Employee>();
	 
	AjaxController() {
		// init data for testing
		data.add(new Employee(1, "John Doe"));
		data.add(new Employee(2, "John"));
		data.add(new Employee(2, "John1"));
		data.add(new Employee(2, "Johny"));
		data.add(new Employee(3, "Tony"));
		data.add(new Employee(4, "Sony"));
		data.add(new Employee(5, "Pony"));
		data.add(new Employee(6, "shython"));
		data.add(new Employee(7, "fug-it"));
		data.add(new Employee(8, "java"));
 
	}
 
	@RequestMapping(value = "/autoComp", method = RequestMethod.GET)
	public ModelAndView getPages() {
		ModelAndView model = new ModelAndView("autoCom");
		return model;
	}
 
	@RequestMapping(value = "/getEmployees", method = RequestMethod.POST, produces = "application/json")
	public  @ResponseBody List<Employee> getEmployees(@RequestParam String term, HttpServletResponse response) {
		return simulateSearchResult(term);
 
	}
 /**
  * 	@RequestMapping(value = "/getEmployees", method = RequestMethod.POST)
	public void getEmployees(@RequestParam String term, HttpServletResponse response) {
		System.out.println("Term entered is");
		try {
			response.setContentType("application/json");
			List al = new ArrayList();
			al.add("John D");
			al.add("Johnny");
			al.add("John");
			String g = new Gson().toJson(simulateSearchResult(term));
//			String g = new Gson().toJson(al);
			response.getWriter().write(g);
		} catch (IOException e) {
			e.printStackTrace();
		}
 
	}
 
  * @param empName
  * @return
  */
	private List<Employee> simulateSearchResult(String empName) {
 
		List<Employee> result = new ArrayList<Employee>();
 
		// iterate a list and filter by tagName
		for (Employee emp : data) {
			if (emp.getEmpName().contains(empName)) {
				result.add(emp);
			}
		}
 
		return result;
	}
 
}
