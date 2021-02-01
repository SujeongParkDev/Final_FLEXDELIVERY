package com.project.fd.owner.order.model;

import java.util.List;
import java.util.Map;

import com.project.fd.owner.advertise.model.OwnerAdvertiseSearchVO;

public interface OwnerOrderService {
	public static final int OSTATUSNO_REQUEST=1;
	public static final int OSTATUSNO_ORDERING=2;
	public static final int OSTATUSNO_DELIVERYING=3;
	public static final int OSTATUSNO_DELIVERYSUCCESS=4;
	
	public int selectTotalRecord(Map<String, Object> map);
	public List<Map<String, Object>> selectOrderAllView(Map<String, Object> map);
	public Map<String, Object> selectMenuNoByOrderNo(int ordersNo);
	public int selectCountByOrderNo(int ordersNo);
	public Map<String, Object> getTitle(int ordersNo);
}
