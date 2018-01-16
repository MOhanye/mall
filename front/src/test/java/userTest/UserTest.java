package userTest;

import com.hwua.common.dao.UserMapper;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UserTest {
    @Test
    public  void test(){
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserMapper bean = ctx.getBean(UserMapper.class);
        Integer integer = bean.queryCount("1233");
        System.out.println("integer = " + integer);
    }
}
