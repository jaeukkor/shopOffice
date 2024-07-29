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
		                <th>회원명</th>
		            </td>
		            <td>
		                <input type="text" style="width:200px;height:40px;" class="form-control" id="userName" name="userName">
		            </td>
		                  
		                  <td>
		                  <th>주문상태</th>
		                  </td>
		                  
		                  <td>
		                    <select class="form-control" style="width:100px;height:40px;" id="orderStatus" name="orderStatus" >
		                    	<option value=''>선택</option>
		                    	<option value='배송준비중'>배송준비중</option>
		                    	<option value='배송중'>배송중</option>
		                    	<option value='배송완료'>배송완료</option>
		                    	<option value='주문취소'>주문취소</option>
		                    	<option value='결제완료'>결제완료</option>
		                    </select>
		                    </td>
		                    
		                  <th>결제수단</th>
    					<td>
		                    <select class="form-control" style="width:100px;height:40px;" id="paid"  >
		                    	<option value=''>선택</option>
		                    	<option value='카드'>카드</option>
		                    	<option value='카카오페이'>카카오페이</option>
		                    	<option value='네이버페이'>네이버페이</option>
		                    </select>
		                    </td>
		                    </tr>
		                    
		                    <tr>
		                    <td>
		                    <div class="row mb-3">
		                  <label for="inputDate" class="col-sm-1 col-form-label">주문일</label>
		                  <div class="col-sm-2">
		                    <input type="date" class="form-control" id="withdrawDtFrom" name="withdrawDtFrom">
		                  </div>
		                  ~
		                  <div class="col-sm-2">
		                    <input type="date" class="form-control" id="withdrawDtTo" name="withdrawDtTo">
		                  </div>
		                    </div>
		                    </td>
		                    
		                    <td rowspan="2">
              			<button type="button" class="btn btn-info" onclick="search();">조회</button>
              				</td>
              				
              				<td rowspan="2">
              			<button type="button" class="btn btn-info" onclick="wDelivery('배송중');">일괄배송중처리</button>
              				</td>
              				
              				<td rowspan="2">
              			<button type="button" class="btn btn-info" onclick="wDelivery('배송완료');">일괄배송완료처리</button>
              				</td>
              				</tr>
		                  </table>
		                </div>
		                </form>
		           
              		
          
           <div class="card">
            <div class="card-body">
              <!-- Table with hoverable rows -->
              <form id="dataform">
              <input type='hidden' id='oStatus' name='orderStatus'>
              <table class="table table-hover" id="boardTable">
                <thead>
                  <tr>
                  	<th><input type='checkbox' id='sOrder'  name='sOrder'  value='sOrder' onclick="chkAll()"/></th>
                    <th scope="col">No</th>
                    <th scope="col">주문번호</th>
                    <th scope="col">회원ID</th>
                    <th scope="col">회원명</th>
                    <th scope="col">상품명</th>
                    <th scope="col">주문금액</th>
                    <th scope="col">결제수단</th>
                    <th scope="col">주문상태</th>
                    <th scope="col">주문일</th>
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
  
  
  
  
  
  <div class="modal fade" id="odaDetail" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">고객문의</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
           	<form id="oderDataForm">
           	<input type='hidden' id='cStatus' name='orderStatus'>
           	<input type='text' id='cOrderNo' name='ordernolist[0]'>
           	<!--  >input type='text' id ='textt' name = 'textt'-->
             <table class="table table-hover" id = "orderDetailTable">
                <thead>
               
                  <tr>
                   <tr>
                <td>주문자 정보</td>
                </tr>
                    <tr>
                    	<th scope="col">주문번호</th>
                    	<td id="orderNoTxt"></td>
                    </tr>
                    <tr>
                    	<th scope="col">회원명</th>
                    	<td id="userNameTxt"></td>
                    </tr>
                    <tr>
                    	<th scope="col">상품명</th>
                    	<td id="goodsNameTxt"></td>
                    </tr>
                     <tr>
                    	<th scope="col">주문일</th>
                    	<td id="orderDtTxt"></td>
                    </tr>
                     <tr>
                    	<th scope="col">주문금액</th>
                    	<td id="orderPriceTxt"></td>
                    </tr>
                    <tr>
                    	<th scope="col">주문상태</th>
                    	<td id="orderStatusTxt"></td>
                    </tr>
                     <tr>
                    	<th scope="col">수취인</th>
                    	<td id="receiveNameTxt"></td>
                    </tr>
                    <tr>
                    	<th scope="col">수취인 연락처</th>
                    	<td id="phoneTxt"></td>
                    </tr>
                    	<tr>
                    	<th scope="col">배송지 주소</th>
                    	<td id="addrDtlTxt"></td>
                    	</tr>
                    	<tr>
                    	<th scope="col">메모</th>
                    	<td id="memoTxt"></td>
                    	
                    	</tr>
                    	<tbody>
                    	</tbody>
                    	<tr>
                    	<td><button type="button" onclick="cDelivery('결제완료');">결제완료</button>
                    	<td><button type="button" onclick="cDelivery('배송준비중');">배송준비중</button>
                    	<td><button type="button" onclick="cDelivery('배송중');">배송중</button>
                    	<td><button type="button" onclick="cDelivery('배송완료');">배송완료</button>
                    	
                    	<td><button type="button" onclick="cDelivery('주문취소');">주문취소</button>
                    	
                    	<td><button type="button" onclick="saveGoods();">저장</button>
                    	<td><button type="button" data-bs-dismiss="modal">닫기</button>
                    	</tr>
                </thead>
                <!-- tbody>
              	</tbody-->
              </table>
              <table class="table table-hover" id = "orderListTable" >
              		<tr>
					<td>상품정보</td>
					</tr>
					<tr>
							<th>NO</th>
							<th>카테고리</th>
							<th>상품코드</th>
							<th>상품명</th>
							<th>구매단가</th>
							<th>구매수량</th>
							<th>재고수량</th>
					</tr>
					<tbody>
					</tbody>
					<tr>
					<th>결제정보</th>
					</tr>
					<td>결제유형
					<tbody id = "paidWay"></tbody>
					</td>
					
					              
			  </table>
              </form>
              
              
              <div class="modal fade" id="orderStatusC" tabindex="-1">
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
    	 call_server(searchform, '/order/search', searchList);
     }
     
     function searchList(list){
    	 $('#boardTable > tbody').empty();
    	 for(var i =0; i<list.length; i++){
    		 str  = "<tr>";
    		 
    		 str += '<td><input type=\'checkbox\' name=\'ordernolist['+i+']\' value=\''+list[i].orderNo+'\' /></td>';
    		 str += '<td>'+(i+1)+'</td>';
    		 str += "<td><a href='#' onclick=\"orderDetail('"+list[i].orderNo+"');\" style=\"cursor:pointer;\">"+list[i].orderNo+"</a></td>";
    		 str += '<td>'+list[i].userId+'</td>';
    		 str += '<td>'+list[i].userName+'</td>';
    		 str += '<td>'+list[i].orderGoodsName+'</td>';
    		 str += '<td>'+list[i].orderPrice+'</td>';
    		 str += '<td>'+list[i].payWay+'</td>';
    		 str += '<td>'+list[i].orderStatus+'</td>';
    		 str += '<td>'+list[i].orderDt+'</td>';
    		 str += '</tr>';
    		 
    		 $('#boardTable > tbody').append(str);
    	 }
     }
     
     function orderDetail(no){
    	 
    	 $('#odaNo').val(no);
    	 
    	 $('#odaDetail').modal('show');
    	 
    	 
    	 call_server(hiddenform, '/order/detailShow', detailShow);
     }
     
     function detailShow(vo){
    	 
    	 $('#orderNoTxt').text(vo.orderNo);
    	 $('#cOrderNo').val(vo.orderNo);
    	 $('#userNameTxt').text(vo.userName);
    	 $('#goodsNameTxt').text(vo.orderGoodsName);
    	 $('#orderDtTxt').text(vo.orderDt);
    	 $('#orderPriceTxt').text(vo.orderPrice);
    	 $('#orderStatusTxt').text(vo.orderStatus);
    	 $('#receiveNameTxt').text(vo.receiveName);
    	 
    	 $('#phoneTxt').text(vo.receivePhone);
    	 $('#addrDtlTxt').text(vo.addrDtl);
    	 $('#memoTxt').text(vo.memo);
    	 
    	 $('#paidWay').text(vo.payWay)
    	 
    	 list = vo.goodslist; 
    	 
    	 for(var i =0; i<list.length; i++){
    		 str ='<tr>';
    		 str +="<td>"+(i+1)+"</td>";
    		 str += '<td>'+list[i].ctName+'</td>';
    		 str += '<td>'+list[i].goodsCd+'</td>';
    		 str += '<td>'+list[i].goodsName+'</td>';
    		 str += '<td>'+list[i].unitPrice+'</td>';
    		 str += '<td>'+list[i].buyQty+'</td>';
    		 str += '<td>'+list[i].ivQty+'</td>';
    		 str += '</tr>';
    		 
    		 $('#orderListTable').append(str);
    	 }
    	
     }
     
     
     function wDelivery( status){
    	 $('#oStatus').val( status );
    	 call_server(dataform, '/order/updateOrder', updateOrder);
    	     	
     }
     
     function updateOrder(c){
    	 if(c>0){
    		 alert("성공");
    		 location.reload();
    	 }else{
    		 alert("실패");
    	 }
    	 
     }
    	 
    	
			
     function chkAll(){
    	 var chk = $('#sOrder').is(":checked");
    	 $('input:checkbox').prop('checked',chk);
    	 
     }
     function cDelivery(status){
    	 $('#cStatus').val( status );
    	 call_server(oderDataForm,'/order/updateOrder', changeOrder);
     }
     function changeOrder(c){
    	 if(c>0){
    		 $('#odaDetail').modal('hide');
    		 search();
    	 }else{
    		 alert("실패");
    	 }
    	 
    	 }    
		
     </script>