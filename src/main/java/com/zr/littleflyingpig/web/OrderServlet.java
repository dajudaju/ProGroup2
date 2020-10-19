package com.zr.littleflyingpig.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zr.littleflyingpig.pojo.Address;
import com.zr.littleflyingpig.pojo.Order;
import com.zr.littleflyingpig.pojo.Ware;
import com.zr.littleflyingpig.service.IAddressService;
import com.zr.littleflyingpig.service.IOrderService;
import com.zr.littleflyingpig.service.IWareService;
import com.zr.littleflyingpig.service.impl.AddressService;
import com.zr.littleflyingpig.service.impl.OrderService;
import com.zr.littleflyingpig.service.impl.WareService;

/**
 * 管理员订单管理和用户的订单查询请求处理
 * 
 * @author Administrator
 *
 */
@SuppressWarnings("serial")
@WebServlet("/orderServlet")
public class OrderServlet extends HttpServlet {

	IOrderService orderService=new OrderService();
	IWareService wareService=new WareService();
	IAddressService addressService=new AddressService();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cmd=req.getParameter("cmd");
		if (cmd.equals("findall")) {
			findAllOrder(req,resp);
		}else if (cmd.equals("search")) {
			try {
				findorder(req, resp);
			} catch (ParseException | ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(cmd.equals("deleteorder")) {
			deleteById(req,resp);
		}else if (cmd.equals("findinvoice")) {
			findOrderByState(req,resp);
		}else if (cmd.equals("search1")) {
			findOrderByStatesearch1(req,resp);
		}else if (cmd.equals("search2")) {
			findOrderByStatesearch2(req,resp);
		}else if (cmd.equals("findreturn")) {
			findOrderByStatereturn(req,resp);
		}else if (cmd.equals("invoice")) {
			updateOrderState1(req,resp);
		}else if (cmd.equals("return1")) {
			updateOrderState2(req,resp);
		}else if (cmd.equals("return2")) {
			updateOrderState4(req,resp);
		}else if (cmd.equals("return3")) {
			updateOrderState11(req,resp);
		}
	}

	private void updateOrderState4(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String state=req.getParameter("state");
		String oid=req.getParameter("oid");
		Order order=new Order();
		order.setO_id(Integer.parseInt(oid));
		order.setO_state((byte) Integer.parseInt(state));
		boolean flag = orderService.updateOrder(order);
		if (flag) {
			PrintWriter writer = resp.getWriter();
			writer.write("<script>alert('已取消退款！');window.location='orderServlet?cmd=findreturn&state=3';</script>");
			writer.flush();
			writer.close();
		}
	}

	private void updateOrderState11(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String state=req.getParameter("state");
		String oid=req.getParameter("oid");
		Order order=new Order();
		order.setO_id(Integer.parseInt(oid));
		order.setO_state((byte) Integer.parseInt(state));
		boolean flag = orderService.updateOrder(order);
		if (flag) {
			PrintWriter writer = resp.getWriter();
			writer.write("<script>alert('退款成功！');window.location='orderServlet?cmd=findreturn&state=3';</script>");
			writer.flush();
			writer.close();
		}
	}
	
	private void updateOrderState2(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String state=req.getParameter("state");
		String oid=req.getParameter("oid");
		Order order=new Order();
		order.setO_id(Integer.parseInt(oid));
		order.setO_state((byte) Integer.parseInt(state));
		boolean flag = orderService.updateOrder(order);
		if (flag) {
			PrintWriter writer = resp.getWriter();
			writer.write("<script>alert('退单完成，已取消发货！');window.location='orderServlet?cmd=findinvoice&state=0';</script>");
			writer.flush();
			writer.close();
		}
	}

	private void updateOrderState1(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String state=req.getParameter("state");
		String oid=req.getParameter("oid");
		Order order=new Order();
		order.setO_id(Integer.parseInt(oid));
		order.setO_state((byte) Integer.parseInt(state));
		boolean flag = orderService.updateOrder(order);
		if (flag) {
			PrintWriter writer = resp.getWriter();
			writer.write("<script>alert('发货成功！');window.location='orderServlet?cmd=findinvoice&state=0';</script>");
			writer.flush();
			writer.close();
		}
	}

	private void findOrderByStatesearch2(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String state=req.getParameter("state");
		String number=req.getParameter("onumber");
		List<Order> orders=orderService.findOrderByStateNumber(Integer.parseInt(state), Integer.parseInt(number));
		List list=new ArrayList();
		if (orders==null ||orders.size()==0) {
			req.setAttribute("msg", "没有该订单");
		}else {
			for (int i = 0; i < orders.size(); i++) {
				Ware ware=wareService.findWareById(orders.get(i).getW_id());
				Address address=addressService.findAddressById(orders.get(i).getA_id());
				List orderlist=new ArrayList();
				orderlist.add(orders.get(i));
				orderlist.add(ware);
				orderlist.add(address);	
				list.add(orderlist);
			}
			System.out.println(list);
			req.setAttribute("list", list);
		}
		req.getRequestDispatcher("/Manager/return-order.jsp").forward(req, resp);
	}
	
	private void findOrderByStatesearch1(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String state=req.getParameter("state");
		String number=req.getParameter("onumber");
		List<Order> orders=orderService.findOrderByStateNumber(Integer.parseInt(state), Integer.parseInt(number));
		List list=new ArrayList();
		if (orders==null ||orders.size()==0) {
			req.setAttribute("msg", "没有该订单");
		}else {
			for (int i = 0; i < orders.size(); i++) {
				Ware ware=wareService.findWareById(orders.get(i).getW_id());
				Address address=addressService.findAddressById(orders.get(i).getA_id());
				List orderlist=new ArrayList();
				orderlist.add(orders.get(i));
				orderlist.add(ware);
				orderlist.add(address);	
				list.add(orderlist);
			}
			System.out.println(list);
			req.setAttribute("list", list);
		}
		req.getRequestDispatcher("/Manager/invoice.jsp").forward(req, resp);
	}

	private void findOrderByStatereturn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String state=req.getParameter("state");
		List<Order> orders=orderService.findOrdersByState(Integer.parseInt(state));
		List list=new ArrayList();
		if (orders==null ||orders.size()==0) {
			req.setAttribute("msg", "尚未有订单！");
		}else {
			for (int i = 0; i < orders.size(); i++) {
				Ware ware=wareService.findWareById(orders.get(i).getW_id());
				Address address=addressService.findAddressById(orders.get(i).getA_id());
				List orderlist=new ArrayList();
				orderlist.add(orders.get(i));
				orderlist.add(ware);
				orderlist.add(address);	
				list.add(orderlist);
			}
			System.out.println(list);
			req.setAttribute("list", list);
		}
		req.getRequestDispatcher("/Manager/return-order.jsp").forward(req, resp);
	}

	private void findOrderByState(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String state=req.getParameter("state");
		List<Order> orders=orderService.findOrdersByState(Integer.parseInt(state));
		List list=new ArrayList();
		if (orders==null || orders.size()==0) {
			req.setAttribute("msg", "尚未有订单！");
		}else {
			for (int i = 0; i < orders.size(); i++) {
				Ware ware=wareService.findWareById(orders.get(i).getW_id());
				Address address=addressService.findAddressById(orders.get(i).getA_id());
				List orderlist=new ArrayList();
				orderlist.add(orders.get(i));
				orderlist.add(ware);
				orderlist.add(address);	
				list.add(orderlist);
			}
			System.out.println(list);
			req.setAttribute("list", list);
		}
		req.getRequestDispatcher("/Manager/invoice.jsp").forward(req, resp);
	}

	private void deleteById(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int oid=Integer.parseInt(req.getParameter("oid"));
		System.out.println("oid"+oid);
		Order order = orderService.findOrderById(oid);
		System.out.println("state"+order.getO_state());
		if (order.getO_state()!=2) {
			PrintWriter writer = resp.getWriter();
			writer.write("<script>alert('订单尚未完成，不能进行删除！');window.location='orderServlet?cmd=findall';</script>");
			writer.flush();
			writer.close();
		}else {
			int[] oids= {oid};
			boolean flag = orderService.deleteOrder(oids);
			if (flag) {
				PrintWriter writer = resp.getWriter();
				writer.write("<script>alert('订单删除成功！');window.location='orderServlet?cmd=findall';</script>");
				writer.flush();
				writer.close();
			}
		}
	}

	/**
	 * 三个条件查询
	 * @param req
	 * @param resp
	 * @throws ParseException 
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void findorder(HttpServletRequest req, HttpServletResponse resp) throws ParseException, ServletException, IOException {
		String ostart=req.getParameter("ostart");
		String oend=req.getParameter("oend");
		String number=req.getParameter("onumber");
		String state=req.getParameter("ostate");
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		System.out.println(ostart);
		System.out.println(oend);
		System.out.println(number);
		System.out.println(state);
		if (ostart!="" && state!="5" && number!="") {
			int ostate=Integer.parseInt(state);
			int onumber=Integer.parseInt(number);
			System.out.println("3");
			String date1=ostart+" 00:00:00";
			String date2=oend+" 23:59:59";
			List<Order> orders=orderService.findOrderByDateStateNumber(date1, date2, ostate, onumber);
			List list=new ArrayList();
			if (orders==null||orders.size()==0) {
				req.setAttribute("msg", "很遗憾，没有符合条件的订单！");
			}else {
				for (int i = 0; i < orders.size(); i++) {
					Ware ware=wareService.findWareById(orders.get(i).getW_id());
					Address address=addressService.findAddressById(orders.get(i).getA_id());
					List orderlist=new ArrayList();
					orderlist.add(orders.get(i));
					orderlist.add(ware);
					orderlist.add(address);	
					list.add(orderlist);
				}
				System.out.println(list);
				req.setAttribute("list", list);
			}
		}
		if (ostart!="" && state=="5" && number!="") {
//			int ostate=Integer.parseInt(state);
			int onumber=Integer.parseInt(number);
			String date1=ostart+" 00:00:00";
			String date2=oend+" 23:59:59";
			List<Order> orders=orderService.findOrderByDateNumber(date1, date2, onumber);
			List list=new ArrayList();
			if (orders==null||orders.size()==0) {
				req.setAttribute("msg", "很遗憾，没有符合条件的订单！");
			}else {
				for (int i = 0; i < orders.size(); i++) {
					Ware ware=wareService.findWareById(orders.get(i).getW_id());
					Address address=addressService.findAddressById(orders.get(i).getA_id());
					List orderlist=new ArrayList();
					orderlist.add(orders.get(i));
					orderlist.add(ware);
					orderlist.add(address);	
					list.add(orderlist);
				}
				System.out.println(list);
				req.setAttribute("list", list);
			}
		}
		if (ostart!="" && state=="5" && number=="") {
//			int ostate=Integer.parseInt(state);
//			int onumber=Integer.parseInt(number);
			String date1=ostart+" 00:00:00";
			String date2=oend+" 23:59:59";
			List<Order> orders=orderService.findOrdersByDate(date1, date2);
			List list=new ArrayList();
			if (orders==null||orders.size()==0) {
				req.setAttribute("msg", "很遗憾，没有符合条件的订单！");
			}else {
				for (int i = 0; i < orders.size(); i++) {
					Ware ware=wareService.findWareById(orders.get(i).getW_id());
					Address address=addressService.findAddressById(orders.get(i).getA_id());
					List orderlist=new ArrayList();
					orderlist.add(orders.get(i));
					orderlist.add(ware);
					orderlist.add(address);	
					list.add(orderlist);
				}
				System.out.println(list);
				req.setAttribute("list", list);
			}
		}
		if (ostart!="" && state!="5" && number=="") {
			int ostate=Integer.parseInt(state);
//			int onumber=Integer.parseInt(number);
			String date1=ostart+" 00:00:00";
			String date2=oend+" 23:59:59";
			List<Order> orders=orderService.findOrderByDateState(date1, date2, ostate);
			List list=new ArrayList();
			if (orders==null||orders.size()==0) {
				req.setAttribute("msg", "很遗憾，没有符合条件的订单！");
			}else {
				for (int i = 0; i < orders.size(); i++) {
					Ware ware=wareService.findWareById(orders.get(i).getW_id());
					Address address=addressService.findAddressById(orders.get(i).getA_id());
					List orderlist=new ArrayList();
					orderlist.add(orders.get(i));
					orderlist.add(ware);
					orderlist.add(address);	
					list.add(orderlist);
				}
				System.out.println(list);
				req.setAttribute("list", list);
			}
		}
		if (ostart=="" && state!="5" && number!="") {
			int ostate=Integer.parseInt(state);
			int onumber=Integer.parseInt(number);
			String date1=ostart+" 00:00:00";
			String date2=oend+" 23:59:59";
			List<Order> orders=orderService.findOrderByStateNumber(ostate, onumber);
			List list=new ArrayList();
			if (orders==null||orders.size()==0) {
				req.setAttribute("msg", "很遗憾，没有符合条件的订单！");
			}else {
				for (int i = 0; i < orders.size(); i++) {
					Ware ware=wareService.findWareById(orders.get(i).getW_id());
					Address address=addressService.findAddressById(orders.get(i).getA_id());
					List orderlist=new ArrayList();
					orderlist.add(orders.get(i));
					orderlist.add(ware);
					orderlist.add(address);	
					list.add(orderlist);
				}
				System.out.println(list);
				req.setAttribute("list", list);
			}
		}
		if (ostart=="" && state=="5" && number!="") {
//			int ostate=Integer.parseInt(state);
			int onumber=Integer.parseInt(number);
			String date1=ostart+" 00:00:00";
			String date2=oend+" 23:59:59";
			List<Order> orders=orderService.findOrderByNumber(onumber);
			List list=new ArrayList();
			if (orders==null||orders.size()==0) {
				req.setAttribute("msg", "很遗憾，没有符合条件的订单！");
			}else {
				for (int i = 0; i < orders.size(); i++) {
					Ware ware=wareService.findWareById(orders.get(i).getW_id());
					Address address=addressService.findAddressById(orders.get(i).getA_id());
					List orderlist=new ArrayList();
					orderlist.add(orders.get(i));
					orderlist.add(ware);
					orderlist.add(address);	
					list.add(orderlist);
				}
				System.out.println(list);
				req.setAttribute("list", list);
			}
		}
		if (ostart=="" && state!="5" && number=="") {
			int ostate=Integer.parseInt(state);
//			int onumber=Integer.parseInt(number);
			String date1=ostart+" 00:00:00";
			String date2=oend+" 23:59:59";
			List<Order> orders=orderService.findOrdersByState(ostate);
			List list=new ArrayList();
			if (orders==null||orders.size()==0) {
				req.setAttribute("msg", "很遗憾，没有符合条件的订单！");
			}else {
				for (int i = 0; i < orders.size(); i++) {
					Ware ware=wareService.findWareById(orders.get(i).getW_id());
					Address address=addressService.findAddressById(orders.get(i).getA_id());
					List orderlist=new ArrayList();
					orderlist.add(orders.get(i));
					orderlist.add(ware);
					orderlist.add(address);	
					list.add(orderlist);
				}
				System.out.println(list);
				req.setAttribute("list", list);
			}
		}
		req.getRequestDispatcher("/Manager/order-list.jsp").forward(req, resp);
	}

	/**
	 * 查看所有订单
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void findAllOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Order> orders=orderService.findAllOrders();
		List list=new ArrayList();
		if (orders==null || orders.size()==0) {
			req.setAttribute("msg", "尚未有订单！");
		}else {
			for (int i = 0; i < orders.size(); i++) {
				Ware ware=wareService.findWareById(orders.get(i).getW_id());
				Address address=addressService.findAddressById(orders.get(i).getA_id());
				List orderlist=new ArrayList();
				orderlist.add(orders.get(i));
				orderlist.add(ware);
				orderlist.add(address);	
				list.add(orderlist);
			}
			System.out.println(list);
			req.setAttribute("list", list);
		}
		req.getRequestDispatcher("/Manager/order-list.jsp").forward(req, resp);
	}
}
