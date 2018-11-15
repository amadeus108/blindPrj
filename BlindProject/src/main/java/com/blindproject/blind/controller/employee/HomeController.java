package com.blindproject.blind.controller.employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blindproject.blind.entity.RecruitNotice;
import com.blindproject.blind.service.EmployeeService;

@Controller("employeeController")
@RequestMapping("/employee/")
public class HomeController {

	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("index")
	@Transactional
	public String index(Model model,
			@RequestParam(name="q", defaultValue="") String query,
			@RequestParam(name="p", defaultValue="1") int page) {

		// 채용공고 가져오기
		List<RecruitNotice> recruitNoticeList = employeeService.getRecruitNoticeList(query, page);

		model.addAttribute("recruitNoticeList", recruitNoticeList);
		
		// 게시글 수 카운트
		int countArticle = employeeService.countArticle(query);

		model.addAttribute("count", countArticle);
		
		//페이징
		
		return "employee.index";
	}

	// 채용공고 상세 페이지
	@GetMapping("detail")
	public String detail(Model model, @RequestParam("id") int id) {

		RecruitNotice recruitNoticeDetail = employeeService.getRecruitNotice(id);

		model.addAttribute("rnd", recruitNoticeDetail);

		return "employee.detail";
	}

}
