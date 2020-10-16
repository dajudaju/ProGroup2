package com.zr.xiaofeizhu.service.impl;

import java.util.List;

import com.zr.xiaofeizhu.dao.impl.InformationDao;
import com.zr.xiaofeizhu.pojo.Information;
import com.zr.xiaofeizhu.service.IInformationService;

public class InformationService implements IInformationService{

	private InformationDao dao = new InformationDao();
	
	@Override
	public boolean addInformation(Information information) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteInformation(int i_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Information> findInformationByCid(int c_id) {
		// TODO Auto-generated method stub
		return null;
	}

}
