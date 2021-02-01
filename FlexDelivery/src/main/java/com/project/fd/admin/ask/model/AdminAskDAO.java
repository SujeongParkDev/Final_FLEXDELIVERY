package com.project.fd.admin.ask.model;

import java.util.List;

public interface AdminAskDAO {

	List<AdminAskVO> selectAll();

	List<AdminAskVO> selectByAuthority(int no);

	List<AdminAskVO> selectByReply(String flag);

	int insertAskReply(AdminAskVO askVo);

	int updateAskReply(AdminAskVO askVo);

	int deleteAskReply(AdminAskVO askVo);

	AdminAskVO selectByNo(int no);

}
