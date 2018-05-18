package com.javasoft.libs.models;

import java.util.List;
import java.util.Vector;

public interface GesipanDAO {
	List<GesipanVO> selectAll();
	
	GesipanVO selectOne(int idx);
	int selectCount();
	String selectFilename(int idx);
	void insert(GesipanVO gesipan);
	void replyInsert(GesipanVO gesipan);
	void readcountUpdate(int idx);
	void update(GesipanVO gesipan);
	void replyUpdate(int grp, int step);
	void delete(int idx);
}
