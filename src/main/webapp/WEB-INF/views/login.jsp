<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/sketchy/bootstrap.min.css"
	integrity="sha384-RxqHG2ilm4r6aFRpGmBbGTjsqwfqHOKy1ArsMhHusnRO47jcGqpIQqlQK/kmGy9R"
	crossorigin="anonymous">
	</head>
	
<style>
a {
	text-decoration-line: none;
}
</style>
  <body>
    <!-- https://bootswatch.com/sketchy/ -->
    <div class="container">
      <div class="align-items-start" style="height: 200px"></div>
      <div class="row align-items-center">
        <div class="col-3"></div>
        <form class="col-6"  action="${pageContext.request.contextPath}/login" method="Post">
          <fieldset>
            <legend>로그인 화면</legend>
            <div class="form-group">
              <label for="InputId" class="form-label mt-4">아이디</label>
              <input
                type="text"
                class="form-control"
                id="id"
                name="id"
                placeholder="id"
              />
            </div>
            <div class="form-group">
              <label for="InputPassword" class="form-label mt-2"
                >비밀번호</label
              >
              <input
                type="password"
                class="form-control"
                id="pass"
                name="pass"
                placeholder="pass"
              />
            </div>
            <div style="height: 30px"></div>
            <div class="row">
              <button type="submit" class="btn btn-primary col mx-4 mb-2">
                	로그인
              </button>
            </div>
            <div class="row">
              <button type="button" class="btn btn-primary col mx-4" id="join">
                	회원가입
              </button>
            </div>
          </fieldset>
        </form>
        <div class="col-3"></div>
      </div>
      <div></div>
    </div>
    <script>
		const text = "${msg}";
		console.log(text);
		if(text != null && text != "null" && text != ""){
			alert(text);
		}
	</script>
    <script type="text/javascript"> 
    document.getElementById("join").addEventListener("click",function() {
    	location.href="${pageContext.request.contextPath}/join"
      })
    </script>
  </body>
</html>
