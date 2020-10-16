package com.zr.xiaofeizhu.service.impl;

import java.util.List;

import com.zr.xiaofeizhu.dao.impl.DiscussDao;
import com.zr.xiaofeizhu.pojo.Discuss;
import com.zr.xiaofeizhu.service.IDiscussService;

public class DiscussService implements IDiscussService{

	private  DiscussDao dao = new DiscussDao();
	
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
