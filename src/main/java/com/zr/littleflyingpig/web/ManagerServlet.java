package com.zr.littleflyingpig.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zr.littleflyingpig.pojo.Manager;
import com.zr.littleflyingpig.service.IManagerService;
import com.zr.littleflyingpig.service.impl.ManagerService;

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
			//修改密码
			updatepwd(req,resp);
		}

	}

	/**
	 * 管理员修改密码的请求处理
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException
	 */
	private void updatepwd(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		//获取当前登录用户
		Manager manager = (Manager)req.getSession().getAttribute("manager");
		//获取新密码
		manager.setM_password(req.getParameter("m_password"));
		
		//获取管理员服务
		IManagerService service = new ManagerService();
		boolean flag = service.updateManager(manager);
		
		if (flag) {
			//修改成功
			resp.getWriter().write("<script>parent.location.href ='Manager/login.jsp';</script>");
			
			
		}else {
			//修改失败
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
