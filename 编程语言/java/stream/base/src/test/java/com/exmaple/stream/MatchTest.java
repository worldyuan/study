package com.exmaple.stream;

import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import java.util.ArrayList;
import java.util.List;

public class MatchTest {
    @BeforeClass
    public void setUp() {
    }

    @Test
    public void anyMatchTest() {
        List<Integer> excepted = new ArrayList<>();
        List<Integer> result = new ArrayList<>();
        List<Integer> input = new ArrayList<>();
        for(int i = 0; i < 100; i++) {
            input.add(i);
            excepted.add(i);
        }

        input.stream().anyMatch(e -> {
            result.add(e);
            return false;
        });

        for(int i = 0; i < 100; i++) {
            System.out.println(result.get(i));
        }




    }
}
