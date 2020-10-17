package com.zr.littleflyingpig.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.zr.littleflyingpig.dao.IWareDao;
import com.zr.littleflyingpig.pojo.Ware;
import com.zr.littleflyingpig.util.TxDBUtils;

/**
 * 商品dao层接口实现类
 * 
 * @author Administrator
 *
 */
public class WareDao implements IWareDao {

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

	@Override
	public List<Ware> findAllWares() {
		String sql="select * from tb_ware";
		QueryRunner runner=new QueryRunner(TxDBUtils.getSource());
		try {
			return runner.query(sql, new BeanListHandler<Ware>(Ware.class));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
