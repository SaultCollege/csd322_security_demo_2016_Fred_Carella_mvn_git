#!/bin/bash
# Tested and Works.

# See https://blogs.oracle.com/lindstro/entry/creating_jdbc_options_from_the
# Note 1: run from the command line

bin="/home/fcarella/GlassFish_Server/bin/"

DATABASE_PORT=3306
DATABASE_PASSWORD=itstudies12345
DATABASE_USER=root
DATABASE_NAME=googlePlusSignIn_v7_mvn_git
CONNECTION_POOL_NAME=csd322_security_demo_2015_Fred_Carella_mvn_git_connectionPool
JNDI_NAME=jdbc/csd322_security_demo_2015_Fred_Carella_mvn_git
USER_NAME=username
PASSWORD=password
GROUP_NAME=group_name
GROUP_TABLE=v_user_role
USER_TABLE=v_user_role
REALM_NAME=csd322_security_demo_2015_Fred_Carella_mvn_git_Realm

# create pool
${bin}/asadmin create-jdbc-connection-pool --datasourceclassname com.mysql.jdbc.jdbc2.optional.MysqlDataSource --restype javax.sql.DataSource --property PortNumber=${DATABASE_PORT}:Password=${DATABASE_PASSWORD}:User=${DATABASE_USER}:ServerName=localhost:DatabaseName=${DATABASE_NAME} ${CONNECTION_POOL_NAME}

# Create JDBC Resource

${bin}/asadmin create-jdbc-resource --connectionpoolid ${CONNECTION_POOL_NAME} ${JNDI_NAME}

# Create JDBC Realm

${bin}/asadmin create-auth-realm --classname com.sun.enterprise.security.auth.realm.jdbc.JDBCRealm  --property user-name-column=${USER_NAME}:password-column=${PASSWORD}:group-name-column=${GROUP_NAME}:jaas-context=jdbcRealm:datasource-jndi="${JNDI_NAME}":group-table=${GROUP_TABLE}:user-table=${USER_TABLE}:digestrealm-password-enc-algorithm=AES   ${REALM_NAME}

# One last thing to note is that the server must be started in order for these commands to work.
