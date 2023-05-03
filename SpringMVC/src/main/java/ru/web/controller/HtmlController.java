package ru.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.web.model.Contact;
import ru.web.repository.ContactRepo;


@Controller
public class HtmlController {
  private final ContactRepo contactRepo;

  public HtmlController(ContactRepo contactRepo) {
    this.contactRepo = contactRepo;
  }

  @RequestMapping(value = "/contacts")
  public String contactService(Model model) {
    model.addAttribute(contactRepo.getAllContacts());
    return "contacts";
  }

  /*@RequestMapping("/")
  public String index(Model model) {
    model.addAttribute("contactList", contactList);
    model.addAttribute("contact", new Contact());
    return "index";
  }*/

  @RequestMapping(value ="/addContact", method = RequestMethod.POST)
  public String addContact(@ModelAttribute Contact contact, Model model) {
    System.out.println(contact);
    contactRepo.addContact(contact);
    model.addAttribute("contactList", contactRepo.getAllContacts());
    return "contacts";
  }

  @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
  public ModelAndView edit(@PathVariable("id") Integer id) {
    Contact contact = contactRepo.getContactById(id);
    ModelAndView modelAndView = new ModelAndView();
    modelAndView.setViewName("edit");
    modelAndView.addObject("editContact", contact);
    return modelAndView;
  }

  @RequestMapping(value = "/edit", method = RequestMethod.POST)
  public ModelAndView editContact(@ModelAttribute("editContact") Contact contact) {
    ModelAndView modelAndView = new ModelAndView();
    modelAndView.setViewName("redirect:/contacts");
    contactRepo.edit(contact);
    return modelAndView;
  }

  @RequestMapping(value = "/contacts/{id}", method = RequestMethod.GET)
  public String deleteContact(@PathVariable("id") Integer id, Model model) {
    contactRepo.deleteContact(id);
    model.addAttribute(contactRepo.getAllContacts());
    return "contacts";
  }
}