package com.liu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.liu.model.ProductBean;

@Controller
public class HelloController {
	@RequestMapping("/login")
	public ModelAndView login(){
		String str = "Spuing Mvc 示例";
		return new ModelAndView("message", "str", str);
	}
	
	@RequestMapping("/main")
	public ModelAndView main(){
		List<ProductBean> listAProduct = getList();		
		return new ModelAndView("main", "listProduct", listAProduct);
	}
	@RequestMapping("/desc")
	public ModelAndView desc(){
		
		return new ModelAndView("description");
	}
	
	@RequestMapping("/shopCar")
	public ModelAndView shopCar(){
		return new ModelAndView("shoppingcart");
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/main", method = RequestMethod.POST)
	private String getAjax(HttpServletRequest req, HttpServletResponse por) {
		// TODO Auto-generated method stub
//		System.out.println(req.getParameter("username"));
		return "this is ajax demo";
	}
	/**
	 *暂时模拟mysql
	 * @return  所有数据的集合   
	 */
	private List<ProductBean> getList() { 
		// TODO Auto-generated method stub
		List<ProductBean> list = null;
		ProductBean bean = new ProductBean();
//		beanse = "this is one";
		bean.setName("this is one");	
		return list;
	}
}
