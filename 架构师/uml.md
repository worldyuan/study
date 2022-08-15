## uml线条
* 空心箭头 -- 实现或者继承
* 箭头 -- 关系
* 菱形 -- 组合

### 泛化关系（继承）
```plantuml
@startuml
动物 <|-- 猫
@enduml
```

### 实现关系（实现）
```plantuml
@startuml
abstract 车
车 <|.. 自行车
车 <|.. 小汽车
@enduml
```

### 聚合关系
表示一部分由另外一部分组成，弱依赖。整体解散了，组成部分还存在
```plantuml
@startuml
员工 ..o 部门
@enduml
```

### 组合关系
整体解散了，组成部分必定解散
```plantuml
@startuml
部门 ..* 公司
@enduml
```
### 关联关系
用实线表示，如果强调方向，可带箭头，如A知道B，B不知道A。不强调运行时
```plantuml
@startuml
class A
class B
A --> B
@enduml
```

### 依赖关系
一般强调运行时的依赖关系
```plantuml
@startuml
class A
class B
A ..> B
@enduml
```

### 时序图
展示对象之间的交互细节