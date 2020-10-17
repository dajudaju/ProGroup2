package com.zr.littleflyingpig.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.zr.littleflyingpig.dao.ICustomerDao;
import com.zr.littleflyingpig.pojo.Customer;
import com.zr.littleflyingpig.util.TxDBUtils;

/**
 * 用户dao层接口实现类
 * 
 * @author Administrator
 *
 */
public class CustomerDao implements ICustomerDao {

	@Override
	public Customer login(String c_name, String c_password) {

		Customer customer = null;
		String sql = "select * from tb_customer c_name=? and c_password=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			customer = runner.query(sql, new BeanHandler<Customer>(Customer.class), c_name, c_password);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return customer;
	}

	@Override
	public boolean register(Customer customer) {

		String sql = "insert into tb_customer values(null,?,?,?,?,?)";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, customer.getC_name(), customer.getC_password(), customer.getC_gender(),
					customer.getC_tel(), customer.getC_state());
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean updateCustomer(Customer customer) {

		String sql = "update tb_customer set c_name=?,c_password=?,c_gender=?,c_tel=?,c_state=? where c_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, customer.getC_name(), customer.getC_password(), customer.getC_gender(),
					customer.getC_tel(), customer.getC_state(), customer.getC_id());
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public Customer findCustomerById(int c_id) {

		Customer customer = null;
		String sql = "select * from tb_customer where c_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			customer = runner.query(sql, new BeanHandler<Customer>(Customer.class), c_id);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return customer;
	}

	@Override
	public List<Customer> findAllCustomer() {

		List<Customer> list = null;
		String sql = "select * from tb_customer";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			list = runner.query(sql, new BeanListHandler<Customer>(Customer.class));

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public List<Customer> findCustomersByString(String c_name) {

		List<Customer> list = null;
		String sql = "select * from tb_customer where c_name like ?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			list = runner.query(sql, new BeanListHandler<Customer>(Customer.class), "%" + c_name + "%");

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

}
