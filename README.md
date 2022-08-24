# JSPTest

***만약 소스코드에 에러표시 뜰때***
>>
![image](https://user-images.githubusercontent.com/76393035/185849210-f518e40e-37d6-44bd-bb9e-31f4eb90a0b5.png)


오른쪽마우스>build path>libraries> external jar 로 webTest폴더의 lib에 있는 jar 모두 추가하기

<br/>
<중요>
<br/>
**showProducts 부분을 시작페이지 삼아서 서버 연결하기!!
각 페이지에서 데이터베이스 연결할때 id는 webmaster가 아닌 shopmaster로 로그인 한 뒤 아이피 주소 변경해야함!!!!!!**

***데이터베이스는 shop_db 말고 webdev사용하기 (원본 db 보호차원)***

![image](https://user-images.githubusercontent.com/76393035/186285592-89612812-2210-4220-88b9-8b062952ab23.png)

login: 로그인 페이지(메인)

loginCheck: 로그인 유효성 검사

logout: 로그아웃, 세션 종료

welcome: 로그인 후 화면

showUsers: 회원 목록 보기

showOrders: 주문 목록 보기

showProducts : db 상품 목록 페이지 

addProduct: 새로운 상품 추가하는 페이지

addProductProcess: db에 새상품 추가하는 과정

editProduct: 상품 정보 수정

modify_proc: db에 수정 정보 반영하기

deleteProduct:상품 삭제

-----------------
JSP 폴더


cart:장바구니에 추가 (버튼 누르면)

showCarts: 장바구니에서 내가 담은 물건 



-------------------
<html영역>

header: 맨 위 헤더

managerMenu: 관리자 메뉴


