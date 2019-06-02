## eureka-service —— 注册发现服务工程

### 1. eureka-service 打包方法

进入eureka-service服务目录，执行如下命令进行项目打包

```Bash
mvn clean package
```

### 2. eureka-service 服务启动

#### 2.1 控制台前台启动

```Bash
java -jar target/eureka-service-0.0.1.jar
```

#### 2.2 控制台后台启动

```Bash
nohup java -jar target/eureka-service-0.0.1.jar > /dev/null 2>&1 &
```

### 3. eureka-service 服务停止

```Bash
ps -ef | grep eureka

kill -9 XXXX
```

### 4. eureka-service 工作原理

                                                                终端App应用    Web端App应用    移动端App应用
                                                                     |---------------|----------------|
                                                                                     V
                                         注册发现服务                             服务网关
         注册-------------------------> (eureka-service) --------------------> (Service GateWay)   
           |                                 ^   |
           |                                 |   |
           |                               注册   发现
           |                                 |   |
           |                                 |   V
    后端App1服务                        前端App1服务
      后端App2服务  <----------------->   前端App2服务
        后端App3服务                        前端App3服务
     (Middle Tier                        (Edge Service)
       Service)
    
# iCode studio.
