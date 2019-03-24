package ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import ssm.dto.OrderDTO;
import ssm.pojo.Orderinfor;
import ssm.service.OrderService;

import java.util.List;

@Controller
public class OrderController {
    @Autowired
    OrderService orderService;

    @RequestMapping("/addOrder.action")
    public String addOrder(Orderinfor orderinfor){
        orderService.addOrder(orderinfor);
        return "order";
    }

    @RequestMapping("/QueryOrders.action")
    public String QueryOrders(Model model, int UserId){
        List<OrderDTO> orderDTOList = orderService.QueryOrders(UserId);
        model.addAttribute("orderList",orderDTOList);
        return "order";
    }

    @RequestMapping("/QueryOrder.action")
    public String QueryOrder(Model model, int userId){
        List<OrderDTO> orderDTOList = orderService.QueryOrders(userId);
        model.addAttribute("orderList",orderDTOList);
        return "torder";
    }

    @RequestMapping("RefundTicket.action")
    public String refundTicket(int orderid){
        orderService.refundTicket(orderid);
        return "order";
    }

    @RequestMapping("/queryorder.action")
    public String queryorder(Model model, int orderDTOId){
        List<OrderDTO> orderDTOList = orderService.queryorder(orderDTOId);
        model.addAttribute("order",orderDTOList);
        return "chooseseat";
    }
}
