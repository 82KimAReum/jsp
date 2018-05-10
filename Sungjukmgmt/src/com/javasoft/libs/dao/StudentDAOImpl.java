package com.javasoft.libs.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.javasoft.libs.models.StudentVO;

public class StudentDAOImpl implements StudentDAO {
	private SqlSession mybatis; 
	
	public StudentDAOImpl() {
		this.mybatis = SqlSessionFactoryBean.getInstance();
	}
	
	@Override
	public void insert(StudentVO studentVO) {
		//this.mybatis.insert("Student.insert", studentVO);
		//this.mybatis.commit();
		this.mybatis.insert("Student.insertSP", studentVO);
	}

	@Override
	public List<StudentVO> selectAll() {
		return this.mybatis.selectList("Student.selectAll");
	}

	@Override
	public void selectAllSP(Map map) {
		this.mybatis.selectList("Student.selectAllSP", map);
	}
	
	@Override
	public StudentVO selectOne(String hakbun) {
		return this.mybatis.selectOne("Student.selectOne", hakbun);
	}

	@Override
	public void selectOneSP(Map map) {
		this.mybatis.selectOne("Student.selectOneSP", map);
	}
	
	@Override
	public void update(StudentVO studentVO) {
		//this.mybatis.update("Student.update", studentVO);
		//this.mybatis.commit();
		this.mybatis.update("Student.updateSP", studentVO);
	}

	@Override
	public void delete(String hakbun) {
		//this.mybatis.delete("Student.delete", hakbun);
		//this.mybatis.commit();
		this.mybatis.delete("Student.deleteSP", hakbun);
	}
	

}
