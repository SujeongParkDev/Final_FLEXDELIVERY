package com.project.fd.admin.faq.model;

import java.util.List;

public interface AdminFaqDAO {

	List<AdminFaqVO> selectAll();

	List<AdminFaqAllViewVO> selectAll2();

	int insertFaq(AdminFaqVO faqVo);

	int updateFaq(AdminFaqVO faqVo);

	int deleteFaq(int no);

	List<AdminFaqVO> selectFor(int categoryNo);

	List<AdminFaqAllViewVO> selectFor2(int categoryNo);


}
