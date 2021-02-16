package com.project.fd.member.ask.model;

import java.util.List;

public interface MemberAskService {
	public int askWrite(MemberAskVO vo);
	public List<MemberAskVO> selectICAsk(String askId);
}
