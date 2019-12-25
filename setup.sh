#!/bin/sh

javac -cp WEB-INF/classes/ WEB-INF/classes/com/jspcrud/bean/User.java
javac -cp WEB-INF/classes/ WEB-INF/classes/com/jspcrud/dao/UserDao.java
javac -cp WEB-INF/classes/ WEB-INF/classes/com/jspcrud/dbconnect/ConnectionProvider.java
echo "Done."
