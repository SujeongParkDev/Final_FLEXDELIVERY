package com.project.fd.owner.reviewcomment.model;

import java.util.List;
import java.util.Map;

public interface OwnerReivewCommentDAO {
	 int insertComm(OwnerReviewCommentVO vo);
	 List<Map<String, Object>> selectReView(OwnerReviewSearchVO searchVo);
	 int getTotalRecord(OwnerReviewSearchVO searchVo);
	 
}
