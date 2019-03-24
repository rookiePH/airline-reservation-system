package ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.mapper.SeatinforMapper;
import ssm.pojo.Seatinfor;

@Service
public class SeatService {
    @Autowired
    SeatinforMapper seatinforMapper;

    public Boolean insert(Seatinfor seatinfor) {
        return seatinforMapper.insert(seatinfor)>0;
    }
}
