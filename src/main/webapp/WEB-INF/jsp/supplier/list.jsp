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
		                <th>거래처명</th>
		            </td>
		            <td>
		                <input type="text" style="width:200px;height:40px;" class="form-control" id="supName" name="supplierName">
		            </td>
		                  
		                  <td>
		                  <th>거래처상태</th>
		                  </td>
		                  
		                  <td>
		                    <select class="form-control" style="width:100px;height:40px;" id="supStatus" name="supplierStatus" >
		                    	<option value=''>선택</option>
		                    	<option value='거래중'>거래중</option>
		                    	<option value='거래중지'>거래중지</option>
		                    	
		                    </select>
		                    </td>
		                    
		                    
		                    <td rowspan="2">
              			<button type="button" class="btn btn-info" onclick="search();">조회</button>
              				</td>
              				
              				<td rowspan="2">
              			<button type="button" class="btn btn-info" onclick="newSup();">신규</button>
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
                    <th scope="col">거래처코드</th>
                    <th scope="col">거래처명</th>
                    <th scope="col">대표명</th>
                    <th scope="col">전화번호</th>
                    <th scope="col">담당자명</th>
                    <th scope="col">담당자 연락처</th>
                    <th scope="col">담당자 이메일</th>
                    <th scope="col">상태</th>
                    <th scope="col">등록일</th>
                    
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
  
  
  
  
  
  <div class="modal fade" id="supDetail" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">거래처 등록/수정</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
           	<form id="supDataform">
           
           <input type='text' id ='textt' name = 'textt'>
           <input type='hidden' id ='supCd' name = 'supplierCd'>
           	<!--  >input type='text' id ='textt' name = 'textt'-->
             <table class="table table-hover" id = "supDetailTable">
                <thead>
               
                  <tr>
                   
                    <tr>
                    	<th scope="col">거래처코드</th>
                    	<td id="ssupCd" ></td>
                    </tr>
                    <tr>
                    	<th scope="col">거래처명</th>
                    	<td><input type='text' id="ssupName" name="supplierName"></td>
                    </tr>
                    <tr>
                    	<th scope="col">대표명</th>
                    	<td><input type='text' id="ssupCeo" name="supplierCeo"></td>
                    </tr>
                     <tr>
                    	<th scope="col">전화번호</th>
                    	<td><input type='text' id="ssupphone" name="phone"></td>
                    </tr>
                     <tr>
                    	<th scope="col">담당자명</th>
                    	<td><input type='text' id="oopName" name="opName"></td>
                    </tr>
                    <tr>
                    	<th scope="col">담당자 연락처</th>
                    	<td><input type='text' id="oopPhone" name="opPhone"></td>
                    </tr>
                     <tr>
                    	<th scope="col">담당자 이메일</th>
                    	<td><input type='text' id="oopEmail" name="opEmail"></td>
                    </tr>
                    <tr>
                    	<th scope="col">거래상태</th>
                    	<td><input type='text' id="ssupStatus" name="supplierStatus"></td>
                    </tr>
                    	   </thead>
                    	
                    
                    	<tbody>
                    	</tbody>
                    	<tr>
                    	<td><button type="button" onclick="saveSup();">저장</button>
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
    <input type='hidden' id='ggoodsStatus' name='goodsStatus'>
    <input type='hidden' id='odaNo' name='orderNo'>
    
    </form>
     
     
     <script>
      function search(){
    	  $('#supName').val()
    	  $('#supStatus').val()
    	  call_server(searchform , '/supplier/search', searchList);
      }
      function searchList(list){
    	  $('#boardTable > tbody').empty();
    	  
    	  for(var i = 0; i<list.length; i++){
    		  
    		  str="<tr onclick=\"supplierDetail('"+list[i].supplierCd+"');\" style=\"cursor:pointer;\">";
    		  
    		  //str = "<tr>";
    		  str += "<td>"+(i+1)+"</td>";
    		  str += "<td>"+list[i].supplierCd+"</td>";
    		  str += "<td>"+list[i].supplierName+"</td>";
    		  str += "<td>"+list[i].supplierCeo+"</td>";
    		  str += "<td>"+list[i].phone+"</td>";
    		  str += "<td>"+list[i].opName+"</td>";
    		  str += "<td>"+list[i].opPhone+"</td>";
    		  str += "<td>"+list[i].opEmail+"</td>";
    		  str += "<td>"+list[i].supplierStatus+"</td>";
    		  str += "<td>"+list[i].regDt+"</td>";
    		  str += "</td>";
    		  
    		  $('#boardTable > tbody').append( str );
    	  }
      }
      function supplierDetail( cd ){
    	  $('#ssupCd').text('');
    	  $('#ssupName').val('');
    	  $('#ssupCeo').val('');
    	  $('#ssupphone').val('');
    	  $('#oopName').val('');
    	  $('#oopPhone').val('');
    	  $('#oopEmail').val('');
    	  $('#ssupStatus').val('');
    	  
    	  $('#textt').val('U');
    	  $('#supCd').val(cd);
    	  $('#supDetail').modal('show');
    	  
    	  call_server(supDataform , '/supplier/supplierDetail',supplierDetailList );
      }
      function supplierDetailList(vo){
    	  //$('#supDetail').modal('show');
    	  console.log(vo);
    	  $('#ssupCd').text(vo.supplierCd);
    	  $('#ssupName').val(vo.supplierName);
    	  $('#ssupCeo').val(vo.supplierCeo);
    	  $('#ssupphone').val(vo.phone);
    	  
    	  $('#oopName').val(vo.opName);
    	  $('#oopPhone').val(vo.opPhone);
    	  $('#oopEmail').val(vo.opEmail);
    	  $('#ssupStatus').val(vo.supplierStatus);
      }
      
      function saveSup(){
    	  
    	 
    	  call_server(supDataform,'/supplier/upSup',upSup);
      }
      function upSup(c){
    	  if(c>0){
    		  $('#supDetail').modal('hide');
    		  alert("수정이 완료되었습니다.");
    		  location.reload();
    		  search();
    		  
    	  }else{
    		  alert("수정을 실패하였습니다.");
    	  }
      }
      function newSup(){
    	  
    	  $('#ssupCd').text('');
    	  $('#ssupName').val('');
    	  $('#ssupCeo').val('');
    	  $('#ssupphone').val('');
    	  $('#oopName').val('');
    	  $('#oopPhone').val('');
    	  $('#oopEmail').val('');
    	  $('#ssupStatus').val('');
    	  
      
    	  $('#textt').val('I');
    	  $('#supDetail').modal('show');
      }
		
     </script>