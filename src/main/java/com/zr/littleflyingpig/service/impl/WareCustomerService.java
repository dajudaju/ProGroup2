package com.zr.littleflyingpig.service.impl;

import java.util.List;

import com.zr.littleflyingpig.dao.IWareCustomerDao;
import com.zr.littleflyingpig.dao.impl.WareCustomerDao;
import com.zr.littleflyingpig.pojo.WareCustomer;
import com.zr.littleflyingpig.service.IWareCustomerService;

/**
 * 用户-商品关系服务接口实现类
 * 
 * @author Administrator
 *
 */
public class WareCustomerService implements IWareCustomerService {

	// 获取用户-商品dao层接口
	private IWareCustomerDao dao = new WareCustomerDao();

	@Override
	public boolean addWareCustomer(WareCustomer wareCustomer) {

		return dao.addWareCustomer(wareCustomer);
	}

	@Override
	public boolean updateWareCustomer(WareCustomer wareCustomer) {

		return dao.updateWareCustomer(wareCustomer);
	}

	@Override
	public boolean deleteWareCustomer(int c_id, int w_id) {

		return dao.deleteWareCustomer(c_id, w_id);
	}

	@Override
	public WareCustomer findWareCustomerByCidAndWid(int c_id, int w_id) {

		return dao.findWareCustomerByCidAndWid(c_id, w_id);
	}

	@Override
	public List<WareCustomer> findWareCustomersByCid(int c_id, boolean flag) {

		return dao.findWareCustomersByCid(c_id, flag);
	}

}
