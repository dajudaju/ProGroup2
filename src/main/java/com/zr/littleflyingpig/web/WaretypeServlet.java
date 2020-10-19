package com.zr.littleflyingpig.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.x.protobuf.MysqlxCrud.UpdateOperation.UpdateType;
import com.zr.littleflyingpig.pojo.Waretype;
import com.zr.littleflyingpig.service.IWaretypeService;
import com.zr.littleflyingpig.service.impl.WaretypeService;

/**
 * 商品分类的请求处理
 * 
 * @author Administrator
 *
 */
@SuppressWarnings("serial")
@WebServlet("/waretypeServlet")
public class WaretypeServlet extends HttpServlet {

	IWaretypeService waretypeService=new WaretypeService();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cmd=req.getParameter("cmd");
		if (cmd.equals("findalltype")) {
			findAllType(req,resp);
		}else if(cmd.equals("findall")){
			findAll(req,resp);
		}else if (cmd.equals("findtypebyid")) {
			findTypeById(req,resp);
		}else if (cmd.equals("updatetype")) {
			updateType(req,resp);
		}else if (cmd.equals("addtype")) {
			addType(req,resp);
		}else if (cmd.equals("deletetype")) {
			deleteType(req,resp);
		}else if (cmd.equals("deletemanytype")) {
			deleteManyType(req,resp);
		}
	}

	/**
	 * 批量删除商品类型
	 * @param req
	 * @param resp
	 * @throws IOException 
	 */
	private void deleteManyType(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String str=req.getParameter("tid");
		String[] strs=str.split(",");
		System.out.println(strs.length);
		for (String string : strs) {
			System.out.println(string);
			int tid=Integer.parseInt(string);
			boolean flag = waretypeService.deleteWaretype(tid);
		}
		PrintWriter writer = resp.getWriter();
		writer.write("<script>alert('所选商品类型删除成功！');window.location='waretypeServlet?cmd=findall';</script>");
		writer.flush();
		writer.close();
	}

	/**
	 * 根据id删除商品类型
	 * @param req
	 * @param resp
	 * @throws IOException 
	 */
	private void deleteType(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int tid=Integer.parseInt(req.getParameter("tid"));
		boolean flag = waretypeService.deleteWaretype(tid);
		if (flag) {
			PrintWriter writer = resp.getWriter();
			writer.write("<script>alert('商品类型删除成功！');window.location='waretypeServlet?cmd=findall';</script>");
			writer.flush();
			writer.close();
		}
	}

	/**
	 * 添加商品类型
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void addType(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String tname=req.getParameter("tname");
		Waretype waretype=new Waretype();
		waretype.setT_name(tname);
		boolean flag= waretypeService.findWareTypeByName(tname);
		if (flag) {
			req.setAttribute("msg", "该商品类别已存在！");
			req.getRequestDispatcher("/Manager/addwaretype.jsp").forward(req, resp);
		}else {
			boolean flag1 = waretypeService.addWaretype(waretype);
			if (flag1) {
				PrintWriter writer = resp.getWriter();
				writer.write("<font color='skyblue' size='2'>商品类型添加成功，请刷新后查看~</font>");
				writer.flush();
				writer.close();
			}
		}
	}

	/**
	 * 根据id修改商品类型
	 * @param req
	 * @param resp
	 * @throws IOException 
	 */
	private void updateType(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int tid=Integer.parseInt(req.getParameter("tid"));
		String tname=req.getParameter("tname");
		Waretype waretype=new Waretype(tid, tname);
		boolean flag = waretypeService.updateWaretype(waretype);
		if (flag) {
			PrintWriter writer = resp.getWriter();
			writer.write("<font color='skyblue' size='2'>商品类型修改成功，请刷新后查看~</font>");
			writer.flush();
			writer.close();
		}
	}

	/**
	 * 根据id查找商品类型
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void findTypeById(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int tid=Integer.parseInt(req.getParameter("tid"));
		Waretype waretype = waretypeService.findWaretypeById(tid);
		req.setAttribute("waretype", waretype);
		req.getRequestDispatcher("/Manager/updatewaretype.jsp").forward(req, resp);
	}

	/**
	 * 显示所有商品类别
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void findAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Waretype> typelist = waretypeService.findAllWaretype();
		req.setAttribute("typelist",typelist);
		req.getRequestDispatcher("/Manager/goodstype.jsp").forward(req, resp);
	}

	/**
	 * 查看所有商品类别
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void findAllType(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Waretype>waretypes=waretypeService.findAllWaretype();
		req.setAttribute("waretypes", waretypes);
		req.getRequestDispatcher("/Manager/goods-add.jsp").forward(req, resp);
	}

}
