package com.waait.mypage.model.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.waait.mypage.model.dao.MypageDao;
import com.waait.mypage.model.dto.Mypage;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class MypageServiceImpl implements MypageService {
	
	private final MypageDao dao;
	private final SqlSession session;

	@Override
	public String selectByEmpNo(String empNo) {
		return dao.selectByEmpNo(session,empNo);
	}

	@Override
	public int newEmpPwd(Mypage m) {
		return dao.newEmpPwd(session,m);
	}	
	
	

}
