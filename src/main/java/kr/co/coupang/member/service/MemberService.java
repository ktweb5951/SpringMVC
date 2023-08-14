package kr.co.coupang.member.service;

import java.util.List;

import kr.co.coupang.member.domain.Member;


public interface MemberService {
	
	
	/**
	 * ¸â¹ö µî·Ï Service 
	 * @param member
	 * @return int
	 */
	public int registerMember(Member member);
	/**
	 * È¸¿ø Å»Åð Service
	 * @param memberId
	 * @return int
	 */
	public int removeMember(String memberId);
	/**
	 * ¸â¹ö ·Î±×ÀÎ Service
	 * @param member
	 * @return member°´Ã¼
	 */
	public Member memberLoginCheck(Member member);
	
	/**
	 * È¸¿ø »ó¼¼ Á¶È¸ Service
	 * @param memberId
	 * @return member°´Ã¼
	 */
	public Member showOneById(String memberId);
	
	
	public int modifyMember(Member member);
	
	public List<Member> showAllMembers();
}
