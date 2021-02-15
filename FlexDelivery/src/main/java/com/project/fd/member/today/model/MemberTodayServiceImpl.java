package com.project.fd.member.today.model;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberTodayServiceImpl implements MemberTodayService{

	@Autowired
	private MemberTodayDAO memberTodayDao;
	
	public Map<String, Object> selectMCategory(){
		return memberTodayDao.selectMCategory();
	}
	
}
