package com.project.fd.owner.reviewcomment.model;

import java.util.List;
import java.util.Map;

public interface OwnerReivewCommentDAO {
	 int insertComm(OwnerReviewCommentVO vo);
	 List<Map<String, Object>> selectReView(OwnerReviewSearchVO searchVo);
	 int getTotalRecord(OwnerReviewSearchVO searchVo);
	 int deleteComm(int reviewNo);
	 int updateComm(OwnerReviewCommentVO vo);
	 OwnerReviewCommentVO selectByNo(int reviewNo);
}
