batch

module add --name=org.postgresql --resources=/opt/jboss/wildfly/modules/system/layers/base/org/postgres/main/postgresql-9.4.1212.jre7.jar --dependencies=javax.api,javax.transaction.api
/subsystem=datasources/jdbc-driver=postgres:add(driver-name="postgres",driver-module-name="org.postgres",driver-class-name=org.postgresql.Driver)

module add --name=com.microsoft.sqlserver --resources=/opt/jboss/wildfly/modules/system/layers/base/com/microsoft/sqlserver/main/sqljdbc.jar --dependencies=javax.api,javax.transaction.api
/subsystem=datasources/jdbc-driver=sqlserver:add(driver-name="sqlserver",driver-module-name="com.microsoft.sqlserver",driver-class-name=com.microsoft.sqlserver.jdbc.SQLServerDriver)

module add --name=com.oracle.ojdbc7 --resources=/opt/jboss/wildfly/modules/system/layers/base/com/oracle/ojdbc7/ojdbc7.jar --dependencies=javax.api,javax.transaction.api
/subsystem=datasources/jdbc-driver=oracle:add(driver-name="oracle",driver-module-name="com.oracle.ojdbc7",driver-class-name=oracle.jdbc.OracleDriver)

run-batch
