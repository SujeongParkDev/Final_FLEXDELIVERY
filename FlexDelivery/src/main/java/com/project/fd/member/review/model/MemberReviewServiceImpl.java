package com.project.fd.member.review.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberReviewServiceImpl implements MemberReviewService{
	@Autowired MemberReviewDAO reviewDao;
	
}
