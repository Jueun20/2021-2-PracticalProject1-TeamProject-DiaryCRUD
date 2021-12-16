package com.mycom.team.diary;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DiaryController {
	@Autowired
	DiaryService diaryService;
	
	@RequestMapping(value = "/diary/list", method = RequestMethod.GET)
	public String diarylist(Model model) {
		model.addAttribute("list", diaryService.getDiaryList());
		return "posts";
	}
	
	@RequestMapping(value = "/diary/add", method = RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	
	@RequestMapping(value = "/diary/addok", method = RequestMethod.POST)
	public String addPostOK(DiaryVO vo) {
		int i = diaryService.insertDiary(vo);
		if (i == 0)
			System.out.println("데이터 추가 실패 ");
		else
			System.out.println("데이터 추가 성공!!!");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/diary/editpost/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		DiaryVO diaryVO = diaryService.getDiary(id);
		model.addAttribute("diaryVO", diaryVO);
		return "editform";
	}
	
	@RequestMapping(value = "/diary/editok", method = RequestMethod.POST)
	public String editPostOK(DiaryVO vo) {
		int i = diaryService.updateDiary(vo);
		if (i == 0)
			System.out.println("데이터 수정 실패 ");
		else
			System.out.println("데이터 수정 성공!!!");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/diary/deleteok/{id}", method = RequestMethod.GET)
	public String deletePost(@PathVariable("id") int id) {
		int i = diaryService.deleteDiary(id);
		if (i == 0)
			System.out.println("데이터 삭제 실패 ");
		else
			System.out.println("데이터 삭제 실패!!!");
		return "redirect:../list";
	}
}
