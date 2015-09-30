package com.rhcloud.crazy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rhcloud.crazy.entity.Question;
import com.rhcloud.crazy.repository.QuestionRepository;
import com.rhcloud.crazy.repository.TagRepository;

@Service
public class QuestionService {
	
	@Autowired
	private QuestionRepository questionRepository;
	
	@Autowired
	private TagRepository tagRepository;
	
	public void saveQuestion(Question question) {
		questionRepository.save(question);
		saveTag(question);
	}

	private void saveTag(Question question) {
		// TODO Auto-generated method stub
		tagRepository.save(question.getTags());
	}
	
	public List<Question> findAllQuestions() {
		return questionRepository.findAll();
	}
	
	public Question findQuestionById(Integer id) {
		return questionRepository.findOne(id);
	}
	
	public Question findQuestionWithTags(Integer id) {
		Question question = findQuestionById(id);
		question.setTags(tagRepository.findTagByQuestion(question.getTitle()));
		return question;
	}
}
