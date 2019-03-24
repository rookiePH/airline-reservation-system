package ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import ssm.pojo.Userinfor;
import ssm.service.UserService;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    UserService userService;


    @RequestMapping("/book.action")
    public String book(int flight,Model model){
        model.addAttribute("flightid",flight);
       return "book";
    }

    @RequestMapping("/tbook.action")
    public String tbook(int flight,Model model){
        model.addAttribute("flightid",flight);
        return "tchooseseat";
    }

    @RequestMapping("/addUser.action")
    public String addUser(Userinfor userinfor, Model model){

        model.addAttribute("useriden",userinfor.getIdnumber());
        Boolean flag = userService.insert(userinfor);
        if(flag) {
            return "chooseseat";
        }else {
            return "buyerror";
        }
    }

    @RequestMapping("/finduseridbyID.action")
    public String finduseridbyID(Userinfor userinfor,HttpSession session){
        Boolean key =userService.finduseridbyID(userinfor,session);
        Userinfor userSession = (Userinfor) session.getAttribute("userSession");
        if(key == true) {
            return "chooseseat";
        }else {
            return "buyerror";
        }

    }
}
