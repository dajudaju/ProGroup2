package com.zr.littleflyingpig.service.impl;

import java.util.Date;
import java.util.List;

import com.zr.littleflyingpig.dao.IOrderDao;
import com.zr.littleflyingpig.dao.impl.OrderDao;
import com.zr.littleflyingpig.pojo.Order;
import com.zr.littleflyingpig.service.IOrderService;

/**
 * 订单服务接口实现类
 * 
 * @author Administrator
 *
 */
public class OrderService implements IOrderService {

	// 获取订单dao层接口
	private IOrderDao dao = new OrderDao();

	@Override
	public boolean addOrder(Order order) {

		return dao.addOrder(order);
	}

	@Override
	public boolean updateOrder(Order order) {

		return dao.updateOrder(order);
	}

	@Override
	public boolean deleteOrder(int[] o_ids) {

		return dao.deleteOrder(o_ids);
	}

	@Override
	public Order findOrderById(int o_id) {

		return dao.findOrderById(o_id);
	}

	@Override
	public List<Order> findOrdersByDate(Date date1, Date date2) {

		return dao.findOrdersByDate(date1, date2);
	}

	@Override
	public List<Order> findOrdersByState(int o_state) {

		return dao.findOrdersByState(o_state);
	}

}
