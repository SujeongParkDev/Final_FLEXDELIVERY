package com.project.fd.admin.temporary.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminTemporaryServiceImpl implements AdminTemporaryService{
	@Autowired
	AdminTemporaryDAO temporaryDao;
	

	@Override
	public List<AdminTemporaryVO> approvalList() {
		return temporaryDao.approvalList();
	}


	@Override
	public AdminTemporaryVO approvalDetail(int no) {
		return temporaryDao.approvalDetail(no);
	}



}
