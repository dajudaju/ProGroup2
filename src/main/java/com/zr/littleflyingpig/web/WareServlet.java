package com.zr.littleflyingpig.web;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

import com.zr.littleflyingpig.pojo.Ware;
import com.zr.littleflyingpig.pojo.Waretype;
import com.zr.littleflyingpig.service.IWareService;
import com.zr.littleflyingpig.service.IWaretypeService;
import com.zr.littleflyingpig.service.impl.WareService;
import com.zr.littleflyingpig.service.impl.WaretypeService;

/**
 * 前台商品展示,用户查询商品和管理员商品管理的请求处理
 * 
 * @author Administrator
 *
 */
@SuppressWarnings("serial")
@WebServlet("/wareServlet")
public class WareServlet extends HttpServlet {

	IWareService wareService = new WareService();
	IWaretypeService waretypeService = new WaretypeService();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cmd = req.getParameter("cmd");
		System.out.println(cmd);
		if (cmd.equals("findallwares")) {
			findAllWares(req, resp);
		} else if (cmd.equals("findallwarebyid")) {
			findAllWareById(req, resp);
		} else if (cmd.equals("search")) {
			findWareBycondition(req, resp);
		} else if (cmd.equals("updatewarestate")) {
			updateWareState(req, resp);
		}
	}

	/**
	 * 上下架
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException
	 * @throws ServletException
	 */
	private void updateWareState(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		String wid = req.getParameter("wid");
		String state = req.getParameter("state");
		Ware ware = new Ware();
		ware.setW_id(Integer.parseInt(wid));
		ware.setW_state((byte) Integer.parseInt(state));
		boolean flag = wareService.updateWareStateById(ware);
		if (flag) {
			PrintWriter writer = resp.getWriter();
			if (state.equals("1")) {
				writer.write("<script>alert('商品上架成功！');window.location='wareServlet?cmd=findallwares';</script>");
			} else {
				writer.write("<script>alert('商品已下架！');window.location='wareServlet?cmd=findallwares';</script>");
			}
			writer.flush();
			writer.close();
		}
	}

	/**
	 * 根据条件查询商品
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException
	 * @throws ServletException
	 */
	private void findWareBycondition(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String tid = req.getParameter("tid");
		String wname = req.getParameter("wname");
		System.out.println("tid"+tid);
		System.out.println(wname);
		Map<Ware, String> wareMap = new HashMap<Ware, String>();
		if (wname != null && wname != "") {
			if (tid!=null && tid!="" && tid=="0") {
				String[] strs = wname.split("");
				for (String str : strs) {
					List<Ware> wareslist = wareService.findWaresByString(str);
					for (int i = 0; i < wareslist.size(); i++) {
						if (wareslist.get(i).getT_id()!=0) {
							if (wareslist.get(i).getT_id()==Integer.parseInt(tid)) {
								Waretype waretype = waretypeService.findWaretypeById(wareslist.get(i).getT_id());
								wareMap.put(wareslist.get(i), waretype.getT_name());
								System.out.println(wareslist.get(i).getW_id());
							}
						}
					}
				}
			}else {
				String[] strs = wname.split("");
				for (String str : strs) {
					List<Ware> wareslist = wareService.findWaresByString(str);
					for (int i = 0; i < wareslist.size(); i++) {
						if (wareslist.get(i).getT_id()!=0) {
							Waretype waretype = waretypeService.findWaretypeById(wareslist.get(i).getT_id());
							wareMap.put(wareslist.get(i), waretype.getT_name());
							System.out.println(wareslist.get(i).getW_id());
						}else {
							Waretype waretype = waretypeService.findWaretypeById(wareslist.get(i).getT_id());
							wareMap.put(wareslist.get(i), "尚未选择商品类型");
//							System.out.println(wareslist.get(i).getW_id());
						}
					}
				}
			}
		} else {
			List<Ware> wareslist = wareService.findWaresByType(Integer.parseInt(tid));
			for (int i = 0; i < wareslist.size(); i++) {
				Waretype waretype = waretypeService.findWaretypeById(wareslist.get(i).getT_id());
				wareMap.put(wareslist.get(i), waretype.getT_name());
			}
		}
		System.out.println(wareMap.size());
		if (wareMap.size()==0) {
			req.setAttribute("msg", "很遗憾，没有符合条件的商品！");
		}
		req.setAttribute("wareMap", wareMap);
		List<Waretype> waretypes = waretypeService.findAllWaretype();
		req.setAttribute("waretypes", waretypes);
		req.getRequestDispatcher("/Manager/goodslist.jsp").forward(req, resp);
	}

	/**
	 * 根据id查询商品
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException
	 * @throws ServletException
	 */
	private void findAllWareById(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String wid = req.getParameter("wid");
		req.getSession().setAttribute("wid", wid);
		Ware ware = wareService.findWareById(Integer.parseInt(wid));
		req.setAttribute("ware", ware);
		Waretype waretype = waretypeService.findWaretypeById(ware.getT_id());
		req.setAttribute("waretype", waretype);
		List<Waretype> waretypelist = waretypeService.findAllWaretype();
		req.setAttribute("waretypelist", waretypelist);
		req.getRequestDispatcher("/Manager/updateware.jsp").forward(req, resp);
	}

	/**
	 * 查询所有商品信息
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException
	 * @throws ServletException
	 */
	private void findAllWares(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Ware> wares = wareService.findAllWareBySales(false);
		Map<Ware, String> wareMap = new HashMap<Ware, String>();
		for (int i = 0; i < wares.size(); i++) {
			int tid = wares.get(i).getT_id();
			System.out.println(tid);
			if(!(tid+"").equals(null) && !(tid+"").equals("") && tid!=0) {
				Waretype waretype = waretypeService.findWaretypeById(tid);
				wareMap.put(wares.get(i), waretype.getT_name());
			}else {
				wareMap.put(wares.get(i), "尚未选择商品类型");
			}
			
		}
		System.out.println(wareMap);
		req.setAttribute("wareMap", wareMap);
		List<Waretype> waretypes = waretypeService.findAllWaretype();
		req.setAttribute("waretypes", waretypes);
		req.getRequestDispatcher("/Manager/goodslist.jsp").forward(req, resp);
	}

}
