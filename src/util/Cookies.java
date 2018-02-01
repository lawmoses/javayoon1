package util;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Map;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class Cookies {
	private Map<String, Cookie> cookieMap = new java.util.HashMap<String, Cookie>();
	
	public Cookies(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(int i = 0 ; i < cookies.length ; i++) {
				cookieMap.put(cookies[i].getName(),cookies[i]);
				//��Ű�� ������ ����Ǿ� �ִ� �����̴�
				//name1, name2�� Ű�� �ϰ�, value�� ��Ű ��ü�� �ϰ��ִ�.
				//���Ӻ��� ������ ��Ű ������Ʈ �ּҸ� ������ �ִ°�
			}
		}
	}
	
	public Cookie getCookies(String name) {
		return cookieMap.get(name);
		// �ش�Ǵ� �ʿ��� ��Ű�� ���� ���� ���̴�.
		//Ű�� �դ����� �ش�Ǵ� ��Ű�� ���� �Ǵ°�
	}
	
	public String getValue(String name)throws IOException {
		Cookie cookie = cookieMap.get(name);
		//�� ���� ����Ÿ���� Cookie�̴�.
		//�ٳ��ӿ� ���ؼ� ��Ű�� ����°�
		if(cookie == null) {
			return null;
		}
		return URLDecoder.decode(cookie.getValue(),"EUC-KR");
	}
	
	public boolean exists(String name) {
		return cookieMap.get(name) != null;
		//���� �ƴ϶�� ���� �ִٴ� ��
		//�ش�Ǵ� Ű���� ������ �ִ� ��Ű�� �ִ��� ����� ��
	}
	
	public static Cookie createCookie(String name, String value)
	throws IOException {
		return new Cookie(name, URLEncoder.encode(value,"EUC-KR"));
		//�ش�Ǵ� ��Ű�� �����ϰ� �� ��Ű�� �����ϴ� ��
		//Ű�ϰ� ������ �ִ� ��
	}
	
	public static Cookie createCookie(String name, String value, String path, int maxAge) 
	throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value,"EUC-KR"));
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		return cookie;
	}
	//��Ű path, �Ķ���Ͱ� ����¥��, �װ�¥��, �ټ���¥��, �������̵�
	
	public static Cookie createCookie(String name, String value, String domain, String path, int maxAge)
	throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value,"EUC-KR"));
		cookie.setDomain(domain);
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		return cookie;
	}
}
