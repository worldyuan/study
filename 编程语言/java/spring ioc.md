[TOC]



# Spring 体系

https://spring.io/projects/spring-framework

Core：核心，包括Beans、Core、Context、Spel、AOP、Aspects

Integration：JMS、Message

Data：JDBC、ORM、OXM、JMS、Transactions

Web：Websocket、Servlet、Web、Portlet

Test：测试

# Bean



## 生产bean-BeanFactory

采用简单工厂模式：通过名称或者类型生产不同的类型



## 定义Bean-BeanDefine

Bean是什么

定义的方式：annotation、xml

如何生产Bean



## 管理Bean - BeanDefinitionRegister

Map



## 扫描Bean - BeanDefinitionScanner



## 读取Bean定义  - BeanDefinitionReader



# Bean的生命周期

## 实例化

  反射 @Component

  工厂 构造方法上加@Bean



## 填充属性



## 初始化

调用一堆Aware(BeanNameAware，BeanFactoryAware)



## map，单例池，一级缓存

DefaultSingletonBeanRegistry



# Bean 的扩展

## BeanFactoryPostProcessor

public void postProcessBeanFactory(ConfigurableListableBeanFactory );



一般用于集成其它框架



## BeanDefinitionRegisterPostProcessor

一般可用于添加Bean



# Spring 源码



AnnotationApplicationContext()



beanFactory

postprocessor

configurationClassProcessor



reader

scanner

AbstractApplication

refresh()

