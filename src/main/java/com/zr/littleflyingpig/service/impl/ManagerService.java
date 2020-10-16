package com.zr.littleflyingpig.service.impl;

import com.zr.littleflyingpig.dao.impl.ManagerDao;
import com.zr.littleflyingpig.pojo.Manager;
import com.zr.littleflyingpig.service.IManagerService;

public class ManagerService implements IManagerService{

	private ManagerDao  dao = new ManagerDao();
	
	@Override
	public Manager login(String m_name, String m_password) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateManager(Manager manager) {
		// TODO Auto-generated method stub
		return false;
	}

}
