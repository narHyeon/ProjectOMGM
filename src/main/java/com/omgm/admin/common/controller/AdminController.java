package com.omgm.admin.common.controller;

import com.omgm.admin.common.beans.AdminVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

    // 愿�由ъ옄 硫붿씤 遺덈윭�삤湲�
    @RequestMapping("/adminMain.mdo")
    public ModelAndView main(AdminVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/main");
        return mav;
    }

    // 愿�由ъ옄 諛곗넚 �쁽�솴 �럹�씠吏�
    @RequestMapping("/deliveryStatus.mdo")
    public ModelAndView deliveryStatus(AdminVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/delivery/deliveryStatus");
        return mav;
    }

    // 愿�由ъ옄 諛곗넚 �쁽�솴 �럹�씠吏�
//    @RequestMapping("/productInquiry.mdo")
//    public ModelAndView productInquiry(AdminVO vo) {
//        ModelAndView mav = new ModelAndView();
//        mav.setViewName("/productRegister/productInquiry");
//        return mav;
//    }
    // �긽�뭹�벑濡� �럹�씠吏�
    @RequestMapping("/productRegister.mdo")
    public ModelAndView productRegister(AdminVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/mall/productRegister");
        return mav;
    }

    //�뵿�뾽�꽌鍮꾩뒪 愿�由� �럹�씠吏�
    @RequestMapping("/pickupServiceManagement.mdo")
    public ModelAndView pickupServiceManagement(AdminVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/manageMent/pickupServiceManagement");
        return mav;
    }

    //二쇰Ц議고쉶 �럹�씠吏� �씠�룞
    @RequestMapping("/orderInquiry.mdo")
    public ModelAndView orderInquiry(AdminVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/orderInquiry/orderInquiry");
        return mav;
    }
    @RequestMapping("/event.mdo")
    public ModelAndView eventpage(AdminVO vo) {
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("/event/event");
    	return mav;
    }
}
