package com.project.fd.admin.stores.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.fd.owner.store.model.OwnerTemporaryVO;

@Service
public class AdminStoresServiceImpl implements AdminStoresService{
	
	@Autowired
	AdminStoresDAO adminStoresDao;

	@Override
	public List<AdminStoresVO> adminApprovalList() {
		return adminStoresDao.adminApprovalList();
	}

	@Override
	public AdminStoresVO adminApprovalDetail(long no) {	
		return adminStoresDao.adminApprovalDetail(no);
	}

	@Override
	public int adminApprovalAgree(long no) {
		return adminStoresDao.adminApprovalAgree(no);
	}

	@Override
	public int adminApprovalDeny(long no) {
		return adminStoresDao.adminApprovalDeny(no);
	}

	@Override
	public int adminInitContent(long no) {
		// TODO Auto-generated method stub
		return adminStoresDao.adminInitContent(no);
	}
}
