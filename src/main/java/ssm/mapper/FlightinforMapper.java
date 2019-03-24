package ssm.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import ssm.pojo.Flightinfor;
import ssm.pojo.FlightinforExample;

public interface FlightinforMapper {
    int countByExample(FlightinforExample example);

    int deleteByExample(FlightinforExample example);

    int deleteByPrimaryKey(Integer flightId);

    int insert(Flightinfor record);

    int insertSelective(Flightinfor record);

    List<Flightinfor> selectByExample(FlightinforExample example);

    Flightinfor selectByPrimaryKey(Integer flightId);

    int updateByExampleSelective(@Param("record") Flightinfor record, @Param("example") FlightinforExample example);

    int updateByExample(@Param("record") Flightinfor record, @Param("example") FlightinforExample example);

    int updateByPrimaryKeySelective(Flightinfor record);

    int updateByPrimaryKey(Flightinfor record);
}