package com.omgm.admin.mall.service;

import com.omgm.admin.mall.beans.MallOrderVO;
import com.omgm.admin.mall.beans.MallToyVO;

import java.util.List;


public interface MallService {

    void insertMallToy(MallToyVO vo) throws Exception;
    List<MallToyVO> getMallToyList() throws Exception;

    //관리자 주문목록페이지
    void insertMallOrder(MallOrderVO vo) throws Exception;
    List<MallOrderVO> getMallOrderList() throws Exception;
    void deleteMallOrder(MallOrderVO vo) throws Exception;


}
