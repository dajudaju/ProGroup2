package com.zr.xiaofeizhu.service.impl;

import java.util.Date;
import java.util.List;

import com.zr.xiaofeizhu.dao.impl.OrderDao;
import com.zr.xiaofeizhu.pojo.Order;
import com.zr.xiaofeizhu.service.IOrderService;

public class OrderService implements IOrderService{
	
	private OrderDao dao = new OrderDao();

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
