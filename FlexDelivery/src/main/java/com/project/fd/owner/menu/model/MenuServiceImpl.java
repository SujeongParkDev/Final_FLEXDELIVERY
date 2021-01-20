package com.project.fd.owner.menu.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MenuServiceImpl implements  MenuService{
	@Autowired
	private MenuDAO menuDao;
}
