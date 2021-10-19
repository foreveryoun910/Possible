package com.yedam.possable.app.community.qna.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yedam.possable.app.common.criteria.domain.Criteria;
import com.yedam.possable.app.common.criteria.domain.PageVO;
import com.yedam.possable.app.community.qna.domain.QnaVO;
import com.yedam.possable.app.community.qna.service.QnaService;

@Controller
@RequestMapping("/qna/*")
public class QnaController {

	@Autowired
	QnaService qnaService;
	
	@GetMapping("/list")
	public void list(Model model
				   , @ModelAttribute("cri") Criteria cri) {
		int total = qnaService.getTotalCount(cri);
		model.addAttribute("list", qnaService.getList(cri));
		model.addAttribute("pagination", new PageVO(cri, total));
	}
	
	@GetMapping("/get")
	public void get(Model model, QnaVO vo
				  , @ModelAttribute("cri") Criteria cri) {
		model.addAttribute("qna", qnaService.read(vo));
		int total = qnaService.getTotalCount(cri);
		model.addAttribute("pagination", new PageVO(cri, total));
	}
	
	@GetMapping("/insert")
	public void insertForm(Model model, @ModelAttribute("cri") Criteria cri) {
		
		int total = qnaService.getTotalCount(cri);
		model.addAttribute("pagination", new PageVO(cri, total));
		
	}
	
	@PostMapping("/insert")
	public String insert(Model model, RedirectAttributes rttr, QnaVO vo, @ModelAttribute("cri") Criteria cri) {
		qnaService.insert(vo);
		rttr.addFlashAttribute("insertResult", vo.getSeq());
		
		int total = qnaService.getTotalCount(cri);
		model.addAttribute("pagination", new PageVO(cri, total));
		
		return "redirect:/qna/list";
	}
	
	@GetMapping("/update")
	public void updateForm(Model model, QnaVO vo
						 , @ModelAttribute("cri") Criteria cri) {
		model.addAttribute("qna", qnaService.read(vo));
		
		int total = qnaService.getTotalCount(cri);
		model.addAttribute("pagination", new PageVO(cri, total));
	}
	
	@PostMapping("/update")
	public String update(Model model, RedirectAttributes rttr, QnaVO vo
					   , @ModelAttribute("cri") Criteria cri) {
		
		int result = qnaService.update(vo);
		
		if (result == 1) {
			rttr.addFlashAttribute("updateResult", vo.getSeq());
		}
		
		rttr.addAttribute("seq", vo.getSeq());
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		int total = qnaService.getTotalCount(cri);
		model.addAttribute("pagination", new PageVO(cri, total));
		
		return "redirect:/qna/get";
	}
	
	@GetMapping("/delete")
	public String delete(Model model, RedirectAttributes rttr, QnaVO vo
					   , @ModelAttribute("cri") Criteria cri) {
		
		int result = qnaService.delete(vo);
		
		if (result == 1) {
			rttr.addFlashAttribute("deleteResult", vo.getSeq());
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		int total = qnaService.getTotalCount(cri);
		model.addAttribute("pagination", new PageVO(cri, total));
		
		return "redirect:/qna/list";
	}
	
}
