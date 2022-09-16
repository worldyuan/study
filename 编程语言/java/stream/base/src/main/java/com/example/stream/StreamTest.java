package com.example.stream;

import java.util.ArrayList;
import java.util.List;

public class StreamTest {
    public static void main(String[] args) {
        List<TestObject> testObjectList = new ArrayList<>();
        for(int i = 0; i < 10000; i++) {
            TestObject o = new TestObject();
            o.setB(0);
            o.setA(0);
            testObjectList.add(o);
        }

        testObjectList.forEach(e -> {
            e.setA(2);
            e.setB(2);
        });

        print(testObjectList);
        resetList(testObjectList);

        testObjectList.stream().anyMatch(e -> {
            e.setA(3);
            e.setB(3);
            return false;
        });
        System.out.println("======anyMatch======");
        print(testObjectList);
        resetList(testObjectList);

    }

    public static void resetList(List<TestObject> testObjectList) {
        for(int i = 0; i < 10000; i++) {
            testObjectList.get(i).setA(0);
            testObjectList.get(i).setB(0);
        }
    }

    public static void print(List<TestObject> testObjectList) {
        for(int i = 0; i < 10000; i++) {
            System.out.printf("%d %d\n", testObjectList.get(i).a, testObjectList.get(i).b);
        }
    }
}