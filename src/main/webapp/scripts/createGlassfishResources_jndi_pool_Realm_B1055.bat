REM Tested and works (Windows 7) BUT you may have to manually add the realm.  Looks like script bailed early???
REM See https://blogs.oracle.com/lindstro/entry/creating_jdbc_options_from_the
REM Note 1: run from the command line

set bin="C:\Program Files\glassfish-4.1.1\bin"
REM My Laptop set bin="E:\glassfish-4.1.1\bin"


set DATABASE_PORT="3306"
set DATABASE_PASSWORD="itstudies12345"
set DATABASE_USER="root"
set DATABASE_NAME="csd322_security_demo_2016_Fred_Carella_mvn_git"
set CONNECTION_POOL_NAME="csd322_security_demo_2016Fred_Carella_mvn_git_connectionPool"
set JNDI_NAME="jdbc/csd322_security_demo_2016_Fred_Carella_mvn_git"
set USER_NAME="username"
set PASSWORD="password"
set GROUP_NAME="group_name"
set GROUP_TABLE="v_user_role"
set USER_TABLE="v_user_role"
set REALM_NAME="csd322_security_demo_2016_Fred_Carella_mvn_git_Realm"

REM create pool
%bin%\asadmin create-jdbc-connection-pool --datasourceclassname com.mysql.jdbc.jdbc2.optional.MysqlDataSource --restype javax.sql.DataSource --property PortNumber=%DATABASE_PORT%:Password=%DATABASE_PASSWORD%:User=%DATABASE_USER%:ServerName=localhost:DatabaseName=%DATABASE_NAME% %CONNECTION_POOL_NAME%

REM Create JDBC Resource

%bin%\asadmin create-jdbc-resource --connectionpoolid %CONNECTION_POOL_NAME% %JNDI_NAME%

REM Create JDBC Realm

%bin%\asadmin create-auth-realm --classname com.sun.enterprise.security.auth.realm.jdbc.JDBCRealm  --property user-name-column=%USER_NAME%:password-column=%PASSWORD%:group-name-column=%GROUP_NAME%:jaas-context=jdbcRealm:datasource-jndi="%JNDI_NAME%":group-table=%GROUP_TABLE%:user-table=%USER_TABLE%:digestrealm-password-enc-algorithm=AES   %REALM_NAME%

REM One last thing to note is that the glassfish server must be started in order for these commands to work.
