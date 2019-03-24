package ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.dto.OrderDTO;
import ssm.mapper.OrderDTOMapper;
import ssm.mapper.OrderinforMapper;
import ssm.pojo.Orderinfor;

import java.util.List;

@Service
public class OrderService {
    @Autowired
    OrderinforMapper orderinforMapper;

    @Autowired
    OrderDTOMapper orderDTOMapper;

    public Boolean addOrder(Orderinfor orderinfor) {
        return orderinforMapper.insert(orderinfor)>0;
    }

    public List<OrderDTO> QueryOrders(int userId) {
        return orderDTOMapper.SelectOrdersByUserId(userId);
    }

    public void refundTicket(int orderid) {
        orderinforMapper.deleteByPrimaryKey(orderid);
    }

    public List<OrderDTO> queryorder(int orderDTO) {return orderDTOMapper.queryorderByOrderId(orderDTO);
    }
}
