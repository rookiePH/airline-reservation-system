package ssm.util;


import ssm.pojo.Userinfor;

public final class SessionLocal {

   public static ThreadLocal<Userinfor> userLocal = new ThreadLocal<>();

}
