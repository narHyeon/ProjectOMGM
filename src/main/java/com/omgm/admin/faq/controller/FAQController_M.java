package com.omgm.admin.faq.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.omgm.admin.faq.service.FAQService_M;

@Controller("fAQController_M")
public class FAQController_M {

	@Autowired
	FAQService_M fAQService_M;	
	
	
	
}
