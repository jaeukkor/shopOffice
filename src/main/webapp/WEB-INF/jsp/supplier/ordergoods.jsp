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
		                  <th>발주일</th>
		                  </td>
		                  
		                  <td>
              			<div class="row mb-3">
		                  <label for="inputDate" class="col-sm-1 col-form-label">가입일</label>
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
                    <th scope="col">발주번호</th>
                    <th scope="col">발주일</th>
                    <th scope="col">상품코드</th>
                    <th scope="col">상품명</th>
                    <th scope="col">발주수량</th>
                    <th scope="col">입고단가</th>
                    <th scope="col">상태</th>
                    <th scope="col">입고일</th>
                    
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
             <h5 class="modal-title">상품 발주</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
           	<form id="supDataform">
           <input type='text' id ='orderNo' name = 'orderNo'>
           <input type='text' id ='textt' name = 'textt'>
           	<!--  >input type='text' id ='textt' name = 'textt'-->
             <table class="table table-hover" id = "supDetailTable">
                <thead>
               
                 
                   
                    <tr>
                    	<th scope="col">거래처</th>
                    	<td>
                    	<select class="form-control" style="width:100px;height:40px;" id="supplierCd" name="supplierCd"
                    	onchange = "ssupplierList($(this).val())">
                    	<option value=''>선택</option>
                    	</select>
                    	</td>
                    </tr>
                    
                    <tr>
                    	<th scope="col">대표자명</th>
                    	<td><input type='text' id="supplierCeo" name="supplierCeo"></td>
                    
                    
                    	<th scope="col">전화번호</th>
                    	<td><input type='text' id="phone" name="phone"></td>
                    </tr>
                    
                     <tr>
                    	<th scope="col">담당자명</th>
                    	<td><input type='text' id="opName" name="opName"></td>
                    
                    	<th scope="col">연락처</th>
                    	<td><input type='text' id="opPhone" name="opPhone"></td>
                    </tr>
                    
                    <tr>
                    	<th scope="col">이메일</th>
                    	<td><input type='text' id="opEmail" name="opEmail"></td>
                    
                        <th scope="col">상태</th>
                    	<td><input type='text' id="supplierStatus" name="supplierStatus"></td>
                    </tr>
                    
                   
                    	
             </thead>
             </table>
             <table class="table table-hover" id = "orderDetailTable">
             	 <thead>
                    <tr>
                    <th scope="col">주문상품</th>
                    <td><button type = 'button' onclick="addOrder();">+</button></td>
                    </tr>
                    
                    </tr>
                    <th scope="col">상품코드</th>
                    <th scope="col">상품명</th>
                    <th scope="col">단가</th>
                    <th scope="col">수량</th>
                    <th scope="col">삭제</th>
                    </tr>
                    </thead>
                    <tbody id = 'addGoodsTbody'>
                   
                    </tbody>
                    </table>
                    <table>
                   <td><button type="button" class="btn btn-primary" onclick='upOrder();'>발주</button></td>
             		<td><button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button></td>
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
    <input type='hidden' id ='supCd' name = 'supplierCd'>
    <input type='hidden' id='oorderNo' name='orderNo'>
    
    </form>
     
     
     <script>
     function search(){
    	 call_server(searchform, '/supplier/searchList', searchList);
     }
	function searchList(list){
		$('#boardTable >tbody').empty();
		for(var i=0; i<list.length; i++){
			//$('#supplierCd').val(list[i].supplierCd);
			str="<tr onclick=\"supplierDetail('"+list[i].orderNo+"');\" style=\"cursor:pointer;\">";
			
			str += "<td>"+(i+1)+"</td>";
			str += "<td>"+list[i].supplierCd+"</td>";
			str += "<td>"+list[i].supplierName+"</td>";
			str += "<td>"+list[i].orderNo+"</td>";
			str += "<td>"+list[i].regDt+"</td>";
			str += "<td>"+list[i].goodsCd+"</td>";
			str += "<td>"+list[i].goodsName+"</td>";
			str += "<td>"+list[i].unitPrice+"</td>";
			str += "<td>"+list[i].buyQty+"</td>";
			str += "<td>"+list[i].orderStatus+"</td>";
			str += "<td>"+list[i].incomeDt+"</td>";
			str += "</tr>";
			
			$('#boardTable >tbody').append(str);
		}
	}
	//조회 클릭후 해당 라인을 선택했을때 
	function supplierDetail(no){
		$('#oorderNo').val(no);
		//$('#oorderNo').val(no);
		$('#textt').val("U");
		
		$('#orderDetailTable > tbody').text('');
		$('#supplierName').val('');
		$('#supplierCeo').val('');
		$('#phone').val('');
		$('#opName').val('');
		$('#opPhone').val('');
		$('#opEmail').val('');
		$('#supplierStatus').val('');
		
		
		$('#supDetail').modal('show');
		call_server(hiddenform, '/supplier/supplierOrder' ,  supplierOrder);
	}
	
	var suppliergoodslist;
	function supplierOrder(vo){
		console.log(vo);
		$('#orderNo').val(vo.orderNo);
		$('#supplierCd').val(vo.supplierCd);
		$('#supplierCeo').val(vo.supplierCeo);
		$('#phone').val(vo.phone);
		$('#opName').val(vo.opName);
		$('#opPhone').val(vo.opPhone);
		$('#opEmail').val(vo.opEmail);
		$('#supplierStatus').val(vo.supplierStatus);
		//거래처 정보들
		
		suppliergoodslist= vo.suppliergoodslist;
		
		//거래처가 팔고있는 상품리스트 = goodslist
		for(var i=0; i<vo.goodslist.length; i++){
			
			str  = "<tr>";
			str += "<td><select id = 'goodsCd' name='suppliergoodslist["+i+"].goodsCd'  ><option value='"+vo.goodslist[i].goodsCd+"'>"+vo.goodslist[i].goodsCd+"</option></select></td>";
			str += "<td>"+vo.goodslist[i].goodsName+"</td>";
			str += "<td><input type='text' id='orderBuyQty' name='suppliergoodslist["+i+"].buyQty' value='"+vo.goodslist[i].buyQty+"'></td>";
			str += "<td><input type='text' id='orderUnitPrice' name='suppliergoodslist["+i+"].unitPrice' value='"+vo.goodslist[i].unitPrice+"'></td>";
			str += "<td><button type ='button' onclick = 'deleteOrder();'>삭제</button></td>";
			str += "</tr>";
			
			$('#orderDetailTable > tbody').append(str);
			//orderDetailTable = 거래처가 팔고있는 상품들 보여주는 테이블
		}
		
		
		
	}
	
	function init(){
		call_server(searchform, '/supplier/supplierList' ,  supplierList);
	}
	//모달에 거래처선택값 시작할때 세팅 펑션
	function supplierList(list){
		for(var i=0;i<list.length;i++){
			$('#supplierCd').append("<option value='"+list[i].supplierCd+"'>"+list[i].supplierName+"</option>");
		}
	}
	
	init();
	
	function upOrder(){
		
		call_server(supDataform, '/supplier/upoda',upoda);
	}
	function upoda(c){
		
		if(c>0){
			alert("수정완료");
			location.reload();
		}else {
			alert("수정실패");
		}
	}
	
	var goodsIdx=0;
	//+추가버튼 펑션
	function addOrder(){
		console.log(suppliergoodslist);
		str = "<tr>";
		str+="  <td><select id = 'goodsCd' name='suppliergoodslist["+goodsIdx+"].goodsCd' onchange='changeGoodsName(this, "+goodsIdx+")' >";
		str+="   <option value=''>==선택==</option>";
		for ( var i=0;i<suppliergoodslist.length;i++){
			str+="<option value='"+suppliergoodslist[i].goodsCd+"'>"+suppliergoodslist[i].goodsCd+"</option>";
		}
		str+="</select></td>";
		str += "<td id='goodsName"+goodsIdx+"'></td>";
		str += "<td><input type='text' id='orderBuyQty' name='suppliergoodslist["+goodsIdx+"].buyQty' value='' style='width:100px;'></td>";
		str += "<td><input type='text' id='orderUnitPrice' name='suppliergoodslist["+goodsIdx+"].unitPrice' value='' style='width:100px;'></td>";
		str += "<td><button type ='button' onclick = 'deleteOrder(this);'>삭제</button></td>";
		str += "</tr>";
		
		$('#orderDetailTable > tbody').append(str);
		goodsIdx++;	
	}
	//거래처 이름 선택 펑션
	function changeGoodsName(obj, idx){
		$('#goodsName'+idx).text('');
		for ( var i=0;i<suppliergoodslist.length;i++){
			if(suppliergoodslist[i].goodsCd== $(obj).val()){
					$('#goodsName'+idx).text(suppliergoodslist[i].goodsName);
			}
		}
		
	}
	//신규 눌렀을때 펑션
	function newSup(){
		
		$('#textt').val("I");
		
		$('#orderDetailTable > tbody').text('');
		$('#supplierCd').val('');
		$('#supplierName').val('');
		$('#supplierCeo').val('');
		$('#phone').val('');
		$('#opName').val('');
		$('#opPhone').val('');
		$('#opEmail').val('');
		$('#supplierStatus').val('');
		
		
		$('#supDetail').modal('show');
	}
	
	function deleteOrder(obj){
		$(obj).closest('tr').remove();
	}
	//모달에 있는 거래처선택하는 펑션
	function ssupplierList(){
		
		
		$('#orderDetailTable > tbody').text('');
		
		$('#supplierName').val('');
		$('#supplierCeo').val('');
		$('#phone').val('');
		$('#opName').val('');
		$('#opPhone').val('');
		$('#opEmail').val('');
		$('#supplierStatus').val('');
		
		call_server(supDataform, '/supplier/ssuplierLists' , ssuplierLists);
	}
	function ssuplierLists(vo){
		
		$('#supplierCd').val(vo.supplierCd);
		$('#supplierCeo').val(vo.supplierCeo);
		$('#phone').val(vo.phone);
		$('#opName').val(vo.opName);
		$('#opPhone').val(vo.opPhone);
		$('#opEmail').val(vo.opEmail);
		$('#supplierStatus').val(vo.supplierStatus);
		
		suppliergoodslist = vo.suppliergoodslist;
		
	}

	</script>