package com.example.redis;

import org.testcontainers.containers.GenericContainer;
import org.testcontainers.utility.DockerImageName;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;
import redis.clients.jedis.Jedis;

import java.util.Optional;
import static org.assertj.core.api.Assertions.assertThat;

public class RedisBackedCacheTest {
    private static GenericContainer<?> redis = new GenericContainer<>(DockerImageName.parse("redis")).withExposedPorts(6379);

    private Cache cache;

    @BeforeClass
    public static void startContainer() {
        redis.start();
    }

    @AfterClass
    public static void stopContainer() {
        redis.stop();
    }

    @BeforeMethod
    public void setUp() {
        Jedis jedis = new Jedis(redis.getHost(), redis.getMappedPort(6379));
        cache = new RedisBackedCache(jedis, "test");
    }

    @Test
    public void testFindingAnInsertedValue() {
        cache.put("foo", "FOO");
        Optional<String> foundObject = cache.get("foo", String.class);

        assertThat(foundObject).as("当值在redis中，可以找到他").isPresent();
        assertThat(foundObject).as("确认redis中的值和我们设置的值是一样的").contains("FOO123");
    }

    @Test
    public void testNotFindingAValueThatWasNoInserted() {
        Optional<String> foundObject = cache.get("foo", String.class);
        assertThat(foundObject).as("确认redis中不存在这个key").isNotPresent();
        assertThat(foundObject).as("确认redis中不存在这个key").isNotPresent();
    }
}

