package com.zr.xiaofeizhu.service.impl;

import com.zr.xiaofeizhu.dao.impl.ManagerDao;
import com.zr.xiaofeizhu.pojo.Manager;
import com.zr.xiaofeizhu.service.IManagerService;

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
