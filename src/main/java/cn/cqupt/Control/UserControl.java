package cn.cqupt.Control;

import cn.cqupt.Service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class UserControl {
    @Autowired
    private PersonService personService;

    ModelAndView model = new ModelAndView();

    @RequestMapping(value = "/person/login")
    public ModelAndView login(String username, String password) {
        if("hcx".equals(username) && "123456".equals(password)){
            model.setViewName("disPlay");
            return model;
        }else {
            model.setViewName("loginEero");
            return model;
        }
    }


    @RequestMapping("/outLogin")
    public String outLogin(HttpSession session){
        //通过session.invalidata()方法来注销当前的session
        session.invalidate();
        return "redirect:OutSucess.jsp";
    }
}
