package com.zr.littleflyingpig.dao.impl;

import java.util.Date;
import java.util.List;

import com.zr.littleflyingpig.dao.IOrderDao;
import com.zr.littleflyingpig.pojo.Order;

/**
 * 订单dao层接口实现类
 * 
 * @author Administrator
 *
 */
public class OrderDao implements IOrderDao {

	@Override
	public boolean addOrder(Order order) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateOrder(Order order) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteOrder(int[] o_ids) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Order findOrderById(int o_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Order> findOrdersByDate(Date date1, Date date2) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Order> findOrdersByState(int o_state) {
		// TODO Auto-generated method stub
		return null;
	}

}
