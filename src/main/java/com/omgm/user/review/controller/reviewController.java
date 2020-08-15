package com.omgm.user.review.controller;

import com.omgm.admin.room.beans.RoomVO_M;
import com.omgm.admin.room.service.RoomService_M;
import com.omgm.user.catcarelog.beans.CatCareLogVO;
import com.omgm.user.catcarelog.service.CatCareLogService;
import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.review.beans.ReviewReplyVO;
import com.omgm.user.review.beans.ReviewVO;
import com.omgm.user.review.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

@Controller
public class reviewController {

    @Autowired
    private ReviewService reviewService;
    private String save_folder;

    // 이용후기 글쓰기 페이지로 이동
    @RequestMapping(value="/reviewWrite.do")
    public ModelAndView reviewWrite(ReviewVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/review/reviewWrite");
        return mav;
    }

    //이용후기 리스트 페이지 이동
    @RequestMapping(value="/reviewListBoard.do", method = RequestMethod.GET)
    public ModelAndView reviewListBoard(ReviewVO vo, @RequestParam(value="page", defaultValue = "1") int page) {
        ModelAndView mav = new ModelAndView();
        int COUNTPERPAGE = 9; // 페이지당 2개의 글
        int PAGEPERGROUP = 5; // 페이지 그룹당 3개의 페이지

        PageNavigator navi = new PageNavigator(COUNTPERPAGE, PAGEPERGROUP, page, reviewService.selectCount());
        mav.setViewName("/review/reviewListBoard");
        List<ReviewVO> list = reviewService.getListRoom(vo, navi);
        System.out.println(list);
        mav.addObject("reviewList",list);
        mav.addObject("navi",navi);
        vo.setCnt(page);
        mav.addObject("page",vo);
        mav.setViewName("/review/reviewListBoard");
        return mav;
    }

    // 이용후기 본문 페이지 이동
    @RequestMapping(value="/reviewContent.do")
    public ModelAndView reviewContent(ReviewVO vo, ReviewReplyVO rvo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/review/reviewContent");
        rvo.setBoardSeq(vo.getSeq());

        reviewService.addCount(vo);

        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd : HH:mm");
        List<ReviewReplyVO> list = reviewService.getReviewReply(rvo);
        for(ReviewReplyVO li : list) li.setFormatDate(dateFormat.format(li.getRegDate()));

        vo = reviewService.getReview(vo);
        vo.setFormatDate(dateFormat.format(vo.getRegDate()));
        if(vo.getPrevDate() != null) vo.setFormatPrevDate(dateFormat.format(vo.getPrevDate()));
        if(vo.getNextDate() != null) vo.setFormatNextDate(dateFormat.format(vo.getNextDate()));

        mav.addObject("review",vo);
        mav.addObject("reply",list);
        return mav;
    }

    // 이용후기 댓글 주고받기
    @ResponseBody
    @RequestMapping(value = "/reviewContentReply.do")
    public ModelAndView map(@RequestBody ReviewReplyVO rvo) {
        ModelAndView mav = new ModelAndView();

        // DB INSERT Reply 작업
        reviewService.addReview(rvo); // 댓글 데이터베이스 넣기
        mav.setViewName("/review/reviewContent");
        return mav;
    }

    //리뷰 게시판 입력하기
    @RequestMapping(value="/insertReviewBoard.do")
    public ModelAndView insertReviewBoard(ReviewVO vo) {
        ModelAndView mav = new ModelAndView();
        reviewService.insertReviewBoard(vo);

//        List<ReviewVO> list = reviewService.getListRoom(vo);
//
//        mav.addObject("roomList",list);
        mav.setViewName("redirect:/reviewListBoard.do");
        return mav;
    }

    @ResponseBody
    @PostMapping("/reviewWriteTest.do")
    public void reviewWriteTest(MultipartFile file, HttpServletRequest request,
                             HttpServletResponse response) throws Exception {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        String file_name = file.getOriginalFilename();
        String server_file_name = fileDBName(file_name, save_folder);
        System.out.println("server file : " + server_file_name);
        file.transferTo(new File(save_folder + server_file_name));
        out.println("resources/admin/img"+server_file_name);
        out.close();
    }
    private String fileDBName(String fileName, String saveFolder) {
        Calendar c = Calendar.getInstance();
        int year = c.get(Calendar.YEAR);
        int month = c.get(Calendar.MONTH);
        int date = c.get(Calendar.DATE);

        String homedir = saveFolder + year + "-" + month + "-" + date;
        System.out.println( homedir);
        File path1 = new File(homedir);
        if (!(path1.exists())) {
            path1.mkdir();
        }
        Random r = new Random();
        int random = r.nextInt(100000000);

        int index = fileName.lastIndexOf(".");

        String fileExtension = fileName.substring(index + 1);
        System.out.println("fileExtension = " + fileExtension);

        String refileName = "bbs" + year + month + date + random + "." + fileExtension;
        System.out.println("refileName = " + refileName);

        String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
        System.out.println("fileDBName = " + fileDBName);

        return fileDBName;
    }

//    //RoomController_m
//    @RequestMapping(value = "/reviewListBoardTEST.do" , method = RequestMethod.GET)
//    public ModelAndView getRoomList(ReviewVO vo, ModelAndView mav) {
//        List<ReviewVO> list = reviewService.getListRoom(vo);
//        mav.addObject("roomList",list);
//        mav.setViewName("redirect:/reviewListBoard.do");
//        return mav;
//    }



}
