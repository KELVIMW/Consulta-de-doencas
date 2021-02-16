<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="model.Doenca" %>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Pagina Inicial</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/cover/">

    <!-- Bootstrap core CSS -->
<link href="https://getbootstrap.com/docs/4.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

      <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
  </head>
  <body class="text-center">
    <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="masthead mb-auto">
    <div class="inner">
      <nav class="nav nav-masthead justify-content-center">
        <a class="nav-link" href="/App/">HOME</a>
        <a class="nav-link active" href="/App/criar">CRIAR</a>
      </nav>
    </div>
  </header>

  <main role="main" class="inner cover">
    <h1 class="cover-heading">Lista de doenças</h1>
    <center>
        <%
			List<Doenca> doencas = (List<Doenca>) request.getAttribute("doencas");
            for(Doenca doenca: doencas){
                out.print("Doenca: " + doenca.getNome() + ", ");
                out.print("Sintomas: " + doenca.getSintomas() + "<br/>");
            } 		
        %>
        </center> 
  </main>
</div>
</body>
</html>
