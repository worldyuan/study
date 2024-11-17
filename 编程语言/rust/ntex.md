### 常用函数
#### fn_factory_with_config
这个是Service的工厂方法，调用这个方法可产生一个服务函数
```rust
pub fn fn_factory_with_config<F, Fut, Cfg, Srv, Req, Err>(
    f: F,
) -> FnServiceConfig<F, Fut, Cfg, Srv, Req, Err>
where
    F: Fn(Cfg) -> Fut,
    Fut: Future<Output = Result<Srv, Err>>,
    Srv: Service<Req>,
```
Fn(Config) -> Future<Output = Service>

#### map_config
更改Config，Service工厂需要Config，如果默认的Config无法满足的情况下，可通过它改变Config
```rust
pub fn map_config<T, R, U, F, C, C2>(factory: U, f: F) -> MapConfig<T, F, C, C2>
where
    T: ServiceFactory<R, C2>,
    U: IntoServiceFactory<T, R, C2>,
    F: Fn(C) -> C2,
```

##### MapConfig
```rust
pub struct MapConfig<A, F, C, C2> {
    a: A,
    f: F,
    e: PhantomData<(C, C2)>,
}
```

##### ServiceFactory<R, C2>
