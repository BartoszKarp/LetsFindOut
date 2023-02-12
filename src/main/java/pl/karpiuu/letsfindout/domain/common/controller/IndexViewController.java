package pl.karpiuu.letsfindout.domain.common.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.karpiuu.letsfindout.domain.category.dto.CategoryWithStatisticsDto;
import pl.karpiuu.letsfindout.domain.question.dto.QuestionDto;
import pl.karpiuu.letsfindout.domain.question.QuestionService;

import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/")
@RequiredArgsConstructor
public class IndexViewController extends LetsFindOutCommonViewController {

	private final QuestionService questionService;

	@GetMapping
	public String indexView(
			Model model
	) {
		addGlobalAttributes(model);

		List<QuestionDto> questionsTop = questionService.findTop(2);
		model.addAttribute("questionsTop", questionsTop);

		List<CategoryWithStatisticsDto> categories = categoryService.findAllWithStatistics();
		model.addAttribute("categories", categories);

		return "index/index";
	}

	public List<QuestionDto> topQuestionsByCategory(UUID categoryId) {
		return questionService.findTop(categoryId, 2);
	}

	public List<QuestionDto> randomQuestions() {
		return questionService.findRandom(2);
	}
}
