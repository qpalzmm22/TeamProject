# TeamProject
실프 팀프로젝트용 git

사용하기 위해서는 root-context.xml을 추가해줘야함


<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:context="http://www.springframework.org/schema/context"
	xsi:schemaLocation="http://www.springframework.org/schema/beans https://www.springframework.org/schema/beans/spring-beans.xsd
		http://www.springframework.org/schema/context http://www.springframework.org/schema/context/spring-context-4.3.xsd">

	<!-- Root Context: defines shared resources visible to all other web components -->
	<bean id="ds"
		class="org.springframework.jdbc.datasource.DriverManagerDataSource">
		<property name="driverClassName"
			value="com.mysql.jdbc.Driver"></property>
		<property name="url"
			value="jdbc:mysql://db4free.net:3306/dbName"></property>
		<property name="username" value="id"></property>
		<property name="password" value="password"></property>
	</bean>
	
	<bean id="sqlSessionFactory"
		class="org.mybatis.spring.SqlSessionFactoryBean">
		<property name="dataSource" ref="ds"></property>
		<property name="configLocation"
			value="classpath:mybatis-config.xml"></property>
		<property name="mapperLocations"
			value="classpath:mappers/*-mapper.xml"></property>
	</bean>

	<bean id="sqlSession"
		class="org.mybatis.spring.SqlSessionTemplate"
		destroy-method="clearCache">
		<constructor-arg name="sqlSessionFactory"
			ref="sqlSessionFactory"></constructor-arg>
	</bean>
	
</beans>
