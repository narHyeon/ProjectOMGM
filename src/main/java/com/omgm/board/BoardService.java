package com.omgm.board;

import java.util.List;

public interface BoardService {
    void insertBoard(com.omgm.board.BoardVO vo);
    void updateBoard(com.omgm.board.BoardVO vo);
    void deleteBoard(com.omgm.board.BoardVO vo);
    com.omgm.board.BoardVO getBoard(com.omgm.board.BoardVO vo);
    List<com.omgm.board.BoardVO> getBoardList(com.omgm.board.BoardVO vo);
}
