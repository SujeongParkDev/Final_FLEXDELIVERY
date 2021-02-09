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
	 
	 public List<Map<String, Object>> selectNocomment(OwnerReviewSearchVO searchVo);
	 int NocmtTotalRecord(OwnerReviewSearchVO searchVo);
	 
	 public List<Map<String, Object>> selectblockcmt(OwnerReviewSearchVO searchVo);
	 int blockTotalRecord(OwnerReviewSearchVO searchVo);
	 List<Map<String, Object>> selectAll(int storeNo);
}
