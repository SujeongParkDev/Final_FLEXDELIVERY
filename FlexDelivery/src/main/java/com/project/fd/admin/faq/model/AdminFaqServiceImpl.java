package com.project.fd.admin.faq.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminFaqServiceImpl implements AdminFaqService {

	@Autowired
	private AdminFaqDAO faqDao;
	
	@Override
	public List<AdminFaqVO> selectAll() {
		return faqDao.selectAll();
	}

	@Override
	public List<AdminFaqAllViewVO> selectAll2() {
		return faqDao.selectAll2();
	}

	@Override
	public int insertFaq(AdminFaqVO faqVo) {
		return faqDao.insertFaq(faqVo);
	}

	@Override
	public int updateFaq(AdminFaqVO faqVo) {
		return faqDao.updateFaq(faqVo);
	}

	@Override
	public int deleteFaq(int no) {
		return faqDao.deleteFaq(no);
	}

}
