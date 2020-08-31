package com.Bookstore;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
public class RegisterUser{
   static int status=0;
   
      public static int register(String name,String mail,String username,
                String password,String rePassword,String bm,String bd,String by,String gender,String ph) throws ParseException{
          
          Connection con=GetCon.getCon();
          PreparedStatement ps;
          
          try{
              //have to check password
               ps=con.prepareStatement("Insert into user_details1 values(?,?,?,?,?,?,?)");
               
               ps.setString(1, name);
               ps.setString(2,mail);
               ps.setString(3, username);
               ps.setString(4,password);
               String date=bd+"-"+"MARCH"+"-"+by;
           //    Date birthDate=(Date) new SimpleDateFormat("dd-mm-yyyy").parse(date);
              // ps.setDate(5,birthDate);
              ps.setString(5, date);
              ps.setString(6, gender);
               ps.setDouble(7, Double.parseDouble(ph));
               
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

