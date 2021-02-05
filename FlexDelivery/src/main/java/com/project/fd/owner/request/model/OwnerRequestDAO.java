package com.project.fd.owner.request.model;

import java.util.List;
import java.util.Map;

import com.project.fd.owner.advertise.model.OwnerStoreAdVO;
import com.project.fd.owner.ownerregister.model.OwnerRegisterVO;

public interface OwnerRequestDAO {
	public List<Map<String, Object>> selectRegi(int ownerNo);
	public List<Map<String, Object>> selectStore(int ownerNo);
	public List<Map<String, Object>>  selectAd(int ownerNo);
	public List<Map<String, Object>> selectTemp(int ownerNo);
	
	public OwnerRegisterVO selectRegiVo(long oRegisterNo);
}
