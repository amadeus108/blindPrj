package com.blindproject.blind.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.blindproject.blind.dao.RecruitNoticeDao;
import com.blindproject.blind.entity.RecruitNotice;

@Repository
public class MybatisRecruitNoticeDao implements RecruitNoticeDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertRecruitNotice(RecruitNotice recruitNotice) {
		
		RecruitNoticeDao recruitNoticeDao = sqlSession.getMapper(RecruitNoticeDao.class);
		
		return recruitNoticeDao.insertRecruitNotice(recruitNotice);
	}

	@Override
	public int updateRecruitNotice(RecruitNotice recruitNotice) {
		
		RecruitNoticeDao recruitNoticeDao = sqlSession.getMapper(RecruitNoticeDao.class);
		
		return recruitNoticeDao.updateRecruitNotice(recruitNotice);
	}

	@Override
	public int deleteRecruitNotice(int id) {
		
		RecruitNoticeDao recruitNoticeDao = sqlSession.getMapper(RecruitNoticeDao.class);
		
		return recruitNoticeDao.deleteRecruitNotice(id);
	}

	@Override
	public RecruitNotice getRecruitNotice(int id) {
		
		RecruitNoticeDao recruitNoticeDao = sqlSession.getMapper(RecruitNoticeDao.class);
		
		return recruitNoticeDao.getRecruitNotice(id);
	}

	@Override
	public List<RecruitNotice> getRecruitNoticeList() {
	
		RecruitNoticeDao recruitNoticeDao = sqlSession.getMapper(RecruitNoticeDao.class);
		
		return recruitNoticeDao.getRecruitNoticeList();
	}

	
	@Override
	public List<RecruitNotice> getRecruitNoticeList(String query) {
		
		RecruitNoticeDao recruitNoticeDao = sqlSession.getMapper(RecruitNoticeDao.class);
		
		return recruitNoticeDao.getRecruitNoticeList(query);
	}
	
	@Override
	public List<RecruitNotice> getRecruitNoticeList(String query, int page) {
		
		RecruitNoticeDao recruitNoticeDao = sqlSession.getMapper(RecruitNoticeDao.class);
		
		return recruitNoticeDao.getRecruitNoticeList(query, page);
	}
	
	@Override
	public int countArticle(String query) {
		
		RecruitNoticeDao recruitNoticeDao = sqlSession.getMapper(RecruitNoticeDao.class);
		
		return recruitNoticeDao.countArticle(query);
	}

}
