package com.blindproject.blind.dao;

import java.util.List;

import com.blindproject.blind.entity.RecruitNotice;

public interface RecruitNoticeDao {
	
	public int insertRecruitNotice(RecruitNotice recruitNotice);

	public int updateRecruitNotice(RecruitNotice recruitNotice);
	
	public int deleteRecruitNotice(int id);
	
	public RecruitNotice getRecruitNotice(int id);
	
	public List<RecruitNotice> getRecruitNoticeList();
	
	public List<RecruitNotice> getRecruitNoticeList(String query);
	
	public List<RecruitNotice> getRecruitNoticeList(String query, int page);

	public int countArticle(String query);
}
