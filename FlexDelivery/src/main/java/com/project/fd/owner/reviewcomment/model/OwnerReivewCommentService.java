package com.project.fd.owner.reviewcomment.model;

import java.util.List;
import java.util.Map;

public interface OwnerReivewCommentService {
	int insertComm(OwnerReviewCommentVO vo);
	 List<Map<String, Object>> selectReView(int storeNo);
	 List<Map<String, Object>> selectOptionView(int storeNo);
}
