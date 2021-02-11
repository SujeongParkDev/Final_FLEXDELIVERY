package com.project.fd.member.review.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberReviewServiceImpl implements MemberReviewService{
	@Autowired MemberReviewDAO reviewDao;

	@Override
	public List<MemberReviewVO> selectStoreReview(Map<String, Object> map) {
		return reviewDao.selectStoreReview(map);
	}

	@Override
	public boolean reviewChk(int memberNo) {
		int cnt=reviewDao.reviewChk(memberNo);
		if(cnt>0) {
			return true;
		}
		return false;
	}

	@Override
	public List<Map<String, Object>> orderListForReview(int memberNo) {
		return reviewDao.orderListForReview(memberNo);
	}

	@Override
	public int reviewWrite(MemberReviewVO vo) {
		return reviewDao.reviewWrite(vo);
	}

	@Override
	public int deleteReview(int reviewNo) {
		return reviewDao.deleteReview(reviewNo);
	}

	@Override
	public int selectStoreNoByReview(int reviewNo) {
		return reviewDao.selectStoreNoByReview(reviewNo);
	}

	@Override
	public int reviewLike(int reviewNo) {
		return reviewDao.reviewLike(reviewNo);
	}

	@Override
	public List<MemberReviewCommentVO> selectReviewComment(int StoreNo) {
		return reviewDao.selectReviewComment(StoreNo);
	}

	@Override
	public List<MemberReviewVO> myReviewList(int memberNo) {
		return reviewDao.myReviewList(memberNo);
	}
	
	
	
}
