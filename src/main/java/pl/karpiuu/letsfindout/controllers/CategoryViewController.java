package pl.karpiuu.letsfindout.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.karpiuu.letsfindout.domain.category.Category;
import pl.karpiuu.letsfindout.domain.category.CategoryService;
import pl.karpiuu.letsfindout.domain.common.controller.LetsFindOutCommonViewController;
import pl.karpiuu.letsfindout.domain.question.Question;
import pl.karpiuu.letsfindout.domain.question.QuestionService;

import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/categories")
@RequiredArgsConstructor
public class CategoryViewController extends LetsFindOutCommonViewController {

    private final CategoryService categoryService;
    private final QuestionService questionService;

    @GetMapping("{id}")
    public String singleView(@PathVariable UUID id, Model model){

        Category category = categoryService.getCategory(id);
        List<Question> questions = questionService.findAllByCategoryId(id);

        model.addAttribute("category", category);
        model.addAttribute("questions", questions);
        addGlobalAttributes(model);
        return "category/single";
    }
}
