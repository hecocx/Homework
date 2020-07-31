package cn.cqupt.Control;

import cn.cqupt.Moudle.Person;
import cn.cqupt.Service.PersonService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
public class PersonControl {

    @Autowired
    private PersonService personService;
    ModelAndView model = new ModelAndView();

    @RequestMapping(value = "/transform")
    public ModelAndView transform() {
        model.setViewName("disPlay");
        return model;
    }

    @RequestMapping(value = "/transform/inster")
    public ModelAndView transformInster() {
        model.setViewName("inster");
        return model;
    }

    @RequestMapping(value = "/transform/select")
    public ModelAndView transformSelect() {
        model.setViewName("select");
        return model;
    }

    @RequestMapping(value = "/findAll")
    public ModelAndView selectUserAsJsp(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "5")int size) {
        List<Person> list = personService.findAll(page,size);
        PageInfo pageInfos=new PageInfo(list);
        model.addObject("pageInfos",pageInfos);
        model.setViewName("test");
        return model;
    }

    @RequestMapping(value = "/findAllOne")
    public ModelAndView SelectAll() {
        List<Person> list = personService.findAllPerson();
        model.addObject("list", list);
        model.setViewName("test1");
        return model;
    }

    @RequestMapping("/person/select")
    public ModelAndView selectOne(int pid) {
        Person person = personService.selectOne(pid);

        model.addObject("person", person);
        model.setViewName("select");
        return model;

    }

    @RequestMapping(value = "/person/add")
    public String insert(@Valid @ModelAttribute("person")Person person , BindingResult bindingResult,Errors errors,
                               @RequestParam("file")MultipartFile img) throws IOException {
        String originalName = img.getOriginalFilename();
        String realPath = "F:\\JAVAw\\javaWeb\\image\\";
        String uuidName = UUID.randomUUID().toString();
        String newFile = uuidName + originalName.substring(originalName.lastIndexOf("."));
        File file = new File(realPath + newFile);
        img.transferTo(file);
        person.setImage(newFile);
        if (errors.hasErrors()) {
            return "redirect:/transform/inster";

        }else {
            personService.insert(person);
            return "disPlay";
        }
    }

    @RequestMapping(value = "/person/delete")
    public String delete(int pid, Model model) {
        personService.delete(pid);
        return "redirect:/findAllOne";
    }

    @RequestMapping(value = "/person/update", method = RequestMethod.GET)
    public String getId(int pid, Model model) {
        Person person = personService.selectOne(pid);
        model.addAttribute("per", person);
        return "person/update";
    }

    @RequestMapping(value = "/person/update", method = RequestMethod.POST)
    public String update(Person person, Model model) {
        personService.update(person);
        return "redirect:/findAllOne";
    }

}


