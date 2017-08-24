package com.mysite.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.mysite.vo.BoardVo;

@Repository
public class BoardDao {
	@Autowired
	private SqlSession sqlSession;
	
	public List<BoardVo> getlist() {

		return sqlSession.selectList("board.getlist");
		
	}
	
	public int insert(BoardVo vo){
		System.out.println("다오 vo 값 :ㅣ"+vo.toString());
		return sqlSession.insert("board.insert", vo);
		
	}
	public int delete(int no){
		
		return sqlSession.delete("board.delete",no);
		
	}
	public int delete2(BoardVo vo,int no){
		sqlSession.delete("board.delete3", no);
		return sqlSession.delete("board.delete2",vo);
		
	}
	public BoardVo selectbyno(int no){
		
		return sqlSession.selectOne("board.selectOne", no);
		
	}
	public int updatehit(int no){
		System.out.println(no);
		return sqlSession.update("board.updatehit", no);
		
	}
	
	
	public int update(BoardVo vo){
	
		return sqlSession.update("board.update", vo);
	}
	
	public BoardVo selectreplyboard(int no){
		
		return sqlSession.selectOne("board.selectreplyboard",no);
	}
	
	
	public int replywrite(BoardVo vo){
		
		return sqlSession.insert("board.replywrite", vo);
	}
	public int  updateordern(BoardVo vo) {
		System.out.println("업데이트"+vo.toString());
		return sqlSession.update("board.updateordern",vo);
	}
		
}
