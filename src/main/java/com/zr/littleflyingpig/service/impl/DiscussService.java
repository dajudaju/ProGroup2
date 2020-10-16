package com.zr.littleflyingpig.service.impl;

import java.util.List;

import com.zr.littleflyingpig.dao.IDiscussDao;
import com.zr.littleflyingpig.dao.impl.DiscussDao;
import com.zr.littleflyingpig.pojo.Discuss;
import com.zr.littleflyingpig.service.IDiscussService;

/**
 * 用户评论服务接口实现类
 * 
 * @author Administrator
 *
 */
public class DiscussService implements IDiscussService {

	// 获取用户评论dao层接口
	private IDiscussDao dao = new DiscussDao();

	@Override
	public boolean addDiscuss(Discuss discuss) {

		return dao.addDiscuss(discuss);
	}

	@Override
	public boolean updateDiscuss(Discuss discuss) {

		return dao.updateDiscuss(discuss);
	}

	@Override
	public boolean deleteDiscuss(int d_id) {

		return dao.deleteDiscuss(d_id);
	}

	@Override
	public Discuss findDiscussById(int d_id) {

		return dao.findDiscussById(d_id);
	}

	@Override
	public List<Discuss> findAllDiscuss() {

		return dao.findAllDiscuss();
	}

	@Override
	public List<Discuss> findDiscussesByReplay(boolean flag) {

		return dao.findDiscussesByReplay(flag);
	}

	@Override
	public List<Discuss> findDiscussesByWid(int w_id) {

		return dao.findDiscussesByWid(w_id);
	}

}
