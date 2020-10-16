package com.zr.littleflyingpig.service.impl;

import com.zr.littleflyingpig.dao.IManagerDao;
import com.zr.littleflyingpig.dao.impl.ManagerDao;
import com.zr.littleflyingpig.pojo.Manager;
import com.zr.littleflyingpig.service.IManagerService;

/**
 * 管理员服务接口实现类
 * 
 * @author Administrator
 *
 */
public class ManagerService implements IManagerService {

	// 获取管路员dao层接口
	private IManagerDao dao = new ManagerDao();

	@Override
	public Manager login(String m_name, String m_password) {

		return dao.login(m_name, m_password);
	}

	@Override
	public boolean updateManager(Manager manager) {

		return dao.updateManager(manager);
	}

}
