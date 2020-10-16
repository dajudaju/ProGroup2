package com.zr.littleflyingpig.service.impl;

import java.util.List;

import com.zr.littleflyingpig.dao.IInformationDao;
import com.zr.littleflyingpig.dao.impl.InformationDao;
import com.zr.littleflyingpig.pojo.Information;
import com.zr.littleflyingpig.service.IInformationService;

/**
 * 通知服务接口实现类
 * 
 * @author Administrator
 *
 */
public class InformationService implements IInformationService {

	// 获取通知dao层接口
	private IInformationDao dao = new InformationDao();

	@Override
	public boolean addInformation(Information information) {

		return dao.addInformation(information);
	}

	@Override
	public boolean deleteInformation(int i_id) {

		return dao.deleteInformation(i_id);
	}

	@Override
	public List<Information> findInformationByCid(int c_id) {

		return dao.findInformationByCid(c_id);
	}

}
