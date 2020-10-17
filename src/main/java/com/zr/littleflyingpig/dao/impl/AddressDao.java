package com.zr.littleflyingpig.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.zr.littleflyingpig.dao.IAddressDao;
import com.zr.littleflyingpig.pojo.Address;
import com.zr.littleflyingpig.util.TxDBUtils;

/**
 * 收获地址dao层接口实现类
 * 
 * @author Administrator
 *
 */
public class AddressDao implements IAddressDao {

	@Override
	public boolean addAddress(Address address) {

		String sql = "insert into tb_address values(null,?,?)";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, address.getC_id(), address.getA_name());
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean updateAddress(Address address) {

		String sql = "update tb_address set c_id=?,a_name=? where a_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, address.getC_id(), address.getA_name(), address.getA_id());
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean deleteAddress(int a_id) {

		String sql = "delete from tb_address where a_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, a_id);
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public Address findAddressById(int a_id) {

		Address address = null;
		String sql = "select * from tb_address where a_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {
			address = runner.query(sql, new BeanHandler<Address>(Address.class), a_id);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return address;
	}

	@Override
	public List<Address> findAddressesByCid(int c_id) {

		List<Address> list = null;
		String sql = "select * from tb_address where c_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {
			list = runner.query(sql, new BeanListHandler<Address>(Address.class), c_id);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

}
