package com.project.fd.owner.reviewcomment.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OwnerReivewCommentServiceImpl implements OwnerReivewCommentService{


	@Autowired private OwnerReivewCommentDAO ownerReviewCommentDao;

	@Override
	public int insertComm(OwnerReviewCommentVO vo) {
		return ownerReviewCommentDao.insertComm(vo);
	}

	@Override
	public List<Map<String, Object>> selectReView(OwnerReviewSearchVO searchVo) {
		return ownerReviewCommentDao.selectReView(searchVo);
	}

	@Override
	public int getTotalRecord(OwnerReviewSearchVO searchVo) {
		return ownerReviewCommentDao.getTotalRecord(searchVo);
	}

	@Override
	public int deleteComm(int reviewNo) {
		return ownerReviewCommentDao.deleteComm(reviewNo);
	}

	@Override
	public int updateComm(OwnerReviewCommentVO vo) {
		return ownerReviewCommentDao.updateComm(vo);
	}

	@Override
	public OwnerReviewCommentVO selectByNo(int reviewNo) {
		return ownerReviewCommentDao.selectByNo(reviewNo);
	}


	
}
