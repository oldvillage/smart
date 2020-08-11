package com.example.demo;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.Console;
import java.util.HashSet;
import java.util.*;

@SpringBootTest
class DemoApplicationTests {

    @Test
    void contextLoads() {
        //入参
        HashMap<Integer,Integer> hashMap =new HashMap();
        Random rnd = new Random();
        while (hashMap.size()<500000) {
            int a = rnd.nextInt(500000)+1;
            hashMap.put(a, a);
        }

        //出参
        HashSet<Integer> hashSet =new HashSet<>();
        while(hashSet.size()<100000) {
            hashSet.add(hashMap.get(rnd.nextInt(500000) + 1));
        }
        System.out.println(hashSet);
    }

}
