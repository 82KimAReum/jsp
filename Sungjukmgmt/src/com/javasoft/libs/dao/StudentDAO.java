package com.javasoft.libs.dao;

import java.util.List;
import java.util.Map;

import com.javasoft.libs.models.StudentVO;

public interface StudentDAO {

	void insert(StudentVO studentVO);
	List<StudentVO> selectAll();
	StudentVO selectOne(String hakbun);
	void update(StudentVO studentVO);
	void delete(String hakbun);
	void selectOneSP(Map map);//map으로 들어와서 리턴 없음
	void selectAllSP(Map map);
} 
