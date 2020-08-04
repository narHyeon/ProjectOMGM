package com.omgm.admin.mall.service;

import com.omgm.admin.mall.beans.MallOrderVO;
import com.omgm.admin.mall.beans.MallFeedVO;
import com.omgm.admin.mall.beans.MallToyVO;

import java.util.List;


public interface MallService {

    // 토이 관련 서비스
    void deleteMallToy(MallToyVO vo) throws Exception;
    void insertMallToy(MallToyVO vo) throws Exception;
    void updateMallToy(MallToyVO vo) throws Exception;
    List<MallToyVO> getMallToyList() throws Exception;

    //상품관련 정보 페이지 불러오기
    MallToyVO getMallToyOne(MallToyVO vo) throws Exception;
    MallFeedVO getMallFeedOne(MallFeedVO vo) throws Exception;
    void insertMallFeed(MallFeedVO vo) throws Exception;


    //관리자 주문목록페이지
    void insertMallOrder(MallOrderVO vo) throws Exception;
    List<MallOrderVO> getMallOrderList() throws Exception;
    void deleteMallOrder(MallOrderVO vo) throws Exception;
    List<MallFeedVO> getMallFeedList() throws Exception;

}
