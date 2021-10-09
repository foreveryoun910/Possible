package com.yedam.possable.app.member.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yedam.possable.app.car.domain.CarVO;
import com.yedam.possable.app.car.service.CarService;
import com.yedam.possable.app.common.code.service.CodeService;
import com.yedam.possable.app.common.criteria.domain.Criteria;
import com.yedam.possable.app.common.criteria.domain.PageVO;
import com.yedam.possable.app.company.domain.CompanyVO;
import com.yedam.possable.app.company.service.CompanyService;
import com.yedam.possable.app.member.domain.MemberVO;
import com.yedam.possable.app.member.service.MemberService;
import com.yedam.possable.app.rent.domain.RentHistoryVO;
import com.yedam.possable.app.rent.service.PaymentService;
import com.yedam.possable.app.rent.service.RentHistoryService;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/mypage/*")
public class MypageController {
    @Autowired
    MemberService memberService;
    @Autowired
    CompanyService companyService;
    @Autowired
    CodeService codeService;
    @Autowired
    PaymentService paymentService;
    @Autowired
    CarService carService;
    @Autowired
    RentHistoryService rentHistory;
    
    //마이페이지 대쉬보드 페이지
    @GetMapping("/dashboard")
    public String dashboard(HttpSession session) {
        return "mypage/dashboard";
    }

    //회원 정보 수정 전 비밀번호 검증 폼
    @GetMapping("/editProfile/checkPw")
    public String beforeEditProfile(){
        return "home";
    }

    //마이페이지 회원정보수정 폼 페이지
    @GetMapping("/editProfile")
    public String editProfileForm(
                           Authentication authentication,
                           Model model,
                           HttpServletRequest request) {
        MemberVO loginUser = memberService.getLoginMember(authentication);
        
        model.addAttribute("memberList", memberService.read(loginUser));
        return "mypage/editProfile";
    }

    // 회원 정보 수정 처리
    @PostMapping("/editProfile/complete")
    public String editProfile(){
    	
        return "mypage/dashboard";
    }

    // 회원 탈퇴 처리
    @GetMapping("/delete")
    public String deleteMember(){
        // 로그아웃 후 db 삭제 후 메인으로 리다이렉트
        return "home";
    }

    // 견적 요청 리스트
    @GetMapping("/estimate")
    public String estimateList(){
        return "mypage/estimateList";
    }

    // 견적 요청 상세보기
    @GetMapping("/estimate/view")
    public String estimateView(){
        return "mypage/estimateView";
    }

    // 견적 요청 수정
    @GetMapping("/estiamte/update")
    public String estimateUpdateForm(){
        return "rent/prm/estimateRegForm";
    }

    // 견적 요청 수정 처리
    @PostMapping("/estimate/update")
    public String updateEstimate(){
        return "mypage/estimateView";
    }

    // 견적 요청 삭제
    @GetMapping("/estimate/delete")
    public String deleteEstimate(){
        return "mypage/dashboard";
    }

    // 회원 렌트 내역
    @GetMapping("/rent")
    public String MyPageRentHistoryList(Model model,
    							  Long seq,
						    	  @ModelAttribute("cri") Criteria cri,
						    	  RentHistoryVO vo,
						    	  Authentication authentication,
						    	  HttpServletRequest request){
    	
    	HttpSession session = request.getSession();
    	MemberVO mvo = (MemberVO) session.getAttribute("member");
    	
    	int total = rentHistory.getHistoryCount();
    	
        model.addAttribute("getView", rentHistory.MyPageRentHistoryList(cri, mvo.getSeq()));
        model.addAttribute("page", new PageVO(cri, total));
        List<RentHistoryVO> rhlist = new ArrayList<RentHistoryVO>();
        rhlist = rentHistory.MyPageRentHistoryList(cri, mvo.getSeq());
        
        for (int i = 0; i < rhlist.size(); i++) {
        	System.out.println(rhlist.get(i).getCarSeq());
        	System.out.println("==================회사코드");
        	
        	System.out.println(rhlist.get(i).getCmpnSeq());
        	CarVO cvo1 = new CarVO();
        	cvo1.setSeq(rhlist.get(i).getCarSeq());
        	carService.getCar(cvo1);
        	System.out.println("======================="+i+"=====================");
        	System.out.println(carService.getCar(cvo1));
        	model.addAttribute("car", carService.getCar(cvo1));
        	
        	CompanyVO cov = new CompanyVO();
        	cov.setSeq(rhlist.get(i).getCmpnSeq());
        	System.out.println("두번쨰 회사 코드==="+rhlist.get(i).getCmpnSeq());
        	model.addAttribute("company", companyService.companyOneSelect(cov));
        }
        	
    
    	
    	return "mypage/rentHistoryList";
    }

    // 회원 렌트 내역 상세
    @GetMapping("/rent/view")
    public String rentHistoryView(){
        return "";
    }

    // 렌트 후기 작성 폼
    @GetMapping("/rent/view/writeReview")
    public String rentReviewForm(){
        return "mypage/rentReviewForm";
    }

    // 렌트 후기 등록 처리
    @PostMapping("/rent/view/writeReview")
    public String writeRentReview(){
        return "";
    }

    // 커뮤니티 대시보드
    @GetMapping("/community")
    public String community(){
        return "mypage/community";
    }

    // 업체 등록 폼
    @GetMapping("/regCompany")
    public String companyRegForm(){
        return "";
    }

    //업체 등록 처리
    @PostMapping("/regCompany")
    public String regCompany(){
        return "";
    }

    // --------------------------------------------------------

    //마이페이지 견적관리 페이지
    @GetMapping("/eslist")
    public String eslist() {
        return "mypage/estimate/list";
    }

    //마이페이지 견적관리 상세 페이지
    @GetMapping("/esinfo")
    public String esinfo() {
        return "mypage/estimate/info";
    }

    



    //마이페이지 나의 문의 페이지
    @GetMapping("/qna")
    public String qna() {
        return "mypage/qna";
    }

    //업체전환 신청 페이지 페이지
    @GetMapping("/chngRole")
    public String chngRole(Model model, HttpSession session) {

        return "mypage/chngRole";
    }

    //업체전환 신청처리
    @PostMapping("/chngRole")
    public String chngRole(Model model, CompanyVO vo, RedirectAttributes rttr) {

        // 외래 객체 담은 후 service 실행
        int result = companyService.companyReg(vo);
        rttr.addFlashAttribute("result", result);

        return "redirect:/mypage/dashboard";
    }
}
