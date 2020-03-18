<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <link rel="stylesheet" href="${createLinkTo(dir:'/stylesheets',file:'bootstrap.css')}">
    <title>
        <g:layoutTitle default="MTV Tech Blog"/>
        | MTV Tech Blog
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <g:layoutHead/>
</head>
<body>
${postUrl}

<g:layoutBody/>
<script src="${createLinkTo(dir:'javascripts',file:'jquery-3.3.1.min.js')}" charset="utf-8"></script>
<script src="${createLinkTo(dir:'javascripts',file:'bootstrap.bundle.js')}" charset="utf-8"></script>
<script>
    $(function(){
        $('#logout-btn').on('click',function () {
            $('.logout-form').submit()
        })

        setTimeout(function(){
            $('.alert').fadeOut('slow')
        },6000)
    })
</script>
</body>
</html>
