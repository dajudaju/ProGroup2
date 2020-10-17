package com.zr.littleflyingpig.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.zr.littleflyingpig.dao.IWaretypeDao;
import com.zr.littleflyingpig.pojo.Waretype;
import com.zr.littleflyingpig.util.TxDBUtils;

/**
 * 商品分类Dao层接口实现类
 * 
 * @author Administrator
 *
 */
public class WaretypeDao implements IWaretypeDao {

	@Override
	public boolean addWaretype(Waretype waretype) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateWaretype(Waretype waretype) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteWaretype(int t_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Waretype findWaretypeById(int t_id) {
		String sql="select * from tb_waretype where t_id=?";
		QueryRunner runner=new QueryRunner(TxDBUtils.getSource());
		try {
			return runner.query(sql, new BeanHandler<Waretype>(Waretype.class),t_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Waretype> findAllWaretype() {
		// TODO Auto-generated method stub
		return null;
	}

}
