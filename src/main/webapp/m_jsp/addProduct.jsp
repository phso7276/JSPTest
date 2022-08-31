<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<script>


function addProductCheck(){
		
	if(document.productForm.name.value == ''){
		alert("상품명을 입력하세요");
		return false;
	}
	if(document.productForm.type.value == ''){
		alert("타입을 입력하세요");
		return false;
	}
	if(document.productForm.price.value == ''){
		alert("가격을 입력하세요");
		return false;
	}
	if(document.productForm.desc.value == ''){
		alert("설명을 입력하세요");
		return false;
	}
	if(document.productForm.spec.value == ''){
		alert("용량을 입력하세요");
		return false;
	}
	if(document.productForm.image_src.value == ''){
		alert("이미지 주소를 입력하세요");
		return false;
	}
	if(document.productForm.quan.value == ''){
		alert("수량을 입력하세요");
		return false;
	}
	document.productForm.action = 'addProductProcess.jsp';
	document.productForm.submit();
}
function cancelProductCheck(){
	
	alert("상품 등록 취소.");

	document.productForm.action ='addProduct.jsp';
	document.productForm.submit();
	
	//초기 화면으로 이동
}

function press(){
	
	if(event.keyCode == 13){addProductCheck();}
	
}

</script>
<meta charset="utf-8">
<title>상품 등록</title>
<link rel="stylesheet" type="text/css" href="../resources/m_css/addProduct.css" />
</head>
<body>
<div>
	<div>
			<jsp:include page="header.jsp"/>
		<jsp:include page="managerMenu.jsp"/>
	</div>
	<div class="center">
		<form name="productForm" id="productForm" class="productForm" method="post">
			<div class="form-group row">
				<label class="col-sm-2">상품명</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2">타입(1:튜브핸드 2: 퍼퓸핸드 3: 손소독제 4:올팩티브 캔들)</label>
				<div class="col-sm-3">
					<input type="text" name="type" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="text" name="price" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2">설명</label>
				<div class="col-sm-3">
					<input type="text" name="desc" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2">용량</label>
				<div class="col-sm-3">
					<input type="text" name="spec" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2">이미지 주소</label>
				<div class="col-sm-3">
					<input type="text" name="image_src" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2">수량</label>
				<div class="col-sm-3">
					<input type="text" name="quan" class="form-control" value="20">
				</div>
			</div>
			<div class="form-group">
				<div class="col-offset-2">
				<input type="button" id="btn_newProduct" class="addProduct_btn" value="상품 등록" onclick="addProductCheck()"> 
				<input type="button" id="btn_cancelProduct" class="cancelProduct_btn" value="취소" onclick="cancelProductCheck()"> 
				</div>
			</div>
		</form>
	</div>
	</div>
</body>
</html>