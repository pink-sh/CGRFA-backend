package org.fao.fir.cgrfa.sql;

import java.io.IOException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisSqlSessionFactory {
private static SqlSessionFactory sqlSessionFactory;
	
	
	public static SqlSessionFactory getSqlSessionFactory() {
		if(sqlSessionFactory==null) {
			try {
				sqlSessionFactory = new SqlSessionFactoryBuilder().build(
						Resources.getResourceAsStream("org/fao/fir/cgrfa/mybatis/mappers/mybatis-config.xml"));
			} catch (IOException e) {
				return null;
				
			}
		}
		return sqlSessionFactory;
	}
}
