package com.omgm.admin.mall.service;

import com.omgm.admin.mall.beans.MallOrderVO;
import com.omgm.admin.mall.beans.MallFeedVO;
import com.omgm.admin.mall.beans.MallToyVO;
import com.omgm.admin.mall.beans.OrderVO;

import java.util.List;


public interface MallService {

    // 토이 관련 서비스
    void deleteMallToy(MallToyVO vo) throws Exception; // 장난감 등록 삭제
    void insertMallToy(MallToyVO vo) throws Exception; // 장난감 등록
    void updateMallToy(MallToyVO vo) throws Exception; // 장난감 정보 수정
    List<MallToyVO> getMallToyList() throws Exception; // 장난감 목록 나열
    MallToyVO getMallToyOne(MallToyVO vo) throws Exception; // 장난감 상세정보 페이지

    // 사료 관련 서비스
    void insertMallFeed(MallFeedVO vo) throws Exception; // 사료 등록
    void updateMallFeed(MallFeedVO vo) throws Exception; // 사료 정보 수정
    void deleteMallFeed(MallFeedVO vo) throws Exception; // 사료 등록 삭제
    List<MallFeedVO> getMallFeedList() throws Exception; // 사료 목록 나열
    MallFeedVO getMallFeedOne(MallFeedVO vo) throws Exception; // 사료 상세정보 페이지


    //관리자 주문목록페이지(상세보기) 관련 서비스
    void insertMallOrder(MallOrderVO vo) throws Exception;
    List<MallOrderVO> getMallOrderList(MallOrderVO vo) throws Exception;
    void deleteMallOrder(MallOrderVO vo) throws Exception;

   //관리자 주문목록페이지 관련 서비스
   List<OrderVO> getOrderList() throws Exception;
   void deleteOrder(OrderVO vo) throws Exception;

}
