# SCA OpenSergo Demo

## 如何运行

1. 运行 [OpenSergo Dashboard](https://github.com/opensergo/opensergo-dashboard/blob/develop/README.zh-Hans.md)。

2. 构建 `SCA SNAPSHOT版本`(依赖[`io.opensergo:opensergo-java:0.0.1-SNAPSHOT`](https://github.com/opensergo/opensergo-java/packages/1332235))

   ```bash
   git clone https://github.com/robberphex/spring-cloud-alibaba.git
   cd spring-cloud-alibaba
   git checkout opensergo
   mvn clean compile install -DskipTests
   ```

3. 编译此项目：

   ```bash
   git clone https://github.com/robberphex/example-opensergo-sca.git
   cd example-opensergo-sca
   mvn clean compile package -DskipTests
   # 最终产物 ./target/opensergo-sc-demo-0.0.1-SNAPSHOT.jar
   ```

4. 运行此项目：

   ```shell
   env OPENSERGO_BOOTSTRAP_CONFIG='{"endpoint":"localhost:9090"}' \
   java -jar ./target/opensergo-sc-demo-0.0.1-SNAPSHOT.jar
   ```

    然后就可以在 OpenSergo Dashboard 上看到对应的应用了。
