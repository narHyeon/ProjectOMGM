package com.omgm.admin.hotel.controller;

import com.omgm.admin.hotel.beans.HotelVO;
import com.omgm.admin.hotel.service.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;

@Controller
public class HotelController {

    @Autowired
    HotelService hotelService;

    // 객실등록 파일 업로드
    String fileName;

    // 호텔 예약현황 페이지 이동
    @RequestMapping(value="/hotelReservation.mdo")
    public ModelAndView kinderGarden(HotelVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/hotel/hotelReservation");
        return mav;
    }


    // 객실 목록 출력 페이지 이동
    @RequestMapping(value="/hotelList.mdo")
    public ModelAndView hotelList(HotelVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/hotel/room");
        mav.addObject("hotel",hotelService.getHotelList());
        return mav;
    }

    // 객실 목록 삭제 컨트롤러
    @RequestMapping("/deleteHotel.mdo")
    public ModelAndView deleteHotel(HotelVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();
        System.out.println("삭제 실행");
        hotelService.deleteHotel(vo);
        System.out.println("삭제 실행2");
        mav.setViewName("redirect:/hotelList.mdo");
        return mav;
    }

    // 객실 등록 컨트롤러
    @RequestMapping("/insertHotel.mdo")
    public ModelAndView insertHotel(HotelVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();
        MultipartFile hotel_uploadFile = vo.getHotel_uploadFile();
        if(!hotel_uploadFile.isEmpty()) {
            this.fileName = hotel_uploadFile.getOriginalFilename();
            hotel_uploadFile.transferTo(new File("C:\\Users\\Jury\\Desktop\\Img\\" + fileName));
            hotel_uploadFile.transferTo(new File("C:\\ProjectOMGM\\src\\main\\webapp\\resources\\img\\hotel" + fileName));
        }else{
            this.fileName = "cat.jpg";
        }
        vo.setHotelImg(fileName);
        hotelService.insertHotel(vo);
        mav.setViewName("redirect:/hotelList.mdo");
        return mav;
    }
}
