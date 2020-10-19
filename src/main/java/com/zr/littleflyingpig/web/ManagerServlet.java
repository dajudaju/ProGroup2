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
import javax.servlet.http.Cookie;
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
import com.zr.littleflyingpig.pojo.Discuss;
import com.zr.littleflyingpig.pojo.Manager;
import com.zr.littleflyingpig.pojo.Order;
import com.zr.littleflyingpig.service.IDiscussService;
import com.zr.littleflyingpig.service.IManagerService;
import com.zr.littleflyingpig.service.IOrderService;
import com.zr.littleflyingpig.service.impl.DiscussService;
import com.zr.littleflyingpig.service.impl.ManagerService;
import com.zr.littleflyingpig.service.impl.OrderService;

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
		// 获取请求的操作指令
		String cmd = req.getParameter("cmd");
		System.out.println("管理员cmd: " + cmd);

		if ("login".equals(cmd)) {
			// 登录
			login(req, resp);
		} else if ("logout".equals(cmd)) {
			// 安全退出
			logout(req, resp);
		} else if ("updatepwd".equals(cmd)) {
			// 修改密码
			updatepwd(req, resp);
		} else if ("welcome".equals(cmd)) {
			// 首页
			welcome(req, resp);
		}

	}

	/**
	 * 首页的请求处理
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException
	 * @throws ServletException
	 */
	private void welcome(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 获取服务
		IWareService w_service = new WareService();
		List<Ware> wares = w_service.findAllWares();
		double money = 0;
		for (int i = 0; i < wares.size(); i++) {
			Ware w = wares.get(i);
			double m = w.getW_sale() * w.getW_price();
			money += m;
		}
		req.setAttribute("money", money);

		IDiscussService d_service = new DiscussService();
		List<Discuss> discusses = d_service.findAllDiscuss();
		int discuss_number = discusses.size();
		req.setAttribute("discuss_number", discuss_number);

		IOrderService o_service = new OrderService();
		List<Order> orders = o_service.findAllOrders();
		int order_number = orders.size();
		req.setAttribute("order_number", order_number);

		// 待发货
		List<Order> order_0 = o_service.findOrdersByState(0);
		req.setAttribute("order_0", order_0.size());
		// 已发货
		List<Order> order_1 = o_service.findOrdersByState(1);
		req.setAttribute("order_1", order_1.size());
		// 已完成
		List<Order> order_2 = o_service.findOrdersByState(2);
		req.setAttribute("order_2", order_2.size());
		// 待退款
		List<Order> order_3 = o_service.findOrdersByState(3);
		req.setAttribute("order_3", order_3.size());
		// 已退款
		List<Order> order_4 = o_service.findOrdersByState(4);
		req.setAttribute("order_4", order_4.size());

		req.getRequestDispatcher("Manager/welcome.jsp").forward(req, resp);

	}

	/**
	 * 管理员修改密码的请求处理
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException
	 */
	private void updatepwd(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		// 获取当前登录用户
		Manager manager = (Manager) req.getSession().getAttribute("manager");
		// 获取新密码
		manager.setM_password(req.getParameter("m_password"));

		// 获取管理员服务
		IManagerService service = new ManagerService();
		boolean flag = service.updateManager(manager);

		if (flag) {
			// 修改成功
			resp.getWriter().write("<script>parent.location.href ='Manager/login.jsp';</script>");

		} else {
			// 修改失败
			System.out.println("修改失败!");
		}

	}

	/**
	 * 管理员安全退出的请求处理
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException
	 */
	private void logout(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		// 销毁session
		req.getSession().removeAttribute("manager");
		// 退回到登录界面
		resp.sendRedirect("/storesystem/Manager/login.jsp");

	}

	/**
	 * 管理员登录的请求处理
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException
	 * @throws ServletException
	 */
	private void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 获取登录数据
		String m_name = req.getParameter("m_name");
		String m_password = req.getParameter("m_password");

		// 记住密码复选框
		String remember = req.getParameter("remember");
		System.out.println("登录填写数据: " + m_name + "-" + m_password + "-" + remember);

		// 获取管理员服务
		IManagerService service = new ManagerService();
		Manager manager = service.login(m_name, m_password);

		if (manager == null) {
			// 登录失败
			System.out.println("管理员登录失败!");
		} else {
			// 登录成功

			// 记住密码
			if ("1".equals(remember)) {
				// 勾上了记住密码的框,创建cookie
				Cookie cookie = new Cookie("manager-pwd", m_name + "-" + m_password);
				resp.addCookie(cookie);
			}

			// 创建session对象
			System.out.println("管理员登录成功!");
			req.getSession().setAttribute("manager", manager);
			req.getRequestDispatcher("Manager/index.jsp").forward(req, resp);
		}

	}

}
