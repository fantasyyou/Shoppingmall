package com.project.tool;
import java.util.Random;

import com.montnets.mwgate.common.GlobalParams;
import com.montnets.mwgate.common.Message;
import com.montnets.mwgate.smsutil.ConfigManager;
import com.montnets.mwgate.smsutil.SmsSendConn;
public class VerificationCode 
  {
    public String getCode()  //������֤��ķ���                        
      { 
        Random rand=new Random(System.nanoTime());    //�����������
	    char[] code=new char[6];
	    for(int i=0;i<6;i++)
	      {
	        int v=rand.nextInt(9);  //����0-9��һ����
	        code[i]=(char)('0'+v);
	      }
	    return new String(code);
      }
    public void sendCode(String code)
	   {   
		  GlobalParams globalParams=new GlobalParams();
		  globalParams.setNeedLog(1);  //������־
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
					System.out.println("�����û��˺���Ϣ�ɹ���");
				} else {
					System.out.println("�����û��˺���Ϣʧ�ܣ������룺" + result);
				}
		  } catch (Exception e) {
				e.printStackTrace();
			}
		  boolean isKeepAlive = false;
		  SmsSendConn smsSendConn = new SmsSendConn(isKeepAlive);
		  try {
				Message message = new Message();
				message.setUserid(userid);
				message.setMobile("17743911675");  //�����ֻ���
				message.setContent("������֤����"+code+"����3��������Ч����Ǳ��˲�������Ա����š�");  //��������
				StringBuffer returnValue = new StringBuffer();
				int results = -310099;
				results = smsSendConn.singleSend(message,returnValue);  //������֤��
				if (results == 0) {
					System.out.println("���������ύ�ɹ���");
					System.out.println(returnValue.toString());
				}
				else {
					System.out.println("���������ύʧ��,�����룺" + results);
				}
		  } catch (Exception e) {
				e.printStackTrace();
			}
	   }
  }