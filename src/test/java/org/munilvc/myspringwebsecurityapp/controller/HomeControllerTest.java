package org.munilvc.myspringwebsecurityapp.controller;

import org.junit.Test;
import org.springframework.security.crypto.password.StandardPasswordEncoder;

public class HomeControllerTest {

    @Test
    public void test() {
        // Not a real test, using to get the encoded password for the example.  :)
        StandardPasswordEncoder encoder = new StandardPasswordEncoder("3ch4Mvn1");
        String result = encoder.encode("password1");
        System.out.println(result);
        String result2 = encoder.encode("password2");
        System.out.println(result2);
    }

}
