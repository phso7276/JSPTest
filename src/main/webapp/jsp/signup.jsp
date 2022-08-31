<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <title>회원가입</title>
    <link rel="stylesheet" href="../resources/css/signup.css" />

    <script>

	$(document).ready(function(){
	
		$("#btn_register").click(function(){
			
			if(imgcheck == "N") { alert("이미지를 업로드하세요."); return false; }
			if($("#u_id").val() == '') { alert("아이디를 입력하세요."); $("#u_id").focus();  return false; }
			if($("#u_name").val() == '') { alert("이름을 입력하세요."); $("#u_name").focus(); return false; }
			var Pass = $("#u_pw").val();
			var Pass1 = $("#u_pw1").val();
			if(Pass == '') { alert("암호를 입력하세요."); $("#u_pw").focus(); return false; }
			if(Pass1 == '') { alert("암호를 입력하세요."); $("#u_pw1").focus(); return false; }
			if(Pass != Pass1) 
				{ alert("입력된 비밀번호를 확인하세요"); $("#u_pw1").focus(); return false; }
			
			// 암호유효성 검사
			var num = Pass.search(/[0-9]/g);
		 	var eng = Pass.search(/[a-z]/ig);
		 	var spe = Pass.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);	
			if(Pass.length < 8 || Pass.length > 20) { alert("암호는 8자리 ~ 20자리 이내로 입력해주세요."); return false; }
			else if(Pass.search(/\s/) != -1){ alert("암호는 공백 없이 입력해주세요."); return false; }
			else if(num < 0 || eng < 0 || spe < 0 ){ alert("암호는 영문,숫자,특수문자를 혼합하여 입력해주세요."); return false; }
			
		 	if($("#u_phone").val() == '') { alert("전화번호를 입력하세요."); $("#u_phone").focus(); return false; }
		 	
		 	//전화번호 문자열 정리
			var beforeTelno = $("#u_phone").val();
		 	var afterTelno = beforeTelno.replace(/\-/gi,"").replace(/\ /gi,"").trim();
		 	
		 	$("#u_phone").val(afterTelno);
		 	
			if($("#u_email").val() == '') { alert("이메일주소를 입력하세요."); $("#u_email").focus(); return false; }
			
			$("#signup").attr("action","memberRegistry.jsp").submit();
						
		});
		
		$("#u_id").change(function(){
			
			$.ajax({
				url : "idCheck.jsp",
				type : "post",
				dataType : "json",
				data : {"u_id" : $("#u_id").val()},
				success : function(data){
					jsonInfo = data;
					if(jsonInfo.id_count == 1){
						$("#checkID").html("동일한 아이디가 이미 존재합니다. 새로운 아이디를 입력하세요.");
						$("#u_id").val("").focus();
									
					}else $("#checkID").html("사용 가능한 아이디입니다.");
					
				}
			});
			
		});

	    var objDragAndDrop = $("#ImageRegistration");
	    
	    //이미 등록되어져 있는 자바 스크립트의 이벤트 --> 웹브라우저가 수행하는 이벤트
	    $(document).on("dragenter","#ImageRegistration",function(e){
	        e.stopPropagation();
	        e.preventDefault();
	        $(this).css('border', '2px solid #0B85A1');
	    });
	   
	    $(document).on("dragover","#ImageRegistration",function(e){
	        e.stopPropagation();
	        e.preventDefault();
	    });

	    $(document).on("drop","#ImageRegistration",function(e){
	        
	        $(this).css('border', '2px dotted #0B85A1');
	        e.preventDefault();
	        //웹브라우저로 가져온 파일에서 정보를 얻어온다.
	        var files = e.originalEvent.dataTransfer.files;
	    
	        imageView(files, objDragAndDrop);
	    });
	    
	    $(document).on('dragenter', function (e){
	        e.stopPropagation();
	        e.preventDefault();
	    });


	    $(document).on('dragover', function (e){
	      e.stopPropagation();
	      e.preventDefault();
	      objDragAndDrop.css('border', '2px dotted #0B85A1');
	    });
		
	    $(document).on('drop', function (e){
	        e.stopPropagation();
	        e.preventDefault();
	        imageView(files, objDragAndDrop);
	    });

	    //drag 영역 클릭시 파일 선택창
	    objDragAndDrop.on('click',function (e){
	        $("#fileUpload").trigger('click');
	    });

	    $("#fileUpload").on('change', function(e) {
	       var files = e.originalEvent.target.files;
	       imageView(files, objDragAndDrop);
	    });
		
	});

	var imgcheck = "N";
	var imgFile = null;
	function imageView(f,obj){

		obj.html("");
		imgFile = f[0];

		if(imgFile.type.indexOf("image") < 0) { alert("이미지 파일만 올려주세요"); return false; }

		const reader = new FileReader();
		reader.onload = function(event){
			obj.html("<img src=" + event.target.result + " id='uploadImg' style='width:350px; height:auto;'>");
		};
		reader.readAsDataURL(imgFile);
		imgcheck = "Y";
	}
	
</script>
</head>
<body>
<br><br><br>

<!--HEADER-->
<jsp:include page="header.jsp" />


<div class="main" align="center">

<section class="signup">    
    	<div class="signup__card">
        <h2>
            <strong >회원가입</strong>
        </h2>
        <form name="signup" id=signup method="post"  enctype="multipart/form-data">
   		    <input type="file" name="fileUpload" id="fileUpload" style="display:none;" />
   		    <center><div id="ImageRegistration">클릭 또는 이미지 파일을 드래그 해서 사진을 등록해 주세요.</div></center><br><br>
            <input type="text" placeholder="아이디를 입력하세요. " name="u_id" id="u_id"  class="u_id"/>
			<p id="checkID" style="color:red; text-align:center;"></p>
			<input type="text" id="u_name" name="u_name" class="u_name" placeholder="이름을 입력하세요.">
        	<input type="password" id="u_pw" name="u_pw" class="u_pw" placeholder="암호를 입력하세요.">
        	<p style="color:red;text-align:center;">※ 8~20이내의 영문자, 숫자, 특수문자 조합으로 암호를 만들어 주세요.</p>
        	<input type="password" id="u_pw1" name="u_pw1" class="u_pw1" placeholder="암호를 한번 더 입력하세요.">
	        <input type="text" id="u_phone" name="u_phone" class="u_phone" placeholder="전화번호를 입력하세요.">
	        <input type="text" id="u_email" name="u_email" class="u_email" placeholder="이메일주소를 입력하세요.">
	        <p style="color:red;">일반 사용자 권한으로 등록됩니다.</p>
	        <input type="button" id="btn_register" class="btn_register" value="사용자 등록">
	        <input type="button" id="btn_cancel" class="btn_cancel" value="취소" onclick="history.back()">
	        <input type="submit" value="로그인 " />
           <p>
                * 비밀번호를 타 사이트와 같이 사용할 경우 도용 위험이 있으니, <br>
                정기적으로 비밀번호를 변경하세요!
            </p>
        </form>
  </div>
</section>
</div>
<!--FOOTER-->
<jsp:include page="footer.jsp" />
</body>
</html>
