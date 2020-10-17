package com.zr.littleflyingpig.service.impl;

import java.util.List;

import com.zr.littleflyingpig.dao.IWareDao;
import com.zr.littleflyingpig.dao.impl.WareDao;
import com.zr.littleflyingpig.pojo.Ware;
import com.zr.littleflyingpig.service.IWareService;

/**
 * 商品服务接口实现类
 * 
 * @author Administrator
 *
 */
public class WareService implements IWareService {

	// 获取商品dao层接口
	private IWareDao dao = new WareDao();

	@Override
	public boolean addWare(Ware ware) {

		return dao.addWare(ware);
	}

	@Override
	public boolean updateWare(Ware ware) {

		return dao.updateWare(ware);
	}

	@Override
	public boolean deleteWare(int w_id) {

		return dao.deleteWare(w_id);
	}

	@Override
	public Ware findWareById(int w_id) {

		return dao.findWareById(w_id);
	}

	@Override
	public List<Ware> findAllWareBySales(boolean flag) {

		return dao.findAllWareBySales(flag);
	}

	@Override
	public List<Ware> findAllWareByPrice(boolean flag) {

		return dao.findAllWareByPrice(flag);
	}

	@Override
	public List<Ware> findWaresByString(String str) {

		return dao.findWaresByString(str);
	}

	@Override
	public List<Ware> findWaresByType(int t_id) {

		return dao.findWaresByType(t_id);
	}

	@Override
	public List<Ware> findWaresByPrice(double low, double high) {

		return dao.findWaresByPrice(low, high);
	}

	@Override
	public List<Ware> findWaresByTypeAndPrice(int t_id, double low, double high) {

		return dao.findWaresByTypeAndPrice(t_id, low, high);
	}

	@Override
	public List<Ware> findAllWares() {

		return dao.findAllWares();
	}

}
