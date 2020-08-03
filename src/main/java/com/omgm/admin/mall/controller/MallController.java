package com.omgm.admin.mall.controller;

import com.omgm.admin.mall.beans.MallToyVO;
import com.omgm.admin.mall.service.MallService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;

@Controller
public class MallController {

    @Autowired
    MallService mallService;
    String fileName;
    @RequestMapping("/insertMallToy.mdo")
    public ModelAndView insertMallToy(MallToyVO vo) throws Exception {

        ModelAndView mav = new ModelAndView();
        MultipartFile uploadFile = vo.getUploadFile();
        if(!uploadFile.isEmpty()) {
            this.fileName = uploadFile.getOriginalFilename();
            uploadFile.transferTo(new File("C:\\Users\\YongSun Jang\\Desktop\\메인 프로젝트\\코딩\\mainProject\\src\\main\\webapp\\resources\\img\\product\\" + fileName));
        }
        vo.setToy_img(fileName);
        mallService.insertMallToy(vo);
        mav.setViewName("redirect:/productInquiry.mdo");
        return mav;
    }
//    @RequestMapping("/insertMallToy.mdo")
//    public ModelAndView insertMallToy(MultipartHttpServletRequest request) throws Exception{
//
//        MallToyVO vo = new MallToyVO();
//        vo.setToy_name(request.getParameter("toy_name"));
//       vo.setToy_price(request.getParameter("toy_price"));
//       vo.setToy_discount(request.getParameter("toy_discount"));
//       vo.setToy_stock(request.getParameter("toy_stock"));
//       vo.setToy_point(request.getParameter("toy_point"));
//       vo.setToy_info(request.getParameter("toy_info"));
//
//        MultipartFile mf = request.getFile("toy_img");
//        System.out.println(mf);
//        String path = request.getSession().getServletContext().getRealPath("resources/img/product/");
//        String fileName = mf.getOriginalFilename();
//
//        File uploadFile = new File(path+"//"+fileName);
//        try{
//            mf.transferTo(uploadFile);
//        } catch (IllegalStateException e) {
//            e.printStackTrace();
//        } catch(IOException e) {
//            e.printStackTrace();
//        }
//        vo.setToy_img(fileName);
//        ModelAndView mav = new ModelAndView();
//        mallService.insertMallToy(vo);
//        mav.setViewName("redirect:/productInquiry.mdo");
//        return mav;
//    }

    @RequestMapping("/productInquiry.mdo")
    public ModelAndView getMallToyList(MallToyVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/productRegister/productInquiry");
        mav.addObject("toyList", mallService.getMallToyList());

        return mav;
    }
}
