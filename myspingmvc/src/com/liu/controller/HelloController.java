package com.liu.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
