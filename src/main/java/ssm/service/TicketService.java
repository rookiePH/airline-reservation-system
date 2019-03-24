package ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.mapper.FlightinforMapper;
import ssm.pojo.Flightinfor;
import ssm.pojo.FlightinforExample;

import java.util.List;

@Service
public class TicketService {
    @Autowired
    FlightinforMapper flightinforMapper;

    public List<Flightinfor> seekTicket(Flightinfor flightInfor) {
        FlightinforExample example = new FlightinforExample();
        FlightinforExample.Criteria criteria = example.createCriteria();
        criteria.andStacityEqualTo(flightInfor.getStacity());
        criteria.andTarrcityEqualTo(flightInfor.getTarrcity());

        List<Flightinfor> list = flightinforMapper.selectByExample(example);

        return list;
    }

}
