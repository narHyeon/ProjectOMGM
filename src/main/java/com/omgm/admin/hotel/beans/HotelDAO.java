package com.omgm.admin.hotel.beans;

import com.omgm.admin.mall.beans.MallFeedVO;
import com.omgm.admin.mall.beans.OrderVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class HotelDAO {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    //객실 목록보기
    public List<HotelVO> getHotelList(){ return sqlSessionTemplate.selectList("HotelDAO.getHotelList"); }

    // 객실 목록삭제
    public void deleteHotel(HotelVO vo) {sqlSessionTemplate.delete("HotelDAO.deleteHotel", vo);}

    // 객실 등록
    public void insertHotel(HotelVO vo) {
        sqlSessionTemplate.insert("HotelDAO.insertHotel", vo);
    }
}
