package com.project.fd.admin.ask.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminAskServiceImpl implements AdminAskService{

	@Autowired
	private AdminAskDAO askDao;
	
	@Override
	public List<AdminAskVO> selectAll() {
		return askDao.selectAll();
	}

	@Override
	public List<AdminAskVO> selectByAuthority(int no) {
		return askDao.selectByAuthority(no);
	}

	@Override
	public List<AdminAskVO> selectByReply(String flag) {
		return askDao.selectByReply(flag);
	}

	@Override
	public int insertAskReply(AdminAskVO askVo) {
		return askDao.insertAskReply(askVo);
	}

	@Override
	public int updateAskReply(AdminAskVO askVo) {
		return askDao.updateAskReply(askVo);
	}

	@Override
	public int deleteAskReply(AdminAskVO askVo) {
		return askDao.deleteAskReply(askVo);
	}

	@Override
	public AdminAskVO selectByNo(int no) {
		return askDao.selectByNo(no);
	}

}
