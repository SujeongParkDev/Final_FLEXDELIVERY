package com.project.fd.owner.ask.model;

import java.util.List;

public interface OwnerAskService {
	int insertASK(OwnerAskVO ownerAskVo);
	List<OwnerAskVO> selectAllAsk(OwnerAskSearchVO searchVo);
	int selectTotalRecord(OwnerAskSearchVO searchVo);
	int deleteAsk(int askNo);
}
