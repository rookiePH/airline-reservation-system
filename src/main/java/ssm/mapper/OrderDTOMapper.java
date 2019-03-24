package ssm.mapper;

import ssm.dto.OrderDTO;

import java.util.List;

public interface OrderDTOMapper {
   public List<OrderDTO> SelectOrdersByUserId(int UserId);

    List<OrderDTO> queryorderByOrderId(int orderDTO);
}