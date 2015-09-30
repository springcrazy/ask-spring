package com.rhcloud.crazy.controller;

import java.beans.PropertyEditorSupport;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rhcloud.crazy.entity.Question;
import com.rhcloud.crazy.entity.Tag;
import com.rhcloud.crazy.service.QuestionService;
import com.rhcloud.crazy.service.TagService;

@Controller
public class QuestionController {
	@Autowired
	private QuestionService questionService;
	
	@Autowired
	private TagService tagService;
	
	@InitBinder
    public void initBinderOne(WebDataBinder binder) {
        binder.registerCustomEditor(Tag.class,
	        new PropertyEditorSupport() {
	
	            @Override
	            public void setAsText(String text) {
	                Tag tag = tagService.findTagById(Integer.parseInt(text));
	                setValue(tag);
	            }
	        });        
    }
	
	@ModelAttribute("question")
	public Question constructQuestion() {
		return new Question();
	}
	
	@RequestMapping(value = "/questions/{id}", method = RequestMethod.GET)
	public String showQuestionDetail(Model model, @PathVariable Integer id) {
		model.addAttribute("question", questionService.findQuestionWithTags(id));
		return "question-detail";
	} 
	
	@RequestMapping(value = "/add-question", method = RequestMethod.GET)
	public String showQuestionForm(Model model) {
		return "add-question";
	} 
	
	@RequestMapping(value = "/getTags", method = RequestMethod.GET)
	public @ResponseBody
	List<Tag> getTags(@RequestParam String tagName) {
		return tagService.findTagByName(tagName);
	}
	

	@RequestMapping(value = "/add-question", method = RequestMethod.POST)
	public String addJobDetail(@ModelAttribute("question") Question question) {		
		questionService.saveQuestion(question);
		return "redirect:/";
	} 
	
}
