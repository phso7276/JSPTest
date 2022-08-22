<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<head>
<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
<script>


</script>


<title>상품 수정</title>

<style>
body { font-family: "나눔고딕", "맑은고딕" }


</style>

</head>

<%
/* 
	String userid = (String)session.getAttribute("userid");
	if(userid == null) response.sendRedirect("index.jsp");
 */
	request.setCharacterEncoding("utf-8");
 String num = (String)request.getParameter("btn_edit");
 System.out.println(num);
%>	

<script>

function registerForm(){

	if($("#name").val()=='') { alert("이름을 입력하세요!!!"); $("#name").focus(); return false;  }
	if($("#type").val()=='') { alert("타입을 입력하세요!!!");  $("#type").focus(); return false;  }
	if($("#price").val()=='') { alert("가격을 입력하세요!!!");  $("#price").focus(); return false;  }
	if($("#spec").val()=='') { alert("용량을 입력하세요!!!");  $("#spec").focus(); return false;  }
	if($("#desc").val()=='') { alert("설명을 입력하세요!!!");  $("#mcontent").focus(); return false;  }
	
	$("#editForm").attr("action", "modify_proc.jsp").submit();
	
	alert("수정 완료");
	
}

</script>

<style>
body { font-family: "나눔고딕", "맑은고딕"
		  display: flex;
  flex-direction: column;
  align-items: center;
 }

a:link { color: black; }
a:visited { color: black; }
a:hover { color: red; }
a:active { color: red; }
#hypertext { text-decoration-line: none; cursor: hand; }

.center{ display:flex;
  align-items: center;

  }
  
.editForm{
  display: flex;
  flex-direction: column;
  align-items: center;
  padding:50px;
}

.image-display{
  width: 30%;
  height: 30%;
  padding:0px 50px 50px 50px;
  
  }

input, textarea{
	padding: 5px;
	margin:10px;
}

.list{display: flex;

  align-items: center;}


#mcontent{
  width: 850px;
  height: 300px;
  padding: 10px;
  box-sizing: border-box;
  border: solid #adadad;
  font-size: 16px;
  resize: both;
}

.btn_write  {
  position:relative;
  left:20%;
  transform: translateX(-50%);
  margin-top: 20px;
  margin-bottom: 10px;
  width:40%;
  height:40px;
  background: red;
  background-position: left;
  background-size: 200%;
  color:white;
  font-weight: bold;
  border:none;
  cursor:pointer;
  transition: 0.4s;
  display:inline;
}

.btn_cancel{
  position:relative;
  left:20%;
  transform: translateX(-50%);
  margin-top: 20px;
  margin-bottom: 10px;
  width:40%;
  height:40px;
  background: pink;
  background-position: left;
  background-size: 200%;
  color:white;
  font-weight: bold;
  border:none;
  cursor:pointer;
  transition: 0.4s;
  display:inline;
}

</style>

</head>   
<body>

<%

 	String url = "jdbc:mariadb://127.0.0.1:3306/webdev";
	String uid = "webmaster";
	String pwd = "1234";
	String query = "select * from product where p_num=" + num+";"; 
	System.out.println("[수정 보기 쿼리] : " + query);
	
	Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    int p_num =0;
    String p_name = "";
    String p_type = "";
    String p_price = "";
    String p_desc = "";
    String p_spec = "";
    String p_image = "";
    int p_quan = 0;
        
	try{
		
		Class.forName("org.mariadb.jdbc.Driver");
		con = DriverManager.getConnection(url, uid, pwd);

		stmt = con.createStatement();
		rs = stmt.executeQuery(query);
		
		while(rs.next()){ 
			
			p_num= rs.getInt("p_num");
			p_name = rs.getString("p_name");
			p_type = rs.getString("p_type");
			p_price= rs.getString("p_price");
			p_desc = rs.getString("p_desc");
			p_spec = rs.getString("p_spec");
			p_price= rs.getString("p_price");
			p_image = rs.getString("p_image");
			p_quan= rs.getInt("p_quan");
			
			System.out.println(p_desc);
		}
		
	}catch(Exception e)	 {
		e.printStackTrace();
	}
	
	stmt.close();
	rs.close();
	con.close();
	
	

%>

<div>

	<jsp:include page="header.jsp"/>
	<jsp:include page="managerMenu.jsp"/>
	<div class="center">
	
	
	<img src="<%=p_image%>" class="image-display" alt="이미지" />
	
	<form id="editForm" class="editForm" method="POST">
	<div class="list">
	<label class="col-sm-2">품번</label>
			<input type="text" name="num" id="num" value="<%=p_num %>" readonly>
		</div>
		<div class="list">
		<label class="col-sm-2">상품명</label>
		<input type="text" name="name" id="name" value="<%=p_name %> ">
		</div>
		<div class="list">
	<label class="col-sm-2">타입</label>
		<input type="text" name="type" id="type" value="<%=p_type %>">
		</div>
		<div class="list">
	<label class="col-sm-2">가격</label>
		<input type="text" name="price" id="price" value="<%=p_price%>">
		</div>
		<div class="list">
	<label class="col-sm-2">설명</label>
		<textarea cols="40" rows="1" id="desc" name="desc"><%=p_desc%></textarea>
		</div>
		<div class="list">
	<label class="col-sm-2">용량</label>
		<input type="text" id="sepc" name="spec" value="<%=p_spec%>">
		</div>
		<div class="list">
	<label class="col-sm-2">수량</label>
		<input type="text" id="quan" name="quan" value="<%=p_quan%>">
		</div>
		<div class="list">
	<label class="col-sm-2">이미지 파일명</label>
		<textarea cols="40" rows="2" id="image_src" name="image_src" disabled><%=p_image%></textarea>
		</div>
		
		<input type="button" class="btn_write" value="수정" onclick="registerForm()" />
		<input type="button" class="btn_cancel" value="취소" onclick="history.back()" />
	</form>
	</div>
</div>
</body>
</html>