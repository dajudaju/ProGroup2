package com.zr.littleflyingpig.service.impl;

import java.util.List;

import com.zr.littleflyingpig.dao.IWaretypeDao;
import com.zr.littleflyingpig.dao.impl.WaretypeDao;
import com.zr.littleflyingpig.pojo.Waretype;
import com.zr.littleflyingpig.service.IWaretypeService;

/**
 * 商品分类服务接口实现类
 * 
 * @author Administrator
 *
 */
public class WaretypeService implements IWaretypeService {

	// 商品分类dao层接口
	private IWaretypeDao dao = new WaretypeDao();

	@Override
	public boolean addWaretype(Waretype waretype) {

		return dao.addWaretype(waretype);
	}

	@Override
	public boolean updateWaretype(Waretype waretype) {

		return dao.updateWaretype(waretype);
	}

	@Override
	public boolean deleteWaretype(int t_id) {

		return dao.deleteWaretype(t_id);
	}

	@Override
	public Waretype findWaretypeById(int t_id) {

		return dao.findWaretypeById(t_id);
	}

	@Override
	public List<Waretype> findAllWaretype() {

		return dao.findAllWaretype();
	}

	@Override
	public boolean findWareTypeByName(String tname) {
		// TODO Auto-generated method stub
		return dao.findWareTypeByName(tname);
	}

}
