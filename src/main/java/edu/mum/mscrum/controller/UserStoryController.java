/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.mum.mscrum.controller;

import edu.mum.mscrum.domain.Employee;
import edu.mum.mscrum.domain.ProductBacklog;
import edu.mum.mscrum.domain.Sprint;
import edu.mum.mscrum.domain.UserStory;
import edu.mum.mscrum.service.EmployeeService;
import edu.mum.mscrum.service.ProductBacklogService;
import edu.mum.mscrum.service.UserStoryService;
import java.security.Principal;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author Mahabub
 */
@Controller
@RequestMapping("/user-story")
public class UserStoryController {

    @Autowired
    private UserStoryService userStoryService;

    @Autowired
    private ProductBacklogService productBacklogService;
    
    @Autowired
    private EmployeeService employeeService;

    @RequestMapping({"/", "/list"})
    public String showUserStories(Model model, Principal principal) {

        model.addAttribute("username", principal.getName());
        model.addAttribute("storyList", userStoryService.getList());
        return "userstory/list";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String createUserStory(@ModelAttribute("userstory") UserStory userstory) {

        return "userstory/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String createUserStory(@ModelAttribute("newUStory") @Valid UserStory userstory, BindingResult br, RedirectAttributes ra, Principal principal, Model model) {

        model.addAttribute("username", principal.getName());

        if (br.hasErrors()) {
            return "userstory/add";
        } else {
             Employee productOwner =   employeeService.findByUsername(principal.getName()); 
            userstory.setProductOwner(productOwner);
            userStoryService.create(userstory);
            ra.addFlashAttribute("message", "Successfully Add New User Story");
            return "redirect:/user-story/list";
        }
    }

    @ModelAttribute("productbacklogs")
    public List<ProductBacklog> populateProductBacklog(Principal principal){        
        Employee productOwner = employeeService.findByUsername(principal.getName());
        return productBacklogService.getAllProductBacklogByOwner(productOwner.getId());
        //return productBacklogService.getAllProductBacklog();
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editDetails(@PathVariable int id, Model model, Principal principal) {
        model.addAttribute("username", principal.getName());
        model.addAttribute("sprint", userStoryService.find(id));
        return "/userstory/edit";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteDetails(@PathVariable int id, Model model, RedirectAttributes rAttributes, Principal principal) {
        model.addAttribute("username", principal.getName());
        userStoryService.delete(id);
        rAttributes.addFlashAttribute("message", "Successfully removed item");
        return "redirect:/user-story/";
    }
}
