<%-- 
    Document   : modificar
    Created on : 27 dic 2022, 15:39:23
    Author     : user
--%>

<%@page import="modelo.SociosDAO"%>
<%@page import="modelo.Socios"%>
<%@page import="java.util.List"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title>Modificar Socio</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link href=style.css rel="stylesheet">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    
    </head>
    <body>  
        
        <h1 class="fw-bolder text-bg-dark ps-3 py-1 my-0"> <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-cursor" viewBox="0 2 16 16">
        <path d="M14.082 2.182a.5.5 0 0 1 .103.557L8.528 15.467a.5.5 0 0 1-.917-.007L5.57 10.694.803 8.652a.5.5 0 0 1-.006-.916l12.728-5.657a.5.5 0 0 1 .556.103zM2.25 8.184l3.897 1.67a.5.5 0 0 1 .262.263l1.67 3.897L12.743 3.52 2.25 8.184z"/>
        </svg> Gimnasio</h1>
        <p class="fst-italic text-bg-dark ps-3 py-1 my-0">Mens sana in corpore sano</p>


        
        <div class="container" >
        <h1 class="text-bg-secondary text-light fw-bolder text-center py-3 px-3 my-5">Modificar Socio</h1>
                <div class="row" >
                    <%
				String id=request.getParameter("id");
				int mid;
				mid=Integer.parseInt(id);				
				Socios resultado=null;
				SociosDAO  socio=new SociosDAO();
				resultado=socio.mostrarSocio(mid);				
		    %>
                    <form class="p-5" method="POST" action="SociosController?accion=actualizar">
                        <div class="row">
                        <div class="mb-2 col-4">
                            <label for="id" class="form-label" >ID</label>
                            <input type="text" class="form-control" id="id" name="id" readonly="true" value=<%=resultado.getIdSocio() %> >                          
                        </div> 
                        <div class="mb-2 col-4">
                            <label for="nombre" class="form-label" >Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" value=<%=resultado.getNombre() %>   >                       
                        </div> 
                        <div class="mb-2 col-4">
                            <label for="apellido" class="form-label" >Apellido</label>
                            <input type="text" class="form-control" id="apellido" name="apellido" value=<%=resultado.getApellido() %>   >                       
                        </div>
                        </div>
                        <div class="row">
                         <div class="mb-2 col-6">
                            <label for="direccion" class="form-label" >Direccion</label>
                            <input type="text" class="form-control" id="direccion" name="direccion"value=<%=resultado.getDireccion() %>  >                          
                        </div> 
                         <div class="mb-2 col-6">
                            <label for="localidad" class="form-label" >Localidad</label>
                            <input type="text" class="form-control" id="localidad" name="localidad" value=<%=resultado.getLocalidad() %>   >                          
                        </div> 
                        </div>
                          <div class="mb-2 col-6 m-0">
                            <label for="fnac" class="form-label" >Fecha de Nacimiento</label>
                            <input type="date" class="form-control" id="fnac" name="fnac" value=<%=resultado.getFnac() %>  >                          
                        </div> 
                        <div class="row">
                        <div class="mb-2 col-6">
                            <label for="mail" class="form-label" >Email</label>
                            <input type="text" class="form-control" id="mail" name="mail" value=<%=resultado.getMail()%>  >                          
                        </div>  
                        <div class="mb-2 col-6">
                            <label for="telefono" class="form-label" >Telefono</label>
                            <input type="text" class="form-control" id="telefono" name="telefono" value=<%=resultado.getTelefono()%> >                          
                        </div> 
                        </div>
                        
                        <div class="container">
                        <div class="row mt-5 align-content-center">
                            
                        <button type="submit" class="btn btn-danger col-3 me-1">Modificar </button> 
                        
                        <button class="btn btn-dark col-3 ms-1" href="socios.jsp" >Cancelar </button> 
                        
                        </div>
                        </div>
                        </div>                        
                        
                    </form>                
                </div>
       </div>  
    </body>
</html>
