package com.zr.littleflyingpig.dao.impl;

import java.util.List;

import com.zr.littleflyingpig.dao.IDiscussDao;
import com.zr.littleflyingpig.pojo.Discuss;

/**
 * 用户评论dao层接口实现类
 * 
 * @author Administrator
 *
 */
public class DiscussDao implements IDiscussDao {

	@Override
	public boolean addDiscuss(Discuss discuss) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateDiscuss(Discuss discuss) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteDiscuss(int d_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Discuss findDiscussById(int d_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Discuss> findAllDiscuss() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Discuss> findDiscussesByReplay(boolean flag) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Discuss> findDiscussesByWid(int w_id) {
		// TODO Auto-generated method stub
		return null;
	}

}
