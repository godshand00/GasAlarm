package com.blowwind;

import com.blowwind.service.SomeService;
import com.blowwind.service.impl.SomeServiceImpl;
import org.junit.Test;

public class Mytest {

    @Test
    public void test01() {
        SomeService service = new SomeServiceImpl();
        service.doSome();
    }
}
