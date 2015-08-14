<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">

    <title>トップページ</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/css/sps.css"/>" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="<c:url value="/"/>">サービス企画システム</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">

          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-3 sidebar">
          <div class="list-group">
            <a href="<c:url value="/service/new/"/>" class="list-group-item">新規作成</a>
          </div>
          <div class="list-group">
            <c:if test="${countForSaveTemporary == 0}" >
            <li class="list-group-item disabled"><span class="badge">${countForSaveTemporary}</span>一時保存</li>
            </c:if>
            <c:if test="${countForSaveTemporary != 0}" >
            <a href="<c:url value="/list/100"/>" class="list-group-item"><span class="badge">${countForSaveTemporary}</span>一時保存</a>
            </c:if>
          </div>
          <div class="list-group">
            <a href="<c:url value="/"/>" class="list-group-item"><span class="badge">${countAll}</span>一覧</a>
          </div>
          <div class="list-group">

            <c:forEach var="serviceCount" items="${serviceCountListForStatus}" varStatus="index">
            <c:if test="${serviceCount.count == 0}" >
              <li class="list-group-item disabled"><span class="badge">${serviceCount.count}</span>${serviceCount.status.name}</li>
		    </c:if>
            <c:if test="${serviceCount.count != 0}" >
              <a href="<c:url value="/list/${serviceCount.status.id}"/>" class="list-group-item"><span class="badge">${serviceCount.count}</span>${serviceCount.status.name}</a>
		    </c:if>
            </c:forEach>
          </div>

          <div class="list-group">
            <c:if test="${countForRejected == 0}" >
            <li class="list-group-item disabled"><span class="badge">${countForRejected}</span>取り下げ</li>
            </c:if>
            <c:if test="${countForRejected != 0}" >
            <a href="<c:url value="/list/99"/>" class="list-group-item"><span class="badge">${countForRejected}</span>取り下げ</a>
            </c:if>

          </div>
        </div>
        <div class="col-sm-9 col-sm-9 main">

        <c:if test="${list.hasServiceSummary()}" >



          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>No</th>
                  <th>対象サイト</th>
                  <th>サービス名</th>
                  <th>起案者</th>
                  <th>ステータス</th>
                  <th>更新日</th>
                </tr>
              </thead>
              <tbody>
              <c:forEach var="serviceSummary" items="${list.list}" varStatus="index">

                <tr>
                  <td>${serviceSummary.id}</td>
                  <td>${serviceSummary.site}</td>
                  <td>${serviceSummary.name}</td>
                  <td>${serviceSummary.drafter}</td>
                  <td>${serviceSummary.status}</td>
                  <td>${serviceSummary.updateDate}</td>
                </tr>
              </c:forEach>
              </tbody>
            </table>
          </div>

        </c:if>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="<c:url value="/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/js/docs.min.js"/>"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
