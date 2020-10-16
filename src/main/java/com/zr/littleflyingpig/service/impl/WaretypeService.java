package com.zr.littleflyingpig.service.impl;

import java.util.List;

import com.zr.littleflyingpig.dao.impl.WaretypeDao;
import com.zr.littleflyingpig.pojo.Waretype;
import com.zr.littleflyingpig.service.IWaretypeService;

public class WaretypeService implements IWaretypeService{
	
	private WaretypeDao dao = new WaretypeDao();

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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Waretype> findAllWaretype() {
		// TODO Auto-generated method stub
		return null;
	}

}
