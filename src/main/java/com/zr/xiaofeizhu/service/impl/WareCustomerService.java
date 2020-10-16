package com.zr.xiaofeizhu.service.impl;

import java.util.List;

import com.zr.xiaofeizhu.dao.impl.WareCustomerDao;
import com.zr.xiaofeizhu.pojo.WareCustomer;
import com.zr.xiaofeizhu.service.IWareCustomerService;

public class WareCustomerService implements IWareCustomerService{

	private WareCustomerDao dao = new WareCustomerDao();
	
	@Override
	public boolean addWareCustomer(WareCustomer wareCustomer) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateWareCustomer(WareCustomer wareCustomer) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteWareCustomer(int c_id, int w_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public WareCustomer findWareCustomerByCidAndWid(int c_id, int w_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<WareCustomer> findWareCustomersByCid(int c_id, boolean flag) {
		// TODO Auto-generated method stub
		return null;
	}

}
