package com.omgm.user.board;

import java.util.List;

public interface BoardService {
    void insertBoard(com.omgm.user.board.BoardVO vo);
    void updateBoard(com.omgm.user.board.BoardVO vo);
    void deleteBoard(com.omgm.user.board.BoardVO vo);
    com.omgm.user.board.BoardVO getBoard(com.omgm.user.board.BoardVO vo);
    List<com.omgm.user.board.BoardVO> getBoardList(com.omgm.user.board.BoardVO vo);
}
