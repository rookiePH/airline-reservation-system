package ssm.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import ssm.pojo.Seatinfor;
import ssm.pojo.SeatinforExample;

public interface SeatinforMapper {
    int countByExample(SeatinforExample example);

    int deleteByExample(SeatinforExample example);

    int insert(Seatinfor record);

    int insertSelective(Seatinfor record);

    List<Seatinfor> selectByExample(SeatinforExample example);

    int updateByExampleSelective(@Param("record") Seatinfor record, @Param("example") SeatinforExample example);

    int updateByExample(@Param("record") Seatinfor record, @Param("example") SeatinforExample example);
}