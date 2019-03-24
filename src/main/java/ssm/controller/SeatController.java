package ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import ssm.pojo.Seatinfor;
import ssm.service.SeatService;

@Controller
public class SeatController {
    @Autowired
    SeatService seatService;

    @RequestMapping("/chooseseat.action")
    public String chooseSeat(Seatinfor seatinfor, Model model){
        model.addAttribute("seat",seatinfor);
        Boolean flag = seatService.insert(seatinfor);
        if(flag == true){return "order";}else {return "error";}
    }
}
