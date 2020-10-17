package com.zr.littleflyingpig.dao.impl;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.zr.littleflyingpig.dao.IOrderDao;
import com.zr.littleflyingpig.pojo.Order;
import com.zr.littleflyingpig.util.TxDBUtils;

/**
 * 订单dao层接口实现类
 * 
 * @author Administrator
 *
 */
public class OrderDao implements IOrderDao {

	@Override
	public boolean addOrder(Order order) {

		String sql = "insert into tb_order values(null,?,?,?,?,?,?,?,?,?,?)";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, order.getC_id(), order.getW_id(), order.getA_id(), order.getO_number(),
					order.getO_tel(), order.getO_count(), order.getO_price(), order.getO_date(), order.getO_state());
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean updateOrder(Order order) {

		String sql = "update tb_order set o_state=? where o_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, order.getO_state(), order.getO_id());
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean deleteOrder(int[] o_ids) {

		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			for (int i = 0; i < o_ids.length; i++) {

				String sql = "delete from tb_order where o_id=?";
				int line = runner.update(sql, o_ids[i]);
				if (line != 1) {
					return false;
				}
			}
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public Order findOrderById(int o_id) {

		Order order = null;
		String sql = "select * from tb_order where o_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			order = runner.query(sql, new BeanHandler<Order>(Order.class), o_id);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return order;
	}

	@Override
	public List<Order> findOrdersByDate(Date date1, Date date2) {

		List<Order> list = null;
		String sql = "select * from tb_order where o_date>? and o_date<?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			list = runner.query(sql, new BeanListHandler<Order>(Order.class), date1, date2);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public List<Order> findOrdersByState(int o_state) {

		List<Order> list = null;
		String sql = "select * from tb_order where o_state=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			list = runner.query(sql, new BeanListHandler<Order>(Order.class), o_state);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

}
