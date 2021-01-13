package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/ch02")
public class Ch02Controller {
   private static final Logger logger = 
         LoggerFactory.getLogger(Ch02Controller.class);
   
   @RequestMapping("/content")
   public String content() {
      logger.info("ch02 실행");
      return "ch02/content";
   }
   
   @RequestMapping("/request1")   //GET과 POST를 둘다 지원
   //@RequestMapping(value="/request1",method = RequestMethod.GET)   //GET 방식으로 요청해야만 실행 가능하다
   //@RequestMapping(value="/request1",method = RequestMethod.POST)   //POST 방식으로 요청해야만 실행 가능하다
   public String request1() {
      logger.info("ch02 실행");
      return "ch02/content";
   }
   
   @RequestMapping(value="/getMethod",method = RequestMethod.GET)   //GET 방식으로 요청해야만 실행 가능하다
   public String getMethod() {
      logger.info("get 실행");
      return "ch02/content";
   }
   
   @RequestMapping(value="/postMethod",method = RequestMethod.POST)   //POST 방식으로 요청해야만 실행 가능하다
   public String postMethod() {
      logger.info("post 실행");
      return "ch02/content";
   }
   

   @RequestMapping(value="/join", method=RequestMethod.GET)
   public String joinForm() {
      logger.info("회원가입 양식을 보냄");
      return "ch02/joinForm";
   }
   
   @RequestMapping(value="/joinAsync", method=RequestMethod.GET)
   public String joinAsync() {
      logger.info("회원가입 양식을 보냄");
      return "ch02/joinFormAsync";
   }
   
   @RequestMapping(value="/join", method=RequestMethod.POST)
   public String joinForm2() {
      logger.info("회원가입을 처리함");
      return "ch02/content";   
   }
}