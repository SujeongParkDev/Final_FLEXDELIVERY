package com.project.fd.owner.reviewcomment.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OwnerReivewCommentServiceImpl implements OwnerReivewCommentService{

	@Autowired private OwnerReivewCommentDAO ownerReviewCommentDao;

	@Override
	public int insertComm(OwnerReviewCommentVO vo) {
		return ownerReviewCommentDao.insertComm(vo);
	}

	@Override
	public List<Map<String, Object>> selectReView(int storeNo) {
		return ownerReviewCommentDao.selectReView(storeNo);
	}

	@Override
	public List<Map<String, Object>> selectOptionView(int storeNo) {
		return ownerReviewCommentDao.selectOptionView(storeNo);
	}

	
}
