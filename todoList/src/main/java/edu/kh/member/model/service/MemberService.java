package edu.kh.member.model.service;

import static edu.kh.todo.common.JDBCTemplate.*;

import java.sql.Connection;

import edu.kh.todo.common.JDBCTemplate;
import edu.kh.member.model.dao.MemberDAO;
import edu.kh.member.model.dto.Member;

public class MemberService {

	private MemberDAO dao = new MemberDAO();
	
	public Member login(String inputId, String inputPw) {
		
		Connection conn = getConnection();
		
		Member loginMember = dao.login(conn, inputId, inputPw);
		
		close(conn);
		
		return loginMember;
	}

}
