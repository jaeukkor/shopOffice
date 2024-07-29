<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  
  <main id="main" class="main">

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body" style="padding-top: 20px;">
              <!-- General Form Elements -->
              <form id="searchform">
              <table class="col-lg-12">
              	<tr>
              		<td>  	
		                <th>관리자명</th>
		            </td>
		            
		            <td>
		                <input type="text" style="width:200px;height:40px;" class="form-control" id="" name="manageName">
		            </td>
		                  
		                  <td>
		                  <th>퇴사여부</th>
		                  </td>
		                  
		                  <td>
		                    <select class="form-control" style="width:100px;height:40px;" id="supStatus" name="supplierStatus" >
		                    	<option value=''>선택</option>
		                    	<option value='Y'>Y</option>
		                    	<option value='N'>N</option>
		                    	
		                    	
		                    </select>
		                    </td>
		                    
		                    
		                    <td rowspan="2">
              			<button type="button" class="btn btn-info" onclick="search();">조회</button>
              				</td>
              				
              				<td rowspan="2">
              			<button type="button" class="btn btn-info" onclick="newManage();">신규</button>
              				</td>
              				
              				
              				</tr>
		                  </table>
		                </div>
		                </form>
		           
              		
          
           <div class="card">
            <div class="card-body">
              <!-- Table with hoverable rows -->
              <form id="boardform">
              <input type='hidden' id='' name=''>
              <table class="table table-hover" id="boardTable">
                <thead>
                  <tr>
                  	
                    <th scope="col">No</th>
                    <th scope="col">관리자 아이디</th>
                    <th scope="col">관리자명</th>
                    <th scope="col">이메일</th>
                    <th scope="col">연락처</th>
                    <th scope="col">등록일</th>
                    <th scope="col">퇴사여부</th>
                    
                    
                  </tr>
                </thead>
                <tbody>
                </tbody>
                </table>
              </form>
              <!-- End Table with hoverable rows -->
			  <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav><!-- End Pagination with icons -->
			   	
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>
  
  
  
  
  
  <div class="modal fade" id="manageDetail" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">관리자 등록/수정</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
           	<form id="Dataform">
           
           <input type='text' id ='textt' name = 'textt'>
           <input type='hidden' id ='supCd' name = ''>
           	<!--  >input type='text' id ='textt' name = 'textt'-->
             <table class="table table-hover" id = "manageTable">
                <thead>
               
                  <tr>
                   
                    <tr>
                    	<th scope="col">관리자 ID</th>
                    	<td ><input type='text' id="manageId"  name="manageId"></td>
                    
                    	<th scope="col">관리자명</th>
                    	<td><input type='text' id="manageName"  name="manageName"></td>
                    </tr>
                    
                    
                    <tr>
                    	<th scope="col">비밀번호</th>
                    	<td><input type='text' id="managePwd" name="managePwd"></td>
                    
                    	<th scope="col">비밀번호 확인</th>
                    	<td><input type='text' id="chkPwd" ></td>
                    </tr>
                    
                    
                     <tr>
                    	<th scope="col">이메일</th>
                    	<td><input type='text' id="email" name="email"></td>
                    </tr>
                    <tr>
                    	<th scope="col">전화번호</th>
                    	<td><input type='text' id="phone" name="phone"></td>
                    </tr>
                     <tr>
                    	<th scope="col">퇴사여부</th>
                    	<td>
                    	<select id='leaveYn' name="leaveYn" >
                    	<option value="">선택</option>
                    	<option value="Y">Y</option>
                    	<option value="N">N</option>
                    	</select>
                    	</td>
                    </tr>
                    
                   </thead>
                    	
                    
                    	<tbody>
                    	</tbody>
                    	<tr>
                    	<td><button type="button" onclick="saveManage();">저장</button>
                    	<td><button type="button" data-bs-dismiss="modal">닫기</button>
                    	</tr>
             </table>
                <!-- tbody>
              	</tbody-->
              </form>
              
              
              
              <div class="modal fade" id="" tabindex="-1">
       <div class="modal-dialog modal-l modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">알림</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
             <table class="table table-hover"  border=1>
             <div class="modal-footer">
             <h3 class="modal-body">주문상태를 변경하시겠습니까?</h3>
             <button type="button" class="btn btn-primary" onclick='yesChange();'>예</button>
             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
             </div>
             </table>
             </div>
             </div>
             </div>
             </div>
            
           </div>
           
         </div>
       </div>
     </div><!-- End Vertically centered Modal-->
     
     <form id="hiddenform">
    <input type='hidden' id='' name=''>
    <input type='hidden' id='' name=''>
    
    </form>
     
     
     <script>
      function search(){
    	  $('#boardTable  > tbody').empty();
    	  call_server(searchform , '/manage/search', searchList);
      }
      
      function searchList(list){
    	  for(var i = 0; i<list.length; i++){
    		  
    		  
    		  str = "<tr onclick=\"clickManage('"+list[i].manageId+"');\" style=\"cursor:pointer;\">";
    		  str += "<td>"+(i+1)+"</td>";
    		  str += "<td>"+list[i].manageId+"</td>";
    		  str += "<td>"+list[i].manageName+"</td>";
    		  str += "<td>"+list[i].email+"</td>";
    		  str += "<td>"+list[i].phone+"</td>";
    		  str += "<td>"+list[i].regDt+"</td>";
    		  str += "<td>"+list[i].leaveYn+"</td>";
    		  str +="</tr>";
    		  
    		  $('#boardTable > tbody').append(str);
    	  }
      }
      function clickManage(id){
    	  
    	  $('#manageId').val(id);
    	  $('#manageDetail').modal('show');
    	  $('#textt').val("U");
    	  
		 
    	  
    	  call_server(Dataform,'/manage/choiceManage', choiceManage);
    	
      }
	  function choiceManage(vo){
		  
		  $('#manageId').val(vo.manageId);
		  $('#manageName').val(vo.manageName);
		  $('#managePwd').val(vo.managePwd);
		  $('#chkPwd').val(vo.managePwd);
		  $('#email').val(vo.email);
		  $('#phone').val(vo.phone);
		  $('#leaveYn').val(vo.leaveYn);
		  
		  $('#manageId').prop('readonly', true);
		  
	  }
	  
	  function saveManage(){
		  call_server(Dataform, '/manage/upManage', upManage);
	  }
	  function upManage(c){
		  if(c>0){
			  alert("성공!");
			  location.href='/manage/list';
		  }else{
			  alert("실패!");
		  }
	  }
	  function newManage(){
		  $('#textt').val("I");
		  $('#manageId').prop('readonly', false);
		  $('#manageId').val('');
		  $('#manageName').val('');
		  $('#managePwd').val('');
		  $('#chkPwd').val('');
		  $('#email').val('');
		  $('#phone').val('');
		  $('#leaveYn').val('');
		  $('#manageDetail').modal('show');
		  
	  }
     </script>