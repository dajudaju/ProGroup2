package com.zr.littleflyingpig.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zr.littleflyingpig.pojo.Customer;
import com.zr.littleflyingpig.service.ICustomerService;
import com.zr.littleflyingpig.service.impl.CustomerService;

/**
 * 前台用户的请求处理
 * 
 * @author Administrator
 *
 */
@SuppressWarnings("serial")
@WebServlet("/customerServlet")
public class CustomerServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 获取请求的操作指令
		String cmd = req.getParameter("cmd");
		System.out.println("用户cmd: " + cmd);

		if ("findAll".equals(cmd)) {
			// 查询所有用户
			findAll(req, resp);
		} else if ("findByCname".equals(cmd)) {
			// 根据用户名模糊查询
			findByCname(req, resp);
		} else if ("update".equals(cmd)) {
			// 管理员修改用户状态
			update(req, resp);
		}

	}

	/**
	 * 用户 收藏,取消收藏,添加到购物车,取消购物车的请求处理
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException
	 * @throws ServletException
	 */
	private void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 获取数据
		int c_id = Integer.parseInt(req.getParameter("c_id"));
		int c_state = Integer.parseInt(req.getParameter("c_state"));
		System.out.println(c_id + c_state);

		// 获取服务
		ICustomerService service = new CustomerService();

		Customer customer = service.findCustomerById(c_id);
		customer.setC_state((byte) c_state);

		boolean flag = service.updateCustomer(customer);

		if (flag) {
			// 修改成功
			findAll(req, resp);
		} else {
			// 修改失败
			System.out.println("修改失败!");
		}

	}

	/**
	 * 管理员根据用户名查询用户的请求
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException
	 * @throws ServletException
	 */
	private void findByCname(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 获取数据
		String c_name = req.getParameter("c_name");

		// 获取服务
		ICustomerService service = new CustomerService();
		List<Customer> customers = service.findCustomersByString(c_name);

		req.setAttribute("customers", customers);
		req.getRequestDispatcher("Manager/member-list.jsp").forward(req, resp);

	}

	/**
	 * 管理员查询所有用户的请求处理
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException
	 * @throws ServletException
	 */
	private void findAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 获取服务
		ICustomerService service = new CustomerService();

		List<Customer> customers = service.findAllCustomer();

		req.setAttribute("customers", customers);
		req.getRequestDispatcher("Manager/member-list.jsp").forward(req, resp);

	}

}
