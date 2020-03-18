<html>
<head>
    <title>${title}</title>
    <meta name="layout" content="mainl">
</head>

<body>
<div class="container mt-5">
    <div class="row">
        <div class="col-12">
            <h2>${data.title}</h2>

            <div class="row">
                <div class="col-6">
                    <g:set var="formattedDate" value="${data.publishdate.format('M/dd/yyyy hh:mm')}"></g:set>
                    <span>Published On <span class="badge badge-success">${formattedDate}</span></span>
                </div>
                <div class="col-6 text-right">
                   <em> ${data.user.first_n+" "+data.user.last_n}</em>
                </div>
            </div>
            <hr>

            <p>${data.content}</p>
        </div>
    </div>
</div>
</body>
</html>