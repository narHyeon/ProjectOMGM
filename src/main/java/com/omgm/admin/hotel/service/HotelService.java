package com.omgm.admin.hotel.service;

import com.omgm.admin.hotel.beans.HotelVO;

import java.util.List;

public interface HotelService {

    //객실 목록 출력
    List<HotelVO> getHotelList() throws Exception;

    //객실 목록 삭제
    void deleteHotel(HotelVO vo) throws Exception;

    //객실등록
    void insertHotel(HotelVO vo) throws Exception;


}
