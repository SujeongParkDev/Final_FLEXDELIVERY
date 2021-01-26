package com.project.fd.owner.ask.model;

import java.util.List;

public interface OwnerAskDAO {
	int insertASK(OwnerAskVO ownerAskVo);
	List<OwnerAskVO> selectAllAsk(OwnerAskSearchVO searchVo);
	int selectTotalRecord(OwnerAskSearchVO searchVo);
}
