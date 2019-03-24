package ssm.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import ssm.pojo.Orderinfor;
import ssm.pojo.OrderinforExample;

public interface OrderinforMapper {
    int countByExample(OrderinforExample example);

    int deleteByExample(OrderinforExample example);

    int deleteByPrimaryKey(Integer orderId);

    int insert(Orderinfor record);

    int insertSelective(Orderinfor record);

    List<Orderinfor> selectByExample(OrderinforExample example);

    Orderinfor selectByPrimaryKey(Integer orderId);

    int updateByExampleSelective(@Param("record") Orderinfor record, @Param("example") OrderinforExample example);

    int updateByExample(@Param("record") Orderinfor record, @Param("example") OrderinforExample example);

    int updateByPrimaryKeySelective(Orderinfor record);

    int updateByPrimaryKey(Orderinfor record);
}