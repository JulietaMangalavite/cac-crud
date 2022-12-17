<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="Vista detalle de ${alumnoVer.nombreCompleto}" />
</jsp:include>

<jsp:include page="../comunes/navbar.jsp" />

<section class="container py-3">
    <div class="row">
        <h1 class="h3">Vista detalle del alumno</h1>
        <p class="lead">Estás viendo los detalles de ${alumnoVer.nombreCompleto}.</p>
    </div>
    
        <div class="row align-items-center px-4 mt-3">
        <div class="col-md-5 col-lg-4" >
            <div class="card h-100">
                <jsp:include page="partes/dataCardAlumno.jsp">
                    <jsp:param name="fotoAlumno" value="${alumnoVer.foto}" />
                    <jsp:param name="nombreCompletoAlumno" value="${alumnoVer.nombreCompleto}" />
                </jsp:include>
            </div>
        </div>
        <div class="col-md-7 col-lg-8" >
            <form id="formAgregarAlumno" action="${pageContext.request.contextPath}/app?accion=update&id=${alumnoVer.id}"
                  method="post" class="was-validated border p-4 rounded-3 bg-light">
                <div class="row">
                    <div class="col-sm-6 mb-3">
                        <label for="nombre" class="form-label">Nombre completo</label>
                        <input type="text" class="form-control" id="nombre" name="nombre completo" value="${alumnoVer.nombreCompleto}" disabled>
                    </div>
                    <div class="col-sm-6 mb-3">
                        <label for="mail" class="form-label">Mail</label>
                        <input type="text" class="form-control" id="mail" name="mail" value="${alumnoVer.mail}" disabled>
                    </div>
                    <div class="col-sm-6 mb-3">
                        <label for="fechaNac" class="form-label">Fecha de nacimiento</label>
                        <input type="date" class="form-control" id="fechaNac" name="fechaNac" value="${alumnoVer.fechaNacimiento}" disabled>
                    </div>
                     <div class="col-sm-6 mb-3">
                        <label for="fechaNac" class="form-label">Edad</label>
                        <input type="text" class="form-control" id="edad" name="edad" value="${alumnoVer.edad}" disabled>
                    </div>
                    
                     <div class="row justify-content-center">
             
                    <div class="col-4">
                        <a href="${pageContext.request.contextPath}/app?accion=edit&id=${alumnoVer.id}" class="btn bg-warning w-100"><i class="bi bi-pencil"></i></a>
                    </div>
                    <div class="col-4">
                        <a href="${pageContext.request.contextPath}/app?accion=remove&id=${alumnoVer.id}" class="btn bg-danger text-light w-100"><i class="bi bi-trash3"></i></a>
                    </div>
                </div>
                    
                        <section class="container">
                             <div class="row py-3 align-items-center justify-content-center">
                            <div class="col-12" >
                                <a class="btn btn-secondary" href="${pageContext.request.contextPath}/app">Volver</a>
                            </div>
                        </div>
                        </section>
                </div>
 </section>                     


<jsp:include page="../comunes/footer.jsp"/>
<jsp:include page="../comunes/finHTML.jsp"/>