<%-- 
    Document   : socios
    Created on : 27 dic 2022, 15:39:23
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Socios" %>
<%@page import="modelo.SociosDAO" %>
<%@page import="java.util.List"%>



<!DOCTYPE html>
<html>
    <head>
        <title>Gimnasio</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link href=style.css rel="stylesheet">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/2cbbc87d30.js" crossorigin="anonymous"></script>
       
    </head>
    <body>
                 
        <h1 class="fw-bolder text-bg-dark ps-3 py-1 my-0"> <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-cursor" viewBox="0 2 16 16">
        <path d="M14.082 2.182a.5.5 0 0 1 .103.557L8.528 15.467a.5.5 0 0 1-.917-.007L5.57 10.694.803 8.652a.5.5 0 0 1-.006-.916l12.728-5.657a.5.5 0 0 1 .556.103zM2.25 8.184l3.897 1.67a.5.5 0 0 1 .262.263l1.67 3.897L12.743 3.52 2.25 8.184z"/>
        </svg> Gimnasio</h1>
        <p class="fst-italic text-bg-dark ps-3 pb-3 my-0">Mens sana in corpore sano</p>

        
        
        <div class="container">
            <div class="row">   
                
        <h1 class="text-bg-secondary text-light fw-bolder text-center py-3 px-3 my-5">Listado de Socios</h1>
        
        
                 <a class="btn btn-success col-1 mb-3" href="SociosController?accion=nuevo">Nuevo Socio</a>
                
                
                <table class="table table-dark table-stripped">
                    <thead class="table-secondary">
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                             <th>Direccion</th>
                             <th>Localidad</th>
                             <th>Fecha de Nacimiento</th>
                             <th>Telefono</th>
                             <th>Email</th>
                             <th>Modificar</th>
                             <th>Eliminar</th>
                    </thead>
                    
                    <%
                    List<Socios> resultado=null;
                    SociosDAO s1=new SociosDAO();
                    resultado=s1.listarSocios();
                    
                                for(int i=0;i<resultado.size();i++)
				{
				String ruta="SociosController?accion=modificar&id="+resultado.get(i).getIdSocio();	
				String rutaE="SociosController?accion=eliminar&id="+resultado.get(i).getIdSocio();
				%>                
                    
                
                    <tr>
                         <td><%=resultado.get(i).getIdSocio()%></td>
                         <td><%=resultado.get(i).getNombre()%></td>
                         <td><%=resultado.get(i).getApellido()%></td>
                         <td><%=resultado.get(i).getDireccion()%></td>
                         <td><%=resultado.get(i).getLocalidad()%></td>
                         <td><%=resultado.get(i).getFnac()%></td>
                         <td><%=resultado.get(i).getTelefono()%></td>
                         <td><%=resultado.get(i).getMail()%></td>
                         <td class="text-center"><a href=<%=ruta%>> <i class="fa-sharp fa-solid fa-pen"></i> </a></td>
			 <td class="text-center"><a href=<%=rutaE%>><i class="fa-sharp fa-solid fa-circle-xmark"></i> </a></td>
                    </tr>
                    <%
                        }
                    %>
                   
                </table>
                
                
                
            </div>
            
            
        </div>
        
        
        
        
    </body>
</html>

