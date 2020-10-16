package com.zr.xiaofeizhu.service.impl;

import java.util.List;

import com.zr.xiaofeizhu.dao.impl.WareDao;
import com.zr.xiaofeizhu.pojo.Ware;
import com.zr.xiaofeizhu.service.IWareService;

public class WareService implements IWareService{

	private WareDao dao = new WareDao();
	
	@Override
	public boolean addWare(Ware ware) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateWare(Ware ware) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteWare(int w_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Ware findWareById(int w_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Ware> findAllWareBySales(boolean flag) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Ware> findAllWareByPrice(boolean flag) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Ware> findWaresByString(String str) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Ware> findWaresByType(int t_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Ware> findWaresByPrice(double low, double high) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Ware> findWaresByTypeAndPrice(int t_id, double low, double high) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
