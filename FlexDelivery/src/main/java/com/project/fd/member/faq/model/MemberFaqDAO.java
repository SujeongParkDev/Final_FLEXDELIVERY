package com.project.fd.member.faq.model;

import java.util.List;

public interface MemberFaqDAO {
	public List<MemberFaqVo> selectFaq(int fCategoryNo);
	
}
