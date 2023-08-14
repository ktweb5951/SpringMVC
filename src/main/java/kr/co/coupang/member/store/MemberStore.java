package kr.co.coupang.member.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.coupang.member.domain.Member;


public interface MemberStore {

	public int insertMember(SqlSession sqlSession, Member member);
	public int deleteMember(SqlSession sqlSession, String memberId);
	public int updateMember(SqlSession sqlSession, Member member);
	public Member selectMemberLogin(SqlSession sqlSession, Member member);
	public Member selectOneById(SqlSession sqlSession, String memberId);
	public List<Member> selectAllMembers(SqlSession sqlSession);

}
