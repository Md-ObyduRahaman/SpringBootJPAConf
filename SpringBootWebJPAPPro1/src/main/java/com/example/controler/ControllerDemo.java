package com.example.controler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.bean.Student;
import com.example.implementation.StudentImpl;
import java.util.*;
@Controller
public class ControllerDemo 
{
	@Autowired
	private StudentImpl simpl;
														//Goto index page
	@RequestMapping("/")
	public String view() 
	{
		return "index";
	}
														//Goto insert Page
	@RequestMapping("/insert")
	public String view1()
	{
		return "insertPage";
	}
														//Save Record
	@RequestMapping("/add")
	public String view2(Student s, Model m)
	{
		simpl.save(s);
		m.addAttribute("msg", "Record inserted!");
		return "insertPage";
	}
														//Display Record
	@RequestMapping("/display")
	public String view3(Model m) 
	{
		List list = simpl.findAll();
		if(!list.isEmpty())
		{
			m.addAttribute("data", list);
			m.addAttribute("result",simpl.count());
		}
		else
		{
			m.addAttribute("msg", "Record not found!");
		}
		
		return "displayPage";
	}
														//Update Record
	@RequestMapping("/update")
	public String view4(Student s, Model m)
	{
		simpl.findById(s.getId());
		simpl.save(s);
		m.addAttribute("data", simpl.findAll());
		m.addAttribute("result",simpl.count());
		m.addAttribute("msgs", "Record update Successfully..");
		return "displayPage";
	}
														//Delete Record
	@RequestMapping("/delete")
	public String view5(Student s, Model m)
	{
		simpl.deleteById(s.getId());
		m.addAttribute("data", simpl.findAll());
		m.addAttribute("result",simpl.count());
		m.addAttribute("msgss", "Record delete Successfully..");
		return "displayPage";
	}
														//Goto Search Page
	@RequestMapping("/search")
	public String view6()
	{
		return "searchPage";
	}
														//Search Record
	@RequestMapping("/find")
	public String view7(String roll, String name, String address, String age, Model m)
	{
		List<Student> list = new ArrayList<Student>();
		if(!roll.isEmpty())
		{
			int r = Integer.valueOf(roll);
			list  = simpl.findByRoll(r);
		}
		else if(!name.isEmpty())
		{
			list = simpl.findByName(name);
		}
		else if(!address.isEmpty())
		{
			list = simpl.findByAddress(address);
		}
		else if(!age.isEmpty())
		{
			int ages = Integer.valueOf(age);
			list = simpl.findByAge(ages);
		}
		
		if(!list.isEmpty())
		{
			m.addAttribute("data", list);
		}
		else
		{
			m.addAttribute("msg", "Oops! record not found!");
		}
		return "searchPage";
	}
	
																//Delete All Record
	@RequestMapping("/deleteall")
	public String view8(Model m)
	{
		List list = simpl.findAll();
		if(!list.isEmpty())
		{
			simpl.deleteAll();
			m.addAttribute("msg", "All records deleted!");
		}
		else {
			m.addAttribute("msgs", "Sorry record not found!");
		}
		return "index";
	}
}
