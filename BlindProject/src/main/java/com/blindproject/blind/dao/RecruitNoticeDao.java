package com.blindproject.blind.dao;

import java.util.List;

import com.blindproject.blind.entity.RecruitNotice;

public interface RecruitNoticeDao {
	
	public int insertRecruitNotice(RecruitNotice recruitNotice);

	public int updateRecruitNotice(RecruitNotice recruitNotice);
	
	public int deleteRecruitNotice(int id);
	
	RecruitNotice getRecruitNotice(int id);
	
	List<RecruitNotice> getRecruitNoticeList();
	
	List<RecruitNotice> getRecruitNoticeList(String query);
	
	List<RecruitNotice> getRecruitNoticeList(String query, int page);

}
