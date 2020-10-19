package com.zr.littleflyingpig.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zr.littleflyingpig.pojo.Customer;
import com.zr.littleflyingpig.pojo.WareCustomer;
import com.zr.littleflyingpig.service.IWareCustomerService;
import com.zr.littleflyingpig.service.impl.WareCustomerService;

/**
 * 用户收藏,用户购物车的请求处理
 * 
 * @author Administrator
 *
 */
@SuppressWarnings("serial")
@WebServlet("/warecustomerServlet")
public class WareCustomerServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 获取请求的操作指令
		String cmd = req.getParameter("cmd");
		System.out.println("用户-商品cmd: " + cmd);

		if ("updateCollect".equals(cmd)) {
			// 收藏,取消收藏
			updateCollect(req, resp);
		} else if ("updateTrolley".equals(cmd)) {
			// 添加到购物车,取消购物车
			updateTrolley(req, resp);
		}
	}

	/**
	 * 添加到购物车,取消购物车的请求处理
	 * 
	 * @param req
	 * @param resp
	 */
	private void updateTrolley(HttpServletRequest req, HttpServletResponse resp) {

		// 获取数据
		Customer customer = (Customer) req.getSession().getAttribute("customer");
		int w_id = Integer.parseInt(req.getParameter("w_id"));
		int trolley = Integer.parseInt(req.getParameter("trolley"));
		int number = Integer.parseInt(req.getParameter("numebr"));

		// 获取服务
		IWareCustomerService service = new WareCustomerService();

		WareCustomer wc = service.findWareCustomerByCidAndWid(customer.getC_id(), w_id);

		if (wc == null) {
			// 未收藏,未添加到购物车
			WareCustomer wareCustomer = new WareCustomer(customer.getC_id(), w_id, (byte) 0, (byte) 0, number);
			boolean flag = service.addWareCustomer(wareCustomer);

			if (flag) {
				// 添加成功
				// 重新刷新该页面
			} else {
				// 添加失败
				System.out.println("收藏失败");
			}
		} else {
			// 已经收藏,或已经添加到购物车
			wc.setTrolley((byte) trolley);
			wc.setNumber(number);
			boolean flag = service.updateWareCustomer(wc);

			if (flag) {
				// 添加购物车成功
				// 重新刷新该页面
			} else {
				// 添加失败
				System.out.println("添加购物车失败");
			}

		}

	}

	/**
	 * 用户收藏,取消收藏的请求处理
	 * 
	 * @param req
	 * @param resp
	 */
	private void updateCollect(HttpServletRequest req, HttpServletResponse resp) {

		// 获取数据
		Customer customer = (Customer) req.getSession().getAttribute("customer");
		int w_id = Integer.parseInt(req.getParameter("w_id"));
		int collect = Integer.parseInt(req.getParameter("collect"));

		// 获取服务
		IWareCustomerService service = new WareCustomerService();

		WareCustomer wc = service.findWareCustomerByCidAndWid(customer.getC_id(), w_id);

		if (wc == null) {
			// 未收藏,未添加到购物车
			WareCustomer wareCustomer = new WareCustomer(customer.getC_id(), w_id, (byte) 1, (byte) 1, 0);
			boolean flag = service.addWareCustomer(wareCustomer);

			if (flag) {
				// 添加收藏成功
				// 重新刷新该页面
			} else {
				// 收藏失败
				System.out.println("收藏失败");
			}
		} else {
			// 已经收藏,或已经添加到购物车
			wc.setCollect((byte) collect);
			boolean flag = service.updateWareCustomer(wc);

			if (flag) {
				// 收藏成功
				// 重新刷新该页面
			} else {
				// 收藏失败
				System.out.println("收藏失败");
			}

		}
	}
}
