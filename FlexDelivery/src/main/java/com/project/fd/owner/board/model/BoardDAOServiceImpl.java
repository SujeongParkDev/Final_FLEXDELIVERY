package com.project.fd.owner.board.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardDAOServiceImpl implements BoardService{
	
	@Autowired
	BoardDAO boardDao;
}
