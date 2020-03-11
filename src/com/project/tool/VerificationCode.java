package com.project.tool;
import java.util.Random;

import com.montnets.mwgate.common.GlobalParams;
import com.montnets.mwgate.common.Message;
import com.montnets.mwgate.smsutil.ConfigManager;
import com.montnets.mwgate.smsutil.SmsSendConn;
public class VerificationCode 
  {
    public String getCode()  //生成验证码的方法                        
      { 
        Random rand=new Random(System.nanoTime());    //随机数生产器
	    char[] code=new char[6];
	    for(int i=0;i<6;i++)
	      {
	        int v=rand.nextInt(9);  //生成0-9的一个数
	        code[i]=(char)('0'+v);
	      }
	    return new String(code);
      }
    public void sendCode(String code)
	   {   
		  GlobalParams globalParams=new GlobalParams();
		  globalParams.setNeedLog(1);  //生成日志
		  ConfigManager.setGlobalParams(globalParams);
		  String userid="E104IN";   
		  String password="3YnT4C";
		  int priority = 1;
		  String ipAddress1 = "api01.monyun.cn:7901";
          String ipAddress2 = null;
		  String ipAddress3 = null;
		  String ipAddress4 = null;
	      int result = -310007;
		  try {
				result = ConfigManager.setAccountInfo(userid, password, priority,
						ipAddress1,ipAddress2, ipAddress3,ipAddress4);
				if (result == 0) {
					System.out.println("设置用户账号信息成功！");
				} else {
					System.out.println("设置用户账号信息失败，错误码：" + result);
				}
		  } catch (Exception e) {
				e.printStackTrace();
			}
		  boolean isKeepAlive = false;
		  SmsSendConn smsSendConn = new SmsSendConn(isKeepAlive);
		  try {
				Message message = new Message();
				message.setUserid(userid);
				message.setMobile("17743911675");  //发送手机号
				message.setContent("您的验证码是"+code+"，在3分钟内有效。如非本人操作请忽略本短信。");  //短信内容
				StringBuffer returnValue = new StringBuffer();
				int results = -310099;
				results = smsSendConn.singleSend(message,returnValue);  //发送验证码
				if (results == 0) {
					System.out.println("单条发送提交成功！");
					System.out.println(returnValue.toString());
				}
				else {
					System.out.println("单条发送提交失败,错误码：" + results);
				}
		  } catch (Exception e) {
				e.printStackTrace();
			}
	   }
  }