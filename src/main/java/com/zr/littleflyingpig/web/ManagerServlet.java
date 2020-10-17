package com.zr.littleflyingpig.web;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.zr.littleflyingpig.pojo.Ware;
import com.zr.littleflyingpig.pojo.Waretype;
import com.zr.littleflyingpig.service.IWareService;
import com.zr.littleflyingpig.service.IWaretypeService;
import com.zr.littleflyingpig.service.impl.WareService;
import com.zr.littleflyingpig.service.impl.WaretypeService;

/**
 * 后台管理员的请求处理
 * 
 * @author Administrator
 *
 */
@SuppressWarnings("serial")
@WebServlet("/managerServlet")
public class ManagerServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cmd=req.getParameter("cmd");
		if (cmd.equals("findallwares")) {
			findAllWares(req,resp);
		}else if(cmd.equals("addware")) {
			addWare(req,resp);
		}
	}

	/**
	 * 添加商品
	 * @param req
	 * @param resp
	 */
	private void addWare(HttpServletRequest req, HttpServletResponse resp) {
		uploadImg(req,resp);
	}

	/**
	 * 上传商品图片
	 * @param req
	 * @param resp
	 */
	private void uploadImg(HttpServletRequest req, HttpServletResponse resp) {
		boolean isMultipart=ServletFileUpload.isMultipartContent(req);
		if (isMultipart) {
			//获取磁盘文件条目列表
			DiskFileItemFactory factory=new DiskFileItemFactory();
			//设置上传文件的缓存值
			factory.setSizeThreshold(1024*1024);
			//设置文件的缓存区（即临时目录）不建议使用临时目录
			//该目录内的临时文件使用完毕后会自动删除
			factory.setRepository(new File(req.getServletContext().getRealPath("/")+"temp"));
			
			//创建文件上传对象
			ServletFileUpload upload=new ServletFileUpload(factory);
			
			/**
			 * 设定上传文件的大小<br>
			 * 设定单个文件的大小，设定上传文件的总大小等<br>
			 */
			
		}
			
	}

	IWareService wareService=new WareService();
	IWaretypeService waretypeService=new WaretypeService();
	/**
	 * 查询所有商品信息 
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void findAllWares(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Ware> wares=wareService.findAllWares();
		Map<Ware, String> wareMap=new HashMap<Ware, String>();
		for (int i = 0; i < wares.size(); i++) {
			Waretype waretype=waretypeService.findWaretypeById(wares.get(i).getT_id());
			wareMap.put(wares.get(i), waretype.getT_name());
		}
		System.out.println(wareMap);
		req.setAttribute("wareMap", wareMap);
		req.getRequestDispatcher("/Manager/goodslist.jsp").forward(req, resp);
	}

}
