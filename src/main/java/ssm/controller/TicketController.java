package ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import ssm.pojo.Flightinfor;
import ssm.service.TicketService;

import javax.servlet.http.HttpSession;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@Controller
public class TicketController {
    @Autowired
    TicketService ticketService;
    @RequestMapping("/seekTicket.action")
    public String SeekTicket(Flightinfor flightinfor, Model model, HttpSession session) {
        List<Flightinfor> list = ticketService.seekTicket(flightinfor);
        Flightinfor temp=new Flightinfor();

        Collections.sort(list,new Comparator<Flightinfor>() {
            public int compare(Flightinfor flightInfo1, Flightinfor flightInfo2){
                return ((int)(flightInfo1.getPrice() - flightInfo2.getPrice()));
            }
        });
        if(list.size() != 0) {
            model.addAttribute("list", list);
            return "resultList";
        }else {
            return "error";
        }
    }

    @RequestMapping("/tseekTicket.action")
    public String tSeekTicket(Flightinfor flightinfor, Model model, HttpSession session) {
        List<Flightinfor> list = ticketService.seekTicket(flightinfor);
        Flightinfor temp=new Flightinfor();

        Collections.sort(list,new Comparator<Flightinfor>() {
            public int compare(Flightinfor flightInfo1, Flightinfor flightInfo2){
                return ((int)(flightInfo1.getPrice() - flightInfo2.getPrice()));
            }
        });
        if(list.size() != 0) {
            model.addAttribute("list", list);
            return "tresultList";
        }else {
            return "error";
        }
    }
}


