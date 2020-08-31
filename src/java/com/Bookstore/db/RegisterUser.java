package com.Bookstore.db;
import com.Bookstore.bean.UserInfoBean;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
public class RegisterUser{
   static int status=0;
   
      public static int register(UserInfoBean userInfoBean) throws ParseException{
          
          Connection con=GetCon.getCon();
          PreparedStatement ps;
          
          try{
              //have to check password
             
              ps=con.prepareStatement("Insert into user_details values(?,?,?,?,?,?,?)");
               
               ps.setString(1, userInfoBean.getName());
               ps.setString(2,userInfoBean.getEmail());
               ps.setString(3, userInfoBean.getUsername());
               ps.setString(4,userInfoBean.getPassword());
              // String date=bd+"-"+"MARCH"+"-"+by;
               java.util.Date birthDate=(java.util.Date) new SimpleDateFormat("dd-mm-yyyy").parse(userInfoBean.getBday());
             
              java.sql.Date sqlDate=new java.sql.Date(birthDate.getTime());
               ps.setDate(5,sqlDate);
             // ps.setString(5, date);
              ps.setString(6, userInfoBean.getGender());
               ps.setString(7, userInfoBean.getPhone());
               
               status=ps.executeUpdate();
               System.out.println(status);
               ps.close();
          }
          catch(SQLException e){
              e.printStackTrace();
          }
          //con.close
          return status;  
      }
}

