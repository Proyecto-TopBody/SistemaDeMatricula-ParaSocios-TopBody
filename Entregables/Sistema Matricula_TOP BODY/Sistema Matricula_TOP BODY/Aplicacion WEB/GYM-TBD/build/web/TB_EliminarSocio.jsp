

<%@page import="TOPBODY.JAVA.BEAN.*" %>
<%@page import="java.util.*" %>
<%!
    ArrayList<TB_SocioBean> Lista=null;
%>
<%
    Lista=(ArrayList<TB_SocioBean>)request.getAttribute("LISTA");
%>


<html><!-- InstanceBegin template="/Templates/main_adm.dwt" codeOutsideHTMLIsLocked="false" -->
    <head>
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>Top Gym</title>
    
    	<script>
            function Eliminar()
            {
                document.TB_ELIMINAR.action="<%=request.getContextPath()%>/TB_SocioServlet";
                document.TB_ELIMINAR.method="GET";
                document.TB_ELIMINAR.op.value="8";
                document.TB_ELIMINAR.submit();
            }
        </script>
    
    <!-- InstanceEndEditable -->
    <link href="CSS.css" rel="stylesheet" type="text/css">
    <!-- InstanceBeginEditable name="head" -->
    <!-- InstanceEndEditable -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <style type="text/css">
    body {
	background-image: url();
	background-color: #333;
}
    </style>
    <link href="CSS.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    <br>
    <table width="900" border="0" align="center">
      <tr class="fondo_blanco">
        <td width="891"><img src="IMAGES/LOGO_PROV.jpg" width="351" height="100"></td>
      </tr>
      <tr>
        <td bgcolor="#000000">
        
        <ul id="nav">
            <li> <a href="Mantenimiento_empleado.jsp">PERSONAL</a> </li>
            <li> <a href="Mantenimiento_socio.jsp">SOCIOS</a> </li>
            <li> <a href="Mantenimiento_producto.jsp">PRODUCTOS</a> </li>
            <li> <a href="Mantenimiento_equipo.jsp">EQUIPOS</a> </li>
            <li> <a href="TB_AsistenciaSocio.jsp">ASISTENCIA</a> </li>
            <li><a href="Login.jsp">SALIR</a></li>
        </ul>
        
        </td>
      </tr>
      
      <tr>
        <td align="center">
        
            
            <table width="896" border="0">
            <tr>
                
                <td width="744" rowspan="2" align="center" valign="top" class="fondo_main">
                
                <table width="765" border="0" align="center">
                  <tr>
                    <td width="20">&nbsp;</td>
                    <td width="693"><!-- InstanceBeginEditable name="EditRegion1" -->
					
					
                    <br>
                    <table class="texto2">
                    <tr>
                    <td><h3>ELIMINAR SOCIO</h3></td>
                    </tr>
                    </table>
                    <br>
                    <form name="TB_ELIMINAR">
            			<input type="hidden" name="op">
                        <table border="1" width="500" align="center"  class="texto3">
                            <tr align="center">
                                <td>Seleccionar</td>
                                <td>CODIGO</td>
                                <td>NOMBRE</td>
                                <td>APELLIDO</td>
                                <td>OCUPACION</td>
                                <td>DIRECCION</td>
                                <td>DISTRITO</td>
                                <td>TELEFONO</td>
                                <td>CELULAR</td>
                                <td>DNI</td>
                                <td>FECHA DE NACIMIENTO</td>
                                <td>SEXO</td>
                                <td>ESTADO CIVIL</td>
                                <td>NUMERO DE HIJOS</td>
                                <td>CORREO</td>
                            </tr>
                            <% for(TB_SocioBean s:Lista)
                            {%>
                            <tr align="center" >
                                <td><input type="radio" name="elegir" value="<%=s.getCodsocio()%>"></td>
                                <td><%=s.getCodsocio()%></td>
                                <td><%=s.getNombres()%></td>
                                <td><%=s.getApellidos()%></td>
                                <td><%=s.getOcupacion()%></td>
                                <td><%=s.getDireccion()%></td>
                                <td><%=s.getDistrito()%></td>
                                <td><%=s.getTelf_fijo()%></td>
                                <td><%=s.getCelular()%></td>
                                <td><%=s.getDNI()%></td>
                                <td><%=s.getFecha_nacimiento()%></td>
                                <td><%=s.getSexo()%></td>
                                <td><%=s.getEstado_civil()%></td>
                                <td><%=s.getNum_hijos()%></td>
                                <td><%=s.getCorreo()%></td>
                            </tr>
                            <%}%>
                        </table>
           				<table align="center">
                			<tr>
                            <td><ul id="boton"><li><a href="#" onClick="Eliminar()">Eliminar</a></li></ul></td>
                            </tr>
                        </table>
       			 </form>
                    
					
					
					<!-- InstanceEndEditable --></td>
                    <td width="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td width="693">&nbsp;</td>
                    <td width="20">&nbsp;</td>
                  </tr>
              	</table>
                
              </td>
              
              <td width="130" align="center" valign="top" class="fondo_negro">
			  <!-- InstanceBeginEditable name="EditRegion2" -->
			  
			  <br>
                	<ul id="nav2">
                    	<li><a href="<%=request.getContextPath()%>/TB_SocioServlet?op=1">MATRICULA</a></li>
                        <li><a href="<%=request.getContextPath()%>/TB_SocioServlet?op=4">CAMBIO DE MENBRESIA</a></li>
                        <li><a href="<%=request.getContextPath()%>/TB_SocioServlet?op=10">LISTAR SOCIOS</a></li>
                        <li><a href="<%=request.getContextPath()%>/TB_SocioServlet?op=7">ELIMINAR SOCIOS</a></li>
                    </ul>
			  
			  <!-- InstanceEndEditable -->
              
              </td>
              
            </tr>
            <tr>
              <td align="center" valign="top" class="fondo_negro">
                <img src="IMAGES/LOGO_PROV2.png">
              </td>
            </tr>
            </table>
            
        
        </td>
      </tr>
      <tr class="down">
        <td>Top Body - todos lo derechos reservados 2014 | UTP</td>
      </tr>
    </table>
    </body>
<!-- InstanceEnd --></html>
