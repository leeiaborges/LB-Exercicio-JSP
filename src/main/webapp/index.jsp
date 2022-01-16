<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Calendar"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

   <!-- EXEMPLO -->

   <h1>Primeira Página JSP</h1>
   
   
   <%! boolean formatar = true; %>
   
   <%! 
      String today(){
	   java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat ("yyyy-mm-dd hh:mm:ss");
	   return dt.format(new java.util.Date());
       }
   %>
   
   <h1>A data de hoje é: <%=new java.util.Date()%></h1>
   <h1>A data de hoje é: <%= today() %></h1>
   <h1>A data de hoje é: <%if(formatar){
	                           out.println(today());
	                        }else{
	                             out.println(new java.util.Date());
	                        }%> </h1>
	                        
	                        
	                        
	                        
      <!-- PRIMEIRA PARTE -->
      
<%! int valor = 3; %>

<h1><%if(valor > 3){
    out.println("Valor maior que 3");
}else if (valor < 3) {
	out.println("Valor menor que 3");
}else {
	out.println("Valor igual a 3");
}%> </h1>


      
      
      <!-- SEGUNDA PARTE -->	            
      
  <%! Calendar dt = Calendar.getInstance();  %>        
     
  <%! Integer segundos() {
  return dt.get(Calendar.SECOND); } %>       
  
    <h1>Os segundos é: <%= segundos() %></h1>
    <h1><% if (segundos() %2 == 0){
    	out.println("Os segundos é par"); 
    	}else 
    		out.println("Os segundos é impar"); %> </h1>  
    		
    		

        
   


	                        
</body>
</html>