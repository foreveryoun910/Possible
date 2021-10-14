package com.yedam.possable.app.rent.controller;

import java.security.Principal;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import com.yedam.possable.app.common.code.domain.BrandCodeVO;
import com.yedam.possable.app.common.code.domain.ModelCodeVO;
import com.yedam.possable.app.common.code.domain.TrimCodeVO;
import com.yedam.possable.app.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yedam.possable.app.car.domain.CarVO;
import com.yedam.possable.app.car.service.CarService;
import com.yedam.possable.app.common.code.domain.CodeSubVO;
import com.yedam.possable.app.common.code.service.CodeService;
import com.yedam.possable.app.common.criteria.domain.Criteria;
import com.yedam.possable.app.common.criteria.domain.PageVO;
import com.yedam.possable.app.company.domain.CompanyVO;
import com.yedam.possable.app.company.service.CompanyService;
import com.yedam.possable.app.member.domain.MemberVO;
import com.yedam.possable.app.rent.domain.EstiSubmitHistoryVO;
import com.yedam.possable.app.rent.domain.EstimateHistoryVO;
import com.yedam.possable.app.rent.service.PremiumRentService;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/premiumRent")
public class PremiumRentController {
    @Autowired
    CodeService codeService;
    @Autowired
    PremiumRentService premiumRentService;
    @Autowired
    CompanyService companyService;
    @Autowired
    CarService carService;
    @Autowired
    MemberService memberService;

    // 견적 요청 리스트
    @GetMapping("/estimate")
    public String estimateList(Model model, @ModelAttribute("cri") Criteria cri) {
        int listCount = premiumRentService.getEstimateCount();

        model.addAttribute("estList", premiumRentService.getEstimateList(cri));
        model.addAttribute("pagination", new PageVO(cri, listCount));

        return "rent/prm/estimateList";
    }

    // 견적 요청 작성
    @GetMapping("estimate/register")
    public String estimateRegisterForm(Model model,
                                       Authentication authentication,
                                       RedirectAttributes attributes) {
//        MemberVO loginUser = memberService.getLoginMember(authentication);
//        if(loginUser == null || !loginUser.getAuthor().equals("ROLE_USER")) {
//            attributes.addFlashAttribute("denyMsg", "회원만 작성 가능합니다.");
//            return "redirect:../estimate";
//        }

        String carOptCode = codeService.getMasterCodeByName("차량 옵션").getCode();
        String itemOptCode = codeService.getMasterCodeByName("여행용품 옵션").getCode();

        model.addAttribute("brands", codeService.getBrandList());
        model.addAttribute("carOpt", codeService.getCodesByParentCode(carOptCode));
        model.addAttribute("itemOpt", codeService.getCodesByParentCode(itemOptCode));

        return "rent/prm/estimateRegForm";
    }

    // 견적 요청 제출
    @PostMapping("estimate/register")
    public String estimateRegister(EstimateHistoryVO vo,
                                   Authentication authentication,
                                   @RequestParam("options") String[] optionsArr,
                                   @RequestParam("items") String[] itemsArr,
                                   RedirectAttributes attributes) {
//        if(memberService.getLoginMember(authentication) == null){
//            attributes.addFlashAttribute("denyMsg", "잘못된 접근입니다!");
//            return "redirect:/premiumRent/estimate";
//        }
        // 옵션 배열 -> 스트링
        vo.setOptions(Arrays.toString(optionsArr));
        vo.setItems(Arrays.toString(itemsArr));

        int result = premiumRentService.insertEstimate(vo);
        if (result != 0) {

            attributes.addFlashAttribute("resultMsg", "견적 요청이 등록되었습니다.");
        } else {
            attributes.addFlashAttribute("resultMsg",  "견적 요청이 등록되지 않았습니다.\n 잠시후 다시 시도해주세요.");
            return "redirect:/premiumRent/estimate";
        }
       attributes.addAttribute("seq", vo.getSeq());

        return "redirect:/premiumRent/estimate/view";
    }

    // 견적 요청 상세
    @GetMapping("/estimate/view")
    public String estimateView(@RequestParam Long seq,
                               Authentication authentication,
                               RedirectAttributes attributes,
                               HttpServletRequest request,
                               Model model,
                               @ModelAttribute Criteria cri) {
//        MemberVO user = memberService.getLoginMember(authentication);
//        if (user == null || user.getAuthor().equals("USER")) {
//            String denyMsg = "업체회원만 열람 가능합니다.";
//            attributes.addFlashAttribute("denyMsg", denyMsg);
//
//            return "redirect:" + request.getHeader("REFERER");
//        }
//        List<EstiSubmitHistoryVO> estiSubmitHistoryVOList = premiumRentService;

        model.addAttribute("submitList", premiumRentService.getEstSubmitListByEstiSeq(new Criteria(), seq));
        model.addAttribute("estimate", premiumRentService.getEstimate(seq));

        return "rent/prm/estimateView";
    }

    // 견적 요청 삭제
    @GetMapping("/estimate/view/delete")
    public String estimateDelete(@RequestParam Long seq,
                                 Authentication authentication,
                                 RedirectAttributes attributes) {
//        MemberVO user = memberService.getLoginMember(authentication);
//        if (user == null) {
//            String denyMsg = "잘못된 접근입니다.";
//            attributes.addFlashAttribute("denyMsg", denyMsg);
//
//            return "redirect:/premiumRent/estimate";
//        }
//        EstimateHistoryVO vo = (EstimateHistoryVO) premiumRentService.getEstimate(seq).get("estimate");
//        MemberVO writer = new MemberVO();
//        writer.setSeq(vo.getMemberVO().getSeq());
//        String userId = user.getId();
//        String writerId = memberService.memberOneSelect(writer).getId();
//
//        if (!userId.equals(writerId)) {
//            attributes.addFlashAttribute("denyMsg", "작성자만 삭제 가능합니다.");
//            return "redirect:/premiumRent/estimate";
//        }

        int deleteResult = premiumRentService.deleteEstimate(seq);

        String resultMsg = "";
        if (deleteResult == 1) {
            resultMsg = "견적 요청이 삭제되었습니다.";
        } else {
            resultMsg = "견적 요청 삭제에 실패했습니다.\n잠시 후 다시 시도해주세요.";
        }
        attributes.addFlashAttribute("resultMsg", resultMsg);

        return "redirect:/premiumRent/estimate";
    }

    // 견적 요청 수정
    @GetMapping("estimate/view/update")
    public String estimateUpdateForm(@RequestParam Long seq,
                                     Authentication authentication,
                                     HttpServletRequest request,
                                     RedirectAttributes attributes,
                                     Model model) {
        EstimateHistoryVO vo = (EstimateHistoryVO) premiumRentService.getEstimate(seq).get("estimate");
//        MemberVO writer = new MemberVO();
//        writer.setSeq(vo.getMemberVO().getSeq());
//        String userId = memberService.getLoginMember(authentication).getId();
//        String writerId = memberService.memberOneSelect(writer).getId();
//
//        if (userId == null || !userId.equals(writerId)) {
//            attributes.addFlashAttribute("updateMsg", "작성자만 수정 가능합니다.");
//            return "redirect:" + request.getHeader("REFERER");
//        }

        String carOptCode = codeService.getMasterCodeByName("차량 옵션").getCode();
        String itemOptCode = codeService.getMasterCodeByName("여행용품 옵션").getCode();
        List<BrandCodeVO> brands = codeService.getBrandList();
        List<ModelCodeVO> models = codeService.getModelList(vo.getBrand());
        List<TrimCodeVO> trims = codeService.getTrimList(vo.getTrim());

        model.addAttribute("brands", brands);
        model.addAttribute("models", models);
        model.addAttribute("trims", trims);
        model.addAttribute("estimate", premiumRentService.getEstimate(seq));
        model.addAttribute("carOpt", codeService.getCodesByParentCode(carOptCode));
        model.addAttribute("itemOpt", codeService.getCodesByParentCode(itemOptCode));

        return "rent/prm/estimateUpdateForm";
    }

    // 견적 요청 수정 제출
    @PostMapping("estimate/view/update")
    public String estimateUpdate(EstimateHistoryVO vo,
                                 @RequestParam("options") String[] optionsArr,
                                 @RequestParam("items") String[] itemsArr,
                                 RedirectAttributes attributes) {
        // 옵션 배열 -> 스트링
        vo.setOptions(Arrays.toString(optionsArr));
        vo.setItems(Arrays.toString(itemsArr));

        int updateResult = premiumRentService.updateEstimate(vo);

        String resultMsg = "";
        if (updateResult == 1) {
            resultMsg = "견적이 수정되었습니다.";
        } else {
            resultMsg = "견적 수정에 실패했습니다. \n잠시후 다시 시도해주세요.";
        }
        attributes.addFlashAttribute("resultMsg", resultMsg);
        attributes.addAttribute("seq", vo.getSeq());

        return "redirect:/premiumRent/estimate/view";
    }

    // 견적 제출 리스트
    @GetMapping("/submit")
    public String submitList(Model model,
                             @RequestParam Long seq,
                             HttpServletRequest request,
                             Principal principal) {
        Map<String, Object> estimate = premiumRentService.getEstimate(seq);
//        if(principal == null){
//            return "redirect:" + request.getHeader("REFERER");
//        }
//        MemberVO memberVO = ((MemberVO) principal);
//        CompanyVO companyVO = companyService.getCompanyByMemSeq(memberVO);      // pricipal에서 업체 시퀀스 조회
//        List<CarVO> carList = carService.getCompanyCarList(companyVO);          // 업체시퀀스로 카 리스트 조회
//        List<String> companyItems = companyService.getCompanyItems(companyVO);  // 업체시퀀스로 업체아이템 조회

        MemberVO memberVO = new MemberVO();
        memberVO.setSeq(22L);
        CompanyVO companyVO = companyService.getCompanyByMemSeq(memberVO);      // pricipal에서 업체 시퀀스 조회
        List<CarVO> carList = carService.getCompanyCarList(companyVO);          // 업체시퀀스로 카 리스트 조회
        List<String> companyItems = companyService.getCompanyItems(companyVO);  // 업체시퀀스로 업체아이템 조회
        String carOptionCode = codeService.getMasterCodeByName("차량 옵션").getCode();
        List<CodeSubVO> carOptions = codeService.getCodesByParentCode(carOptionCode);

        model.addAttribute("companyVO", companyVO);
        model.addAttribute("carList", carList);
        model.addAttribute("companyItems", companyItems);
        model.addAttribute("estimate", estimate);
        model.addAttribute("carOptions", carOptions);
        return "rent/prm/submitList";
    }

    // 견적 제출 상세
    @PostMapping("submit/view")
    public String submitView(RedirectAttributes attributes,
                             EstiSubmitHistoryVO vo) {
        return "/rent/prm/submitView";
    }

    // 견적 제출 수정
    @GetMapping("submit/view/update")
    public String submitUpdateForm() {
        return "rent/prm/submitRegForm";
    }

    // 견적 제출 수정 처리
    @PostMapping("submit/view/update")
    public String submitUpdate() {
        return "redirect:../";
    }

    // 견적 제출 삭제 처리
    @GetMapping("submit/view/delete")
    public String deleteSubmit() {
        return "redirect:../../";
    }

    // 견적 제출 예약 처리
    @GetMapping("submit/view/bookCmpl")
    public String submitBookComplete() {
        return "rent/prm/bookComplete";
    }

    // 견적 제출 등록 폼
    @GetMapping("submit/register")
    public String submitRegForm(@RequestParam("seq") Long estimateSeq,
                                Authentication authentication,
                                Model model) {
        MemberVO loginUser = memberService.getLoginMember(authentication);
        CompanyVO companyVO = companyService.getCompanyByMemSeq(loginUser);
        log.info(carService.getCompanyCarList_map(companyVO).toString());
        model.addAttribute("test", "test'");
        model.addAttribute("carList", carService.getCompanyCarList_map(companyVO));

        String carOptCode = codeService.getMasterCodeByName("차량 옵션").getCode();
        String itemOptCode = codeService.getMasterCodeByName("여행용품 옵션").getCode();
        model.addAttribute("carOpt", codeService.getCodesByParentCode(carOptCode));
        model.addAttribute("itemOpt", codeService.getCodesByParentCode(itemOptCode));

        return "rent/prm/submitRegForm";
    }

    // 견적 제출 등록
    @PostMapping("submit/register")
    public String registerSubmit() {
        return "redirect:view";
    }
}
