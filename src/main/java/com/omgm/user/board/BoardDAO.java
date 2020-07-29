package com.omgm.user.board;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public void insertBoard(com.omgm.user.board.BoardVO vo) {
        System.out.println("---> MyBatis로 insertBoard() 기능 처리");
        sqlSessionTemplate.insert("BoardDAO.insertBoard", vo);
    }
    public void updateBoard(com.omgm.user.board.BoardVO vo) {
        System.out.println("---> MyBatis로 updateBoard() 기능 처리");
        sqlSessionTemplate.update("BoardDAO.updateBoard", vo);
    }
    public void deleteBoard(com.omgm.user.board.BoardVO vo) {
        System.out.println("---> MyBatis로 deleteBoard() 기능 처리");
        sqlSessionTemplate.delete("BoardDAO.deleteBoard", vo);
    }
    public com.omgm.user.board.BoardVO getBoard(com.omgm.user.board.BoardVO vo) {
        System.out.println("---> MyBatis로 getBoard() 기능 처리");
        return (com.omgm.user.board.BoardVO) sqlSessionTemplate.selectOne("BoardDAO.getBoard", vo);
    }
    public List<com.omgm.user.board.BoardVO> getBoardList(com.omgm.user.board.BoardVO vo) {
        System.out.println("---> MyBatis로 getBoardList() 기능 처리");
        return sqlSessionTemplate.selectList("BoardDAO.getBoardList", vo);
    }


}
