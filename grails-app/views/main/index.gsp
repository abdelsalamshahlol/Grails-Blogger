<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <meta name="layout" content="mainl">
    <title>${title}</title>
</head>

<body>
<g:set var="date" value="${new Date().format('yyyy')}"></g:set>
<div class="jumbotron">
    <div class="container">
        <div class="row">
            <div class="col-6">
                <h1>
                    ${header}
                    <span>${date}</span>
                </h1>
            </div>
            <g:if test="${name}">
                <div class="col-6">
                    <div class="text-right">
                        <em class="text-info">Welcome Back ${name}</em>
                    </div>
                </div>
            </g:if>
            <g:else>
                <div class="col-6">
                    <div class="text-right">
                        <a href="#">
                            <span class="badge badge-info">Login/Register</span>
                        </a>
                    </div>
                </div>
            </g:else>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-12">
            <g:each in="${posts}" var="${post}">
                <div class="card mb-3" style="widdth: 18rem;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-6">
                                <h5 class="card-title d-inline-block">${post.title}</h5>
                            </div>

                            <div class="col-6">
                                <div class="container text-right">
                                    <g:set var="fullName" value="${post.user.first_n + " " + post.user.last_n}"></g:set>
                                    <span class="badge">${fullName}</span>
                                    <g:set var="formattedDate"
                                           value="${post.publishdate.format('MM/dd/yyyy hh:mm a')}"></g:set>
                                    <span class="badge badge-dark">${formattedDate}</span>
                                </div>
                            </div>
                        </div>
                        <g:set var="snippet"
                               value="${(post.content.length() > 500) ? post.content.substring(0, 500) + "...." : post.content}"></g:set>
                        <p class="card-text">${snippet}</p>
                        <a href="${createLink(controller: 'main', action: 'read', params: [id: post.id])}"
                           class="btn btn-primary">Read Blog</a>
                    </div>
                </div>
            </g:each>
        </div>
    </div>
</div>
</body>
</html>
