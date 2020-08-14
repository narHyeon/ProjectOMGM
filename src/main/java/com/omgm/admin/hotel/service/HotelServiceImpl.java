package com.omgm.admin.hotel.service;

import com.omgm.admin.hotel.beans.HotelDAO;
import com.omgm.admin.hotel.beans.HotelVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("hotelService")
public class HotelServiceImpl implements HotelService{

    @Autowired
    HotelDAO hotelDAO;

    //객실 목록보기
    @Override
    public List<HotelVO> getHotelList() throws Exception {
        return hotelDAO.getHotelList();
    }

    // 객실 목록삭제
    @Override
    public void deleteHotel(HotelVO vo) throws Exception {
        hotelDAO.deleteHotel(vo);
    }

    // 객실등록
    @Override
    public void insertHotel(HotelVO vo) throws Exception {
        hotelDAO.insertHotel(vo);
    }


}
