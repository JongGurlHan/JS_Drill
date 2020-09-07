<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>예제: 서버페이지</title>
</head>
<body>
<%

try {
     String driver="oracle.jdbc.OracleDriver";
     Class.forName(driver); 
     String url = "jdbc:oracle:thin:@localhost:1521:myoracle" ;
     String userName = "project_mogakko" ;
     String passWord = "0000" ;  
     Connection con = DriverManager.getConnection( url , userName , passWord);
     Statement st = con.createStatement();
    //DB에 데이터 입력
     /* String sql = "insert into CONTENT_TABLE (gname,gage,gmoney) values ('강감찬',24,500)" ;
     st.executeUpdate( sql ) ; */
    //DB에 저장된 데이터 불러오는 과정
     String sql2="select CONTENT_LOCATION, CONTENT_LAT, CONTENT_LNG from CONTENT_TABLE" ;
     ResultSet rs = st.executeQuery (sql2) ;

     while(rs.next()){
       
        String content_location = rs.getString("CONTENT_LOCATION");
        double content_lat = rs.getDouble("CONTENT_LAT");
        double content_lng = rs.getDouble("CONTENT_LNG");
        
     	out.write(" "+content_lat+" "+content_lng+"<br/>");   //데이터를 요청하는 클라이언트에게 보내준다.
   
}
con.close();
st.close();

} catch (Exception e) {
         System.out.println(e);
}

%>

</body>
</html>