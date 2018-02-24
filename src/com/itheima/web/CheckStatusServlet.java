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


public class CheckStatusServlet extends HttpServlet {
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setContentType("text/json;charset=utf-8");
			
			//1 获取用户的请求参数，订单号
			String orderId = request.getParameter("orderId");
			
			//2 填写商户信息
			Map<String, String> param = new HashMap<String, String>();
			param.put("appid", PayConfig.appid); // 公众号的唯一标识
			param.put("mch_id", PayConfig.partner); //商户的账号
			param.put("out_trade_no",orderId); // 订单号
			param.put("nonce_str", WXPayUtil.generateNonceStr()); //随机字符串
			
			//3 数字签名与把上面参数写成xml格式
			String xml = WXPayUtil.generateSignedXml(param, PayConfig.partnerkey);
		
			//4 把信息发送给微信支付后台
			HttpClient client = new HttpClient("https://api.mch.weixin.qq.com/pay/orderquery");
			client.setHttps(true);
			client.setXmlParam(xml);
			
			long startTime = System.currentTimeMillis(); //定义一个变量记录开始发送请求的时间
			
			while(true){
				//发送请求
				client.post();
				
				
				//5 获取微信支付的返回值
				String content = client.getContent();
				//把xml转换map对象
				Map<String,String> resultMap = WXPayUtil.xmlToMap(content);
				
				
				//把map转换成json向页面输出
				Gson gson = new Gson();
				String json = gson.toJson(resultMap);
				
				//情况一：用户已经支付
				if("success".equalsIgnoreCase(resultMap.get("trade_state"))){
					response.getWriter().write(json);  // trade_state=success 
					break;
				}
				
				//情况2： 超过30秒用户还是没有支付
				if(System.currentTimeMillis()-startTime>30000){
					response.getWriter().write(json);  // trade_state=NOTPAY
					break;
				}
				
				
				Thread.sleep(3000);
			}
		
		
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
