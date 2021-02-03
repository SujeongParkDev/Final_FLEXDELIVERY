package com.project.fd.admin.stores.model;

import java.util.List;

import com.project.fd.owner.store.model.OwnerTemporaryVO;

public interface AdminStoresDAO {
	
	public List<AdminStoresVO> adminApprovalList();
	public AdminStoresVO adminApprovalDetail(long no);
	public int adminApprovalAgree(long no);
	public int adminApprovalDeny(long no);
}
