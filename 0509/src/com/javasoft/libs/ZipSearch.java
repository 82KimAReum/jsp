package com.javasoft.libs;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.javasoft.libs.models.ZipcodeVO;

public class ZipSearch extends TagSupport {
	private String key;

	public void setKey(String key) {
		this.key = key;
	}
	public int doStartTag()throws JspException{
		if(!this.key.equals("")) {
		Reader reader;
		try {
			reader = Resources.getResourceAsReader("mybatis-config.xml");
		
			SqlSession sqlSession= new SqlSessionFactoryBuilder().build(reader).openSession();
			Map<String,Object> map=new HashMap();
			map.put("dongname",this.key);
			sqlSession.selectList("Zipcode.selectZipcode",map);
			List<ZipcodeVO> list=(List<ZipcodeVO>)map.get("results");
			JspWriter out=pageContext.getOut();
			out.println("<select>");
			out.println("<option>--선택--</option>");
			for(ZipcodeVO zip:list) {
				out.println("<option>"+zip.toString() +"</option>");
			}
			out.println("</select>");
		} catch (Exception e) {
			throw new JspException(e);
		}
		
		}
		return this.SKIP_BODY;
	}
	public int doEndTag()throws JspException{
		return this.EVAL_PAGE;
	}
}
