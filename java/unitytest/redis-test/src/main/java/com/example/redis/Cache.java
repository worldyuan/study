package com.example.redis;

import java.util.Optional;

/**
 * 缓存
 */
public interface Cache {

    /**
     * 设置缓存
     * @param key
     * @param value
     */
    void put(String key, Object value);

    /**
     * 获取缓存
     * @param key
     * @param expectedClass
     * @return
     * @param <T>
     */
    <T> Optional<T> get(String key, Class<T> expectedClass);
}
