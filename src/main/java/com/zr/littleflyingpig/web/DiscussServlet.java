package com.zr.littleflyingpig.web;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zr.littleflyingpig.pojo.Customer;
import com.zr.littleflyingpig.pojo.Discuss;
import com.zr.littleflyingpig.pojo.DiscussExt;
import com.zr.littleflyingpig.pojo.Ware;
import com.zr.littleflyingpig.service.ICustomerService;
import com.zr.littleflyingpig.service.IDiscussService;
import com.zr.littleflyingpig.service.IWareService;
import com.zr.littleflyingpig.service.impl.CustomerService;
import com.zr.littleflyingpig.service.impl.DiscussService;
import com.zr.littleflyingpig.service.impl.WareService;

/**
 * 用户评论和商家回复的请求处理
 * 
 * @author Administrator
 *
 */
@SuppressWarnings("serial")
@WebServlet("/discussServlet")
public class DiscussServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 获取请求操作指令
		String cmd = req.getParameter("cmd");
		System.out.println("评论管理cmd: " + cmd);

		if ("findAll".equals(cmd)) {
			// 管理员查询所有评论内容
			findAll(req, resp);
		} else if ("replay".equals(cmd)) {
			// 管理员回复
			replay(req, resp);
		} else if ("delete".equals(cmd)) {
			// 删除一条评论

			int d_id = Integer.parseInt(req.getParameter("d_id"));
			int[] d_ids = { d_id };

			deleteDiscuss(req, resp, d_ids);

		} else if ("deleteAll".equals(cmd)) {
			// 删除多条评论
			String[] strs = req.getParameterValues("d_id");
			int[] d_ids = new int[strs.length];
			for (int i = 0; i < strs.length; i++) {
				d_ids[i] = Integer.parseInt(strs[i]);
			}

			deleteDiscuss(req, resp, d_ids);
		} else if ("search".equals(cmd)) {
			// 条件查询商品
			search(req, resp);
		}

	}

	/**
	 * 管理员根据一定条件查询的请求处理
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void search(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 获取数据
		String d_name = req.getParameter("d_name");
		String d_state = req.getParameter("d_state");
		System.out.println("查询条件: " + d_name + "- " + d_state);

		// 获取服务
		IDiscussService service = new DiscussService();

		List<Discuss> discusses_list = null;

		List<DiscussExt> de_list = new LinkedList<DiscussExt>();

		if (d_name != null) {
			try {
				// 根据商品id查询
				System.out.println("商品id");
				int w_id = Integer.parseInt(d_name);
				discusses_list = service.findDiscussesByWid(w_id);

			} catch (NumberFormatException e) {
				// 查询所有
				discusses_list = service.findAllDiscuss();
			}

		} else if ("0".equals(d_state)) {
			// 未回复的评论
			System.out.println("未回复");
			discusses_list = service.findDiscussesByReplay(false);
		} else if ("1".equals(d_state)) {
			// 已回复的评论
			System.out.println("已回复");
			discusses_list = service.findDiscussesByReplay(true);
		} else {
			// 查询所有
			System.out.println("查询所有");
			discusses_list = service.findAllDiscuss();
		}

		System.out.println(discusses_list);
		// 商品服务
		IWareService wareService = new WareService();
		// 用户服务
		ICustomerService customerService = new CustomerService();
		for (int i = 0; i < discusses_list.size(); i++) {

			Discuss discuss = discusses_list.get(i);
			Customer customer = customerService.findCustomerById(discuss.getC_id());
			Ware ware = wareService.findWareById(discuss.getW_id());

			// 封装到DiscussExt对象
			DiscussExt ext = new DiscussExt(discuss, customer.getC_name(), ware.getW_name());
			de_list.add(ext);
		}

		req.setAttribute("discuss_list", de_list);
		req.getRequestDispatcher("Manager/note.jsp").forward(req, resp);

	}

	/**
	 * 删除多条评论
	 * 
	 * @param req
	 * @param resp
	 * @param d_ids
	 * @throws IOException
	 */
	private void deleteDiscuss(HttpServletRequest req, HttpServletResponse resp, int[] d_ids) throws IOException {

		// 获取服务
		IDiscussService service = new DiscussService();
		boolean flag = service.deleteDiscuss(d_ids);

		if (flag) {
			// 删除成功
			resp.getWriter().write("<script>window.location.href = 'discussServlet?cmd=findAll';</script>");
		} else {
			// 删除失败
			System.out.println("删除失败!");
		}

	}

	/**
	 * 管理员回复的请求处理
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException
	 * @throws ServletException
	 */
	private void replay(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 获取数据
		int d_id = Integer.parseInt(req.getParameter("d_id"));
		String d_replay = req.getParameter("replay");
		System.out.println("商家回复: " + d_replay);

		// 获取服务
		IDiscussService service = new DiscussService();
		boolean flag = service.updateDiscuss(d_replay, d_id);

		if (flag) {
			// 回复成功
			System.out.println("商家回复成功!");
			resp.getWriter().write("<script>parent.location.href ='discussServlet?cmd=findAll';</script>");
		} else {
			// 回复失败
			System.out.println("商家回复失败!");
		}

	}

	/**
	 * 管理员查询所有评论的请求处理
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException
	 * @throws ServletException
	 */
	private void findAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 获取服务
		IDiscussService service = new DiscussService();

		List<Discuss> discusses_list = service.findAllDiscuss();

		List<DiscussExt> de_list = new LinkedList<DiscussExt>();

		// 商品服务
		IWareService wareService = new WareService();
		// 用户服务
		ICustomerService customerService = new CustomerService();
		for (int i = 0; i < discusses_list.size(); i++) {

			Discuss discuss = discusses_list.get(i);
			Customer customer = customerService.findCustomerById(discuss.getC_id());
			Ware ware = wareService.findWareById(discuss.getW_id());

			// 封装到DiscussExt对象
			DiscussExt ext = new DiscussExt(discuss, customer.getC_name(), ware.getW_name());
			de_list.add(ext);

		}

		req.setAttribute("discuss_list", de_list);
		req.getRequestDispatcher("Manager/note.jsp").forward(req, resp);

	}

}
