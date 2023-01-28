package pl.karpiuu.letsfindout.common.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.ui.Model;
import pl.karpiuu.letsfindout.category.service.CategoryService;

public abstract class LetsFindOutCommonViewController {

    @Autowired
    protected CategoryService categoryService;

    protected void addGlobalAttributes(Model model) {
            model.addAttribute("categories", categoryService.getCategories(
            PageRequest.of(0, 10, Sort.by("name").ascending())
            ));
            }
}
