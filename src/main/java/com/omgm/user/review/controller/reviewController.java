package com.omgm.user.review.controller;

import com.google.gson.JsonObject;
import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.review.beans.ReviewReplyVO;
import com.omgm.user.review.beans.ReviewVO;
import com.omgm.user.review.service.ReviewService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

@Controller
public class reviewController {

    @Autowired
    private ReviewService reviewService;

    // 이용후기 글쓰기 페이지로 이동
    @RequestMapping(value="/reviewWrite.do")
    public ModelAndView reviewWrite(ReviewVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/review/reviewWrite");
        return mav;
    }

    //이용후기 리스트 페이지 이동
    @RequestMapping(value="/reviewListBoard.do")
    public ModelAndView reviewListBoard(ReviewVO vo,@RequestParam(value="page", defaultValue = "1") int page ) {
        ModelAndView mav = new ModelAndView();

        int COUNTPERPAGE = 9; // 페이지당 2개의 글
        int PAGEPERGROUP = 5; // 페이지 그룹당 3개의 페이지

        PageNavigator navi = new PageNavigator(COUNTPERPAGE, PAGEPERGROUP, page, reviewService.selectCount());
        mav.setViewName("/review/reviewListBoard");
        mav.addObject("reviewList",reviewService.getReviewList(vo, navi));
        mav.addObject("navi",navi);
        return mav;
    }

    // 이용후기 본문 페이지 이동
    @RequestMapping(value="/reviewContent.do")
    public ModelAndView reviewContent(ReviewVO vo, ReviewReplyVO rvo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/review/reviewContent");
        rvo.setBoardSeq(vo.getSeq());
        List<ReviewReplyVO> list = reviewService.getReviewReply(rvo);
        mav.addObject("review",reviewService.getReview(vo));
        mav.addObject("reply",reviewService.getReviewReply(rvo));
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
        mav.setViewName("redirect:/reviewListBoard.do");
        return mav;
    }

    @ResponseBody
    @PostMapping(value="/uploadSummernoteImageFile", produces = "application/json")
    public JsonObject uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile) {

        JsonObject jsonObject = new JsonObject();

        String fileRoot = "C:\\Users\\Jury\\Desktop\\img\\";	//저장될 외부 파일 경로
        String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
        String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자

        String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명

        File targetFile = new File(fileRoot + savedFileName);

        try {
            InputStream fileStream = multipartFile.getInputStream();
            FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
            jsonObject.addProperty("url", "/summernoteImage/"+savedFileName);
            jsonObject.addProperty("responseCode", "success");

        } catch (IOException e) {
            FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
            jsonObject.addProperty("responseCode", "error");
            e.printStackTrace();
        }

        return jsonObject;
    }
}
