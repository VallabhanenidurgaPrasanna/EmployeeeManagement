package com.bitlabs.EmployeController;

import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bitlabs.EmployeDao.MyDao;
import com.bitlabs.EmployeModel.Employer;



@Controller
public class MyController {

	@Autowired
	private MyDao dao;

	@RequestMapping("/home")
	public String home() {

		return "index";
	}

	@RequestMapping("/addEmploye")
	public String AddEmploye(@ModelAttribute Employer employe, Model model) {
		this.dao.addEmploye(employe);
		return "success";
	}

	@RequestMapping("/getAll")
	public String getAll(Model model) {
		List<Employer> list = this.dao.getAll();
		model.addAttribute("employes", list);
		return "allEmployes";

	}
	
	@RequestMapping("/getById")
	public String getById(@RequestParam("id") int id,Model model) {
		Employer emp=this.dao.getById(id);
		model.addAttribute("employe1",emp);
		return "getemploye";
		
	}
	
	@RequestMapping("/getbyid")
	public String getproduct() {
		return "getbyid";
	}
	

	@RequestMapping("/delete/{id}")
	public String getAll(@PathVariable("id") int id) {
		this.dao.delete(id);
		return "success";
	}

	@RequestMapping("/update/{id}")
	public String getAll(@PathVariable("id") int id, Model model) {
		Employer employe = this.dao.getById(id);
		model.addAttribute("employes", employe);
		return "index1";
	}
}
