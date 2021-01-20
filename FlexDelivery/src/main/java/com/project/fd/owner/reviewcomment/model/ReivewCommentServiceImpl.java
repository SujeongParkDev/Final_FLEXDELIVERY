package com.project.fd.owner.reviewcomment.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReivewCommentServiceImpl implements ReivewCommentService{

	@Autowired private ReivewCommentDAO reviewCommentDao;
}
