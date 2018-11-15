package com.blindproject.blind.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blindproject.blind.dao.CompanyDao;
import com.blindproject.blind.dao.RecruitDivisionDao;
import com.blindproject.blind.dao.RecruitNoticeDao;
import com.blindproject.blind.dao.TypeDao;
import com.blindproject.blind.entity.Company;
import com.blindproject.blind.entity.RecruitDivision;
import com.blindproject.blind.entity.RecruitNotice;
import com.blindproject.blind.entity.Type;

@Service
public class EmployeeService {
	
	@Autowired
	private CompanyDao companyDao;
	
	@Autowired
	private RecruitNoticeDao recruitNoticeDao;
	
	@Autowired
	private RecruitDivisionDao recruitDivisionDao;
	
	@Autowired
	private TypeDao typeDao;
	
	//회사명 가져오기
	public List<Company> getCompanyList(){
		
		return companyDao.getCompanyList();
	}
	
	//채용구분(인턴, 계약직, 정규직) 가져오기
	public List<RecruitDivision> getRecruitDivisionList(){
		
		return recruitDivisionDao.getRecruitDivisionList();
	}
	
	//채용공고 등록
	public int insertRecruitNotice(RecruitNotice recruitNotice) {
		
		return recruitNoticeDao.insertRecruitNotice(recruitNotice);
	}

	//채용공고 수정
	public int updateRecruitNotice(RecruitNotice recruitNotice) {
		
		return recruitNoticeDao.updateRecruitNotice(recruitNotice);
	}

	//채용공고 삭제(아직 구현안함)
	public int deleteRecruitNotice(int id) {
		
		return 0;
	}

	//채용공고 정보 가져오기(detail 페이지)
	public RecruitNotice getRecruitNotice(int id) {
		
		return recruitNoticeDao.getRecruitNotice(id);
	}
	
	//채용공고 리스트 가져오기(index, 게시판)
	public List<RecruitNotice> getRecruitNoticeList(){
		
		return recruitNoticeDao.getRecruitNoticeList();
	}

	public List<RecruitNotice> getRecruitNoticeList(String query){
		
		return recruitNoticeDao.getRecruitNoticeList(query);
	}

	public List<RecruitNotice> getRecruitNoticeList(String query, int page){
		
		//한 페이지에 게시글 몇개 나타낼지
		int pageNum;
		pageNum = (page-1)*5;
		
		return recruitNoticeDao.getRecruitNoticeList(query, pageNum);
	}
	
	//게시글 수 카운트
	public int countArticle(String query) {
		
		return recruitNoticeDao.countArticle(query);
	}
	
	//전형구분 가져오기
	public List<Type> getTypeList(){
		
		return typeDao.getTypeList();
	}
}
