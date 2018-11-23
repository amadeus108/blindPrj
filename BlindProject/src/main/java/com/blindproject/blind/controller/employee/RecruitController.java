package com.blindproject.blind.controller.employee;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blindproject.blind.entity.Company;
import com.blindproject.blind.entity.RecruitDivision;
import com.blindproject.blind.entity.RecruitNotice;
import com.blindproject.blind.entity.Type;
import com.blindproject.blind.service.EmployeeService;

@Controller
@RequestMapping("/employee/")
public class RecruitController {

	@Autowired
	private EmployeeService employeeService;

	// 채용공고 등록 페이지
	@GetMapping("recruit")
	public String hire(Model model) {

		List<Company> companyList = employeeService.getCompanyList();

		List<RecruitDivision> recruitDivisionList = employeeService.getRecruitDivisionList();
		
		List<Type> typeList = employeeService.getTypeList();

		model.addAttribute("companyList", companyList);
		model.addAttribute("recruitDivisionList", recruitDivisionList);
		model.addAttribute("typeList", typeList);

		return "employee.recruit";
	}

	@PostMapping("recruit")
	public String hire(HttpServletRequest request) throws ParseException {

		RecruitNotice recruitNotice = new RecruitNotice();
		recruitNotice.setTitle(request.getParameter("title"));
		recruitNotice.setContents(request.getParameter("contents"));

		Date strDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("strDate"));
		Date endDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("endDate"));
		recruitNotice.setStrDate(strDate);
		recruitNotice.setEndDate(endDate);

		int rdid = Integer.parseInt(request.getParameter("recruitDivisionId"));
		recruitNotice.setRecruitDivisionId(rdid);

		int cid = Integer.parseInt(request.getParameter("companyId"));
		recruitNotice.setCompanyId(cid);
		
		int tid = Integer.parseInt(request.getParameter("typeId"));
		recruitNotice.setTypeId(tid);
		
		employeeService.insertRecruitNotice(recruitNotice);

		return "redirect:index";
	}

	// 채용공고 수정 페이지
	@GetMapping("edit")
	public String edit(Model model, 
			@RequestParam("id") int id) {

		RecruitNotice rn = employeeService.getRecruitNotice(id);

		model.addAttribute("rn", rn);

		List<Company> companyList = employeeService.getCompanyList();

		model.addAttribute("companyList", companyList);

		List<RecruitDivision> recruitDivisionList = employeeService.getRecruitDivisionList();

		model.addAttribute("recruitDivisionList", recruitDivisionList);
		
		List<Type> typeList = employeeService.getTypeList();
		model.addAttribute("typeList", typeList);
		
		return "employee.edit";
	}

	@PostMapping("edit")
	public String edit(HttpServletRequest request, 
			@RequestParam("id") int id) throws ParseException {

		RecruitNotice recruitNotice = employeeService.getRecruitNotice(id);
		recruitNotice.setTitle(request.getParameter("title"));
		recruitNotice.setContents(request.getParameter("contents"));

		Date strDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("strDate"));
		Date endDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("endDate"));
		recruitNotice.setStrDate(strDate);
		recruitNotice.setEndDate(endDate);

		int rdid = Integer.parseInt(request.getParameter("recruitDivisionId"));
		recruitNotice.setRecruitDivisionId(rdid);

		int cid = Integer.parseInt(request.getParameter("companyId"));
		recruitNotice.setCompanyId(cid);
		
		int tid = Integer.parseInt(request.getParameter("typeId"));
		recruitNotice.setTypeId(tid);
		
		employeeService.updateRecruitNotice(recruitNotice);
		
		return "redirect:detail?id="+id;
	}

}
