package com.rhcloud.crazy.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rhcloud.crazy.entity.Question;

public interface QuestionRepository extends JpaRepository<Question, Integer> {

}
