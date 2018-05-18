package com.javasoft.libs.models;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class GesipanDAOImpl implements GesipanDAO {
	private SqlSession mybatis;
	public GesipanDAOImpl() {
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader("mybatis-config.xml");
			this.mybatis = new SqlSessionFactoryBuilder().build(reader).openSession();
		}catch(Exception ex) {
			System.out.println(ex);
		}
	}
	@Override
	public List<GesipanVO> selectAll() {
		Map<String, Object> map = new HashMap<String, Object>();
		this.mybatis.selectList("Gesipan.selectAll", map);
		List<GesipanVO> list = (List<GesipanVO>)map.get("results");
		return list;
	}

	@Override
	public GesipanVO selectOne(int idx) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("idx", idx);
		this.mybatis.selectOne("Gesipan.selectOne", map);
		List<GesipanVO> list = (List<GesipanVO>)map.get("results");
		return list.get(0);
	}
	public int selectCount() {
		Map<String,Integer> map=new HashMap<String,Integer>();
		this.mybatis.selectOne("Gesipan.selectCount", map);
		return  map.get("result");
	}
	public String selectFilename(int idx) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("idx", idx);
		this.mybatis.selectOne("Gesipan.selectFilename", map);
		return (String)map.get("filename");
	}
	@Override
	public void insert(GesipanVO gesipan) {
		this.mybatis.insert("Gesipan.insert", gesipan);
	}

	@Override
	public void replyInsert(GesipanVO gesipan) {
		this.mybatis.insert("Gesipan.replyInsert", gesipan);
	}
	
	@Override
	public void readcountUpdate(int idx) {
		this.mybatis.update("Gesipan.readcountUpdate", idx);
	}
	
	@Override
	public void update(GesipanVO gesipan) {
		// TODO Auto-generated method stub

	}

	@Override
	public void replyUpdate(int grp, int step) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("grp", grp);
		map.put("step", step);
		this.mybatis.update("Gesipan.replyUpdate", map);
	}
	
	@Override
	public void delete(int idx) {
		// TODO Auto-generated method stub

	}

}
