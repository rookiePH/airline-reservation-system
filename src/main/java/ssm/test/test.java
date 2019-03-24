package ssm.test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import ssm.mapper.FlightinforMapper;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/applicationContext-dao.xml"})
public class test {

    @Resource
    FlightinforMapper flightinforMapper;

    @Test
    public void add(){
        System.out.println("aaw");
        System.out.println(flightinforMapper.selectByPrimaryKey(1));
    }

}
