package com.yedam.possable.app.rent.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yedam.possable.app.rent.domain.RentHistoryVO;
import com.yedam.possable.app.rent.service.PaymentService;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/payment/*")
public class PaymentController {

	@Autowired PaymentService paymentService;
	
	/* 결제 페이지로 이동 */
    @GetMapping("/payment")
    public String payment() {
        return "payment/payment";
    }
    
	/* 결제 데이터 DB 입력 */
    @PostMapping("/paymentInsert")
    public String paymentInsert(Model model, RedirectAttributes rttr, RentHistoryVO vo) {
    	paymentService.paymentInsert(vo);
    	return "redirect:/payment/payment";
    }
    
    /*    
    @PostMapping("/paymentInsert")
    @ResponseBody
    public String paymentInsert(Model model, RedirectAttributes rttr, RentHistoryVO vo) {
    	paymentService.paymentInsert(vo);
    	return "redirect:/payment/payment";
    }    */    
    
    /* 결제완료 페이지로 이동(rent_history seq를 이용해 단건조회) */
	@GetMapping("/paymentFin")
	public void paymentOneSelect(Model model, RentHistoryVO vo) {
		model.addAttribute("rent", paymentService.paymentOneSelect(vo));
	}
    
}
