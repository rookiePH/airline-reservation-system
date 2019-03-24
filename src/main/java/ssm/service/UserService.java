package ssm.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.mapper.UserinforMapper;
import ssm.pojo.Userinfor;
import ssm.pojo.UserinforExample;
import ssm.util.SessionLocal;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class UserService {

    @Autowired
    UserinforMapper userinforMapper;

    public Boolean insert(Userinfor userinfor) {
        return userinforMapper.insert(userinfor)>0;
    }

    public Boolean finduseridbyID(Userinfor userinfor, HttpSession session) {
        UserinforExample example = new UserinforExample();
        UserinforExample.Criteria criteria = example.createCriteria();
        criteria.andIdnumberEqualTo(userinfor.getIdnumber());
        List<Userinfor> user = userinforMapper.selectByExample(example);

        if(user.size()!=0){
            SessionLocal.userLocal.set(user.get(0));
            session.setAttribute("userSession", user.get(0));
            return true;
        }else {
            return false;
        }
    }
}
