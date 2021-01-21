package com.project.fd.owner.ownerregister.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OwnerRegisterServiceImpl implements OwnerRegisterService{

	@Autowired private OwnerRegisterDAO ownerRegisterDao;

	@Override
	public int insertRegister(OwnerRegisterVO vo) {
		return ownerRegisterDao.insertRegister(vo);
	}

	

}
