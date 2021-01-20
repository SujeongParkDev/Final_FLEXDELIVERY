package com.project.fd.owner.reviewcomment.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OwnerReivewCommentServiceImpl implements OwnerReivewCommentService{

	@Autowired private OwnerReivewCommentDAO ownerReviewCommentDao;
}
