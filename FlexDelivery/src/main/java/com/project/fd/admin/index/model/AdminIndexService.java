package com.project.fd.admin.index.model;

import java.util.List;
import java.util.Map;

public interface AdminIndexService {
	//리뷰신고
	int selectNewReview();

	//광고신청
	int selectNewAd();

	//사업자 승인
	int selectNewRegister();
	
	//점포 승인
	int selectNewStore();
	
	//점포 변경
	int selectChangeStore();
}
