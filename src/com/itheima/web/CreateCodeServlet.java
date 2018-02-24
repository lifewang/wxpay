package com.itheima.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.github.wxpay.sdk.WXPayUtil;
import com.google.gson.Gson;
import com.itheima.util.HttpClient;
import com.itheima.util.PayConfig;

public class CreateCodeServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//1 获取用户的请求参数
			String pname = request.getParameter("pname"); // 商品的名称
			String price = request.getParameter("price"); //要支付的金额
			
			//2 编写商户的信息
			Map<String, String> param = new HashMap<String, String>();
			param.put("appid", PayConfig.appid);// 公众号id
			param.put("mch_id", PayConfig.partner);  //商户的账号
			param.put("nonce_str", WXPayUtil.generateNonceStr()); //随机字符串
			param.put("body", pname); //商品描述
			String orderId = WXPayUtil.generateNonceStr(); // 订单号
			param.put("out_trade_no", orderId);
			param.put("total_fee", price); // 支付的金额 , 单位是分
			param.put("spbill_create_ip", "192.168.2.230"); // ip地址
			param.put("notify_url", PayConfig.notifyurl); //通知地址 
			param.put("trade_type", "NATIVE"); //交易类型
			
			//3 生成数字签名， 同时把上面的参数都编写成xml格式的数据
			String xml = WXPayUtil.generateSignedXml(param, PayConfig.partnerkey);
			
			
			//4 把这些信息发送给微信支付后台
			String url = "https://api.mch.weixin.qq.com/pay/unifiedorder";
			HttpClient client  = new HttpClient(url);
			client.setHttps(true);//开启https协议
			client.setXmlParam(xml);//设置xml格式的数据
			
		
			client.post();//发送请求
			
			//5 获取微信支付后台返回的数据
			String content = client.getContent();
			Map<String,String> resultMap = WXPayUtil.xmlToMap(content);//把返回的数据转换成map集合
			resultMap.put("orderId", orderId);
			resultMap.put("money", price);
			
			
			//6 把map集合转换成json格式的数据，然后写出
			Gson gson = new Gson();
			String json = gson.toJson(resultMap);
			
			response.setContentType("text/json;charset=utf-8");
			response.getWriter().write(json);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
