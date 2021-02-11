package com.project.fd.member.review.model;

import java.util.List;
import java.util.Map;

public interface MemberReviewService {
	List<MemberReviewVO> selectStoreReview(Map<String, Object> map);
	boolean reviewChk(int memberNo);
	List<Map<String,Object>> orderListForReview(int memberNo);
	int reviewWrite(MemberReviewVO vo);
	int deleteReview(int reviewNo);
	int selectStoreNoByReview(int reviewNo);
	int reviewLike(int reviewNo);
	List<MemberReviewCommentVO> selectReviewComment(int StoreNo);
	List<MemberReviewVO> myReviewList(int memberNo);
}
