package com.sugang.exchange;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ExchangeController {
	
	@Autowired
	ExchangeService exchangeService;
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String exchangeList(Model model) {
		model.addAttribute("list", exchangeService.getExchangeList());
		return "list";
	}
	
	@RequestMapping(value="/add", method = RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	
	@RequestMapping(value="/addok", method = RequestMethod.POST)
	public String addPostOK(ExchangeVO vo) {
		if(exchangeService.insertExchange(vo) == 0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공적!!");
		return "redirect:list";
	}
	
	@RequestMapping(value="/details/{id}", method = RequestMethod.GET)
	public String viewPost(@PathVariable("id") int id, Model model) {
		ExchangeVO exchangeVO = exchangeService.getExchange(id);
		model.addAttribute("u", exchangeVO);
		return "view";
	}
	
	@RequestMapping(value="/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		ExchangeVO exchangeVO = exchangeService.getExchange(id);
		model.addAttribute("u", exchangeVO);
		return "editform";
	}
	
	@RequestMapping(value="/editok", method = RequestMethod.POST)
	public String editPostOK(ExchangeVO vo) {
		if(exchangeService.updateExchange(vo) == 0)
			System.out.println("데이터 수정 실패");
		else
			System.out.println("데이터 수정 성공적!!");
		return "redirect:list";
	}
	
	@RequestMapping(value="/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOK(@PathVariable("id") int id) {
		if(exchangeService.deleteExchange(id) == 0)
			System.out.println("데이터 삭제 실패");
		else
			System.out.println("데이터 삭제 성공적!!");
		return "redirect:../list";
	}
	
	
	/*
	 * @RequestMapping(value="/verify/{id}", method = RequestMethod.GET) public
	 * String verifyUser(@PathVariable("id") int id, Model model) { return
	 * "redirect:verify"; }
	 */
	
} 	
