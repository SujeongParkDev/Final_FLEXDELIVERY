package com.project.fd.owner.order.model;

import java.util.List;
import java.util.Map;

import com.project.fd.owner.advertise.model.OwnerAdvertiseSearchVO;

public interface OwnerOrderDAO {
	public int selectTotalRecord(Map<String, Object> map);
	public List<Map<String, Object>> selectOrderAllView(Map<String, Object> map);
	public Map<String, Object> selectMenuNoByOrderNo(int ordersNo);
	public int selectCountByOrderNo(int ordersNo);
	
}
