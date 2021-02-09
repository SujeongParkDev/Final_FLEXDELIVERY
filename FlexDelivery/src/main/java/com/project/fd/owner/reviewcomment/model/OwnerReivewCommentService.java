package com.project.fd.owner.reviewcomment.model;

import java.util.List;
import java.util.Map;

public interface OwnerReivewCommentService {
	public int insertComm(OwnerReviewCommentVO vo);
	public  List<Map<String, Object>> selectReView(OwnerReviewSearchVO searchVo);
	public int getTotalRecord(OwnerReviewSearchVO searchVo);
	public int deleteComm(int reviewNo);
	public int updateComm(OwnerReviewCommentVO vo);
	public  OwnerReviewCommentVO selectByNo(int reviewNo);
	
	public List<Map<String, Object>> selectNocomment(OwnerReviewSearchVO searchVo);
	 int NocmtTotalRecord(OwnerReviewSearchVO searchVo);
	 
	 public List<Map<String, Object>> selectblockcmt(OwnerReviewSearchVO searchVo);
	 int blockTotalRecord(OwnerReviewSearchVO searchVo);

	 public List<Map<String, Object>> selectAll(int storeNo);
}
