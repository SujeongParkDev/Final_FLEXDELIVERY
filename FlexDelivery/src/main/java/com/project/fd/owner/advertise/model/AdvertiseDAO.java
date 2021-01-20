package com.project.fd.owner.advertise.model;

import java.util.List;

public interface AdvertiseDAO {
	public List<AdvertiseAllVO> selectAdvertieseView(int storeNo);
}
