<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
      <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
      %{--<link rel="stylesheet" href="${createLinkTo(dir:'/stylesheets',file:'bootstrap.css')}">--}%
      <asset:stylesheet href="application.css"></asset:stylesheet>
        <title>
          <g:layoutTitle default="MTV Tech Blog"/>
          | MTV Tech Blog
        </title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <g:layoutHead/>
      </head>
      <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <a class="navbar-brand" style="width: 50rem;" href="${createLink(controller: 'main',action: 'index')}">
            <g:img id="logo" style="width: 10%;" uri="https://cdn.logojoy.com/wp-content/uploads/2018/07/05125808/mtv-logo-1024x814.png"></g:img>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
              <li class="nav-item active">
                <a class="nav-link" href="${createLink(controller: 'main')}">Home
                  <span class="sr-only">(current)</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Features</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Pricing</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Settings
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                  <g:form class="form-inline d-none logout-form" controller="logout"></g:form>
                  <a class="dropdown-item" href="#" id="logout-btn">Logout</a>
                  <a class="dropdown-item" href="#">Another action</a>
                  <a class="dropdown-item" href="#">Something else here</a>
                </div>
              </li>
            </ul>
          </div>
        </nav>
      ${postUrl}

      <g:layoutBody/>
        <script src="${createLinkTo(dir:'javascripts',file:'jquery-3.3.1.min.js')}" charset="utf-8"></script>
        <script src="${createLinkTo(dir:'javascripts',file:'bootstrap.bundle.js')}" charset="utf-8"></script>
      <script>
        $(function(){
            $('#logout-btn').on('click',function () {
                $('.logout-form').submit()
            })
        })
      </script>
      </body>
    </html>
