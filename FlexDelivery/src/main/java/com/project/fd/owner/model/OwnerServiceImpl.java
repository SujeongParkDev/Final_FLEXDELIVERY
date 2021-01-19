package com.project.fd.owner.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OwnerServiceImpl implements OwnerService {
	@Autowired
	private OwnerDAO ownerDao;
	
	@Override
	public int loginChk(String userid, String pwd) {
		int result=0;
		String dbPwd=ownerDao.selectPwd(userid);
		if(dbPwd==null || dbPwd.isEmpty()) {
			result=ID_NONE;
		}else{
			if (dbPwd.equals(pwd)) {
				result=LOGIN_OK;				
			}else {
				result=PWD_DISAGREE;
			}
		}
		return result;
	}

	@Override
	public OwnerVO selectOwner(String userid) {
		return ownerDao.selectOwner(userid);
	}
	
}
