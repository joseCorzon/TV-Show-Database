package com.codingdojo.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.models.TvShow;
import com.codingdojo.services.ShowService;
import com.codingdojo.services.UserService;



@Controller
public class ShowController
{
	@Autowired
	private ShowService showService;
	@Autowired
	private UserService us;
	
	public ShowController
	(
		ShowService showService,
		UserService userService
	)
	{
		this.showService=showService;
		this.us=userService;
	}
	
	@GetMapping("/shows")
	public String show_all(Model model,HttpSession session)
	{
		if(!us.IsLoggedIn(session)) return "redirect:/";
		//query your db based on user_id (session) and then put that in jsp
		model.addAttribute("user", us.GetUser(session));
		
		model.addAttribute("shows",showService.ReadAll());
		return "show_all";
	}
	
	@GetMapping("/shows/new")
	public String show_new(Model model,HttpSession session)
	{
		if(!us.IsLoggedIn(session)) return "redirect:/";
		model.addAttribute("show",new TvShow());
		model.addAttribute("shows",showService.ReadAll());
		model.addAttribute("user",us.ReadAll());
		return "show_new";
	}
	
	@PostMapping("/shows/new")
	public String show_create
	(
		@Valid @ModelAttribute("show") TvShow show,
		BindingResult res,
		Model model,
		HttpSession session
	)
	{
		if(!us.IsLoggedIn(session)) return "redirect:/";
		if(res.hasErrors())
		{
			model.addAttribute("user", us.GetUser(session));
			model.addAttribute("shows",showService.ReadAll());
			return "show_new";	
		}
		//get book info, and set userid to logged in user id
		//then save that
		show.setUser(us.GetUser(session));
		showService.Create(show);
		return "redirect:/shows";
	}
	
	@GetMapping("/shows/{id}")
	public String show_one
	(
		@PathVariable("id") Long id,
		Model model,
		HttpSession session
	)
	{
		if(!us.IsLoggedIn(session)) return "redirect:/";		
		model.addAttribute("show",showService.ReadOne(id));
		return "show_one";
	}
	
	@GetMapping("/shows/{id}/edit")
	public String show_edit
	(
		@PathVariable("id") Long id,
		Model model,
		HttpSession session
	)
	{
		if(!us.IsLoggedIn(session)) return "redirect:/";		
		TvShow show=showService.ReadOne(id);
		if(show==null) return "redirect:/";
		model.addAttribute("show",showService.ReadOne(id));
		return "show_edit";
	}	
	
	@PostMapping("/shows/{id}/edit")
	public String book_update
	(
		@Valid @ModelAttribute("show") TvShow show,
		BindingResult res,
		Model model,
		@PathVariable("id") Long id,
		HttpSession session
	)
	{		
		if(!us.IsLoggedIn(session)) return "redirect:/";		
		if(res.hasErrors())
		{
			System.out.println("HAS ERRORS");
			return "show_edit";
		}
		showService.Update(show);
		return "redirect:/shows";
	}	
	
	@PostMapping("/shows/{id}/delete")
	public String show_delete
	(
		@PathVariable("id") Long id,
		HttpSession session
	)
	{
		if(!us.IsLoggedIn(session)) return "redirect:/";		
		showService.Delete(id);
		return "redirect:/shows";
	}
};