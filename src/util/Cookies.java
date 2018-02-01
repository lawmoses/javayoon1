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
				//쿠키가 맵으로 저장되어 있는 상태이다
				//name1, name2를 키로 하고, value를 쿠키 객체로 하고있다.
				//네임별로 각각의 쿠키 오브젝트 주소를 가지고 있는것
			}
		}
	}
	
	public Cookie getCookies(String name) {
		return cookieMap.get(name);
		// 해당되는 맵에서 쿠키를 가져 오는 것이다.
		//키만 넝ㅎ으면 해당되는 쿠키가 리턴 되는것
	}
	
	public String getValue(String name)throws IOException {
		Cookie cookie = cookieMap.get(name);
		//이 것의 리턴타입은 Cookie이다.
		//겟네임에 의해서 쿠키가 날라온것
		if(cookie == null) {
			return null;
		}
		return URLDecoder.decode(cookie.getValue(),"EUC-KR");
	}
	
	public boolean exists(String name) {
		return cookieMap.get(name) != null;
		//널이 아니라는 것은 있다는 뜻
		//해당되는 키값을 가지고 있는 쿠키가 있는지 물어보는 것
	}
	
	public static Cookie createCookie(String name, String value)
	throws IOException {
		return new Cookie(name, URLEncoder.encode(value,"EUC-KR"));
		//해당되는 쿠키를 리턴하고 그 쿠키를 리턴하는 것
		//키하고 벨류만 있는 것
	}
	
	public static Cookie createCookie(String name, String value, String path, int maxAge) 
	throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value,"EUC-KR"));
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		return cookie;
	}
	//쿠키 path, 파라메터가 세개짜리, 네개짜리, 다섯개짜리, 오버라이딩
	
	public static Cookie createCookie(String name, String value, String domain, String path, int maxAge)
	throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value,"EUC-KR"));
		cookie.setDomain(domain);
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		return cookie;
	}
}
