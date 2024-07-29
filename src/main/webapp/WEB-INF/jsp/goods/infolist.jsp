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
		                <th>상품명</th>
		            </td>
		            <td>
		                <input type="text" style="width:200px;height:40px;" class="form-control" id="goodsName" name="goodsName">
		            </td>
		                  
		                  <td>
		                  <th>상품상태</th>
		                  </td>
		                  <td>
		                    <select class="form-control" style="width:100px;height:40px;" id="status" name="goodsStatus" >
		                    	<option value=''>선택</option>
		                    	<option value='판매중'>판매중</option>
		                    	<option value='판매종료'>판매종료</option>
		                    	
		                    </select>
		                    </td>
		                  <th>카테고리</th>
    					<td>
		                    <select class="form-control" style="width:100px;height:40px;" id="dae" name="dae" onchange="selecs($(this).val(),'2')">
		                    	<option value=''>대</option>
		                    	
		                    </select>
		                    </td>
		                    <td>
		                    <select class="form-control" style="width:100px;height:40px;" id="jong" name="jong" onchange="selecs($(this).val(), '3')"> 
		                    	<option value=''>중</option>
		                    	
		                    </select>
		                    </td>
		                    <td>
		                    <select class="form-control" style="width:100px;height:40px;" id="so" name="so"  onchange="selecs($(this).val(), '4')">
		                    	<option value=''>소</option>
		                    	
		                    </select>
		                    </td>
		                    
		                    <tr>
		                    <td>
		                    <th>거래처</th>
		                    </td>
		                    <td>
		                    <select class="form-control" style="width:100px;height:40px;" id="pSupplierCd" name="supplierCd"  >
		                    	<option value=''>선택</option>
		                    </select>
		                    </td>
		                    <td rowspan="2">
              			<button type="button" class="btn btn-info" onclick="search();">조회</button>
              		</td>
              		<td rowspan="2">
              			<button type="button" class="btn btn-info" onclick="upload();">등록</button>
              		</td>
		                    </tr>
		                  </table>
		                </div>
		           
              		
		               
              	</tr>
              </table>
                
                
                
              </form>
              
            </div>
          </div>
           <div class="card">
            <div class="card-body">
              <!-- Table with hoverable rows -->
              <table class="table table-hover" id="boardTable">
                <thead>
                  <tr>
                    <th scope="col">No</th>
                    <th scope="col">상품코드</th>
                    <th scope="col">상품명</th>
                    <th scope="col">카테고리</th>
                    <th scope="col">판매가</th>
                    <th scope="col">재고량</th>
                    <th scope="col">등록일</th>
                    <th scope="col">상품상태</th>
                  </tr>
                </thead>
                <tbody>
                </tbody>
              </table>
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
  
  <div class="modal fade" id="upGoods" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">고객문의</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
           	<form id="dataform">
           	<input type='text' id ='textt' name = 'textt'>
             <table class="table table-hover" id = "inquiryTable">
                <thead>
                  <tr>
                    <tr>
                    	<th scope="col">상품코드</th>
                    	<td colspan="3"><input  type="text" id="goodsCd" name="goodsCd"></td>
                    </tr>
                    <tr>
                    	<th scope="col">상품명</th>
                    	<td colspan="3"><input type='text' id="ggoodsName" name="goodsName"></td>
                    	</tr>
                    <tr>
                    	<th scope="col">정상가</th>
                    	<td><input type='text' id="normalPrice" name="normalPrice"></td>
                    	<th scope="col">판매가</th> 
                    	<td><input type='text' id="sellPrice" name="sellPrice"></td>
                    	</tr>
                    <tr>
                    	<th scope="col">재고수량</th>
                    	<td><input type='text' id="ivQty" name="ivQty"></td>
                    	<th scope="col">상품상태</th>
                    	<td><select class="form-control" style="width:100px;height:40px;" id="goodsStatus" name="goodsStatus">
                    		<option value='	'>선택</option>
                    		<option value='판매중'>판매중</option>
                    		<option value='판매종료'>판매종료</option>
                    		
                    		</select>
                    		</td>
                    	</tr>
                    <tr>
                    	<th scope="col">카테고리</th>
                    	<td>
                    		<select class="form-control" style="width:200px;" id="ddae" name="ddae" onchange="selecs($(this).val(),'2')">
                    		<option value=''>대</option>
                    	</select>
                    	</td>
                    	<td>
                    		<select class="form-control" style="width:200px;" id="jjong" name="jjong" onchange="selecs($(this).val(),'3')">
                    		<option value=''>중</option>
                    	</select>
                    	</td>
                    	<td>
                    		<select class="form-control" style="width:200px;" id="sso"  name="sso" onchange="selecs($(this).val(),'4')">
                    		<option value=''>소</option>
                    	</select>
                    	</td>
                    	<th scope="col">거래처</th>
                    	<td>
                    	<select class="form-control" style="width:200px;" id="supName" name="supplierCd">
                    		<option value=''>선택</option>
                    	</select>
                    	</td>
                    	</tr>
                    <tr>
                    	<th scope="col">썸네일</th>
                    	<td><input type='text' id="thumnailUrl" name="thumnailUrl"></td>
                    	</tr>
                    	 
                    <tr>
                    	<th scope="col">설명</th>
                    	<td colspan="3"> <textarea  cols="50" rows="5" id="content" name="content"></textarea></td>
                    	</tr>
                    	<tr>
                    	<td><button type="button" onclick="saveGoods();">저장</button>
                    	<td><button type="button" data-bs-dismiss="modal">닫기</button>
                    	</tr>
                </thead>
                <tbody>
              	</tbody>
              </table>
              </form>
              
              
              <div class="modal fade" id="goodsS" tabindex="-1">
       <div class="modal-dialog modal-l modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">알림</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
             <table class="table table-hover"  border=1>
             <div class="modal-footer">
             <h3 class="modal-body">상품정보를 저장하시겠습니까?</h3>
             <button type="button" class="btn btn-primary" onclick='yesGoods();'>예</button>
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
    <input type='hidden' id='goodsStatus' name='goodsStatus'>
    <input type='hidden' id='supplierCd' name='supplierCd'>
    <input type='hidden' id='hgoodsCd' name='goodsCd'>
    <input type='hidden' id='ctLevel' name='ctLevel'>
    <input type='hidden' id='ctCd' name='ctCd'>
    <input type='hidden' id='upCtCd' name='upCtCd'>
    </form>
     
     
     <script>
     function selecs(cd,level){
			console.log(cd);
			console.log(level);
			
			if(level==2){
				categoryName = $("#dae option:selected").text();
				categoryName = $("#ddae option:selected").text();
			}else if(level==3){
				categoryName = $("#jong option:selected").text();	
				categoryName = $("#jjong option:selected").text();	
			}else if(level==4){
				categoryName = $("#so option:selected").text();
				categoryName = $("#sso option:selected").text();
			}else{
				categoryName="";
			}
			
			$("#categoryName").val(categoryName);
			
			
			$('#upCtCd').val(cd);
			$('#ctLevel').val(level);
			$('#ctCd').val(cd);
			
			if(level<4){
				call_server(hiddenform,'/categoryMenu', choiceDetail );
			}
		}
		
		//$('#so').empty();
	    	$('#dae').empty();
	    	$('#ddae').empty();
			$('#jong').empty();
			$('#jjong').empty();
			$('#so').empty();
			$('#sso').empty();
		var firstOption = "<option value=''>대분류 선택</option>";
	     $('#dae').append(firstOption);
	     $('#ddae').append(firstOption);
	     var secoundOption = "<option value=''>중분류 선택</option>";
	     $('#jong').append(secoundOption);
	     $('#jjong').append(secoundOption);
	     var threeOption = "<option value=''>소분류 선택</option>";
	     $('#so').append(threeOption);
	     $('#sso').append(threeOption);
		function choiceDetail(list){
			if($('#ctLevel').val()==1){
			
			}else if($('#ctLevel').val()==2){
				$('#jong').empty();
				$('#jjong').empty();
	  			$('#so').empty();
	  			$('#sso').empty();
	  	     var secoundOption = "<option value=''>중분류 선택</option>";
	  	     $('#jong').append(secoundOption);
	  	     $('#jjong').append(secoundOption);
	  	     
	  	     var threeOption = "<option value=''>소분류 선택</option>";
	  	     $('#so').append(threeOption);
	  	     $('#sso').append(threeOption);
	  	     
			}else if ($('#ctLevel').val()==3){
				$('#so').empty();
				$('#sso').empty();
				
				var threeOption = "<option value=''>소분류 선택</option>";
	  	  	     $('#so').append(threeOption);
	  	  	     $('#sso').append(threeOption);
			}
			
			for(var i=0; i<list.length; i++){
			  	str= "<option value='" +list[i].ctCd+ "' >" +list[i].ctName+ "</option >";
			  	//str+= '<option value>';
			  	if($('#ctLevel').val()==1){
			  	$('#dae').append(str);
			  	$('#ddae').append(str);
			  	
			  	}else if($('#ctLevel').val()==2){
			  	$('#jong').append(str);
			  	$('#jjong').append(str);
			  	}else if($('#ctLevel').val()==3){
			  	$('#so').append(str);
			  	$('#sso').append(str);
			  	}
			  
		  }
			
		}
		
		//selecs('','1');
		
		//상품 조회==========================================
		function search(){
			call_server(searchform, '/searchList',getList);
		}
     
		
		function getList(list){
			$('#boardTable > tbody').empty();
			for (var i=0; i<list.length; i++){
				str="<tr onclick=\"goodsDetail('"+list[i].goodsCd+"');\" style=\"cursor:pointer;\">";
				str += '<td></td>';
				str += '<td>'+list[i].goodsCd+'</td>';
				str += '<td>'+list[i].goodsName+'</td>';
				str += '<td>'+list[i].ctName+'</td>';
				str += '<td>'+list[i].sellPrice+'</td>';
				str += '<td>'+list[i].ivQty+'</td>';
				str += '<td>'+list[i].regDt+'</td>';
				str += '<td>'+list[i].goodsStatus+'</td>';
				str += '</tr>';
				$('#boardTable > tbody').append(str);
				
			}
		}
		//상품 상세 모달
		function goodsDetail(cd){
			$('#textt').val('U');
			$('#hgoodsCd').val(cd);
			call_server(hiddenform, '/goods/getDetail' , getGoodsDetail);
		}
		
		function getGoodsDetail(vo){
			console.log(vo);
			$('#goodsCd').val(vo.goodsCd);
			$('#ggoodsName').val(vo.goodsName);
			$('#normalPrice').val(vo.normalPrice);
			$('#sellPrice').val(vo.sellPrice);
			$('#ivQty').val(vo.ivQty);
			
			
			$('#supName').val(vo.supplierCd);
			$('#goodsStatus').val(vo.goodsStatus); //상품상태  <option value='판매중'>판매중</option>
			
			$('#thumnailUrl').val(vo.thumnailUrl);
			
			$('#content').val(vo.content);
			
			$('#jjong').empty();
			$('#jjong').append("<option value=''>중분류 선택</option>");
			for(var i=0;i<vo.mclist.length;i++){
				$('#jjong').append("<option value='"+vo.mclist[i].ctCd+"'>"+vo.mclist[i].ctName+"</option>");				
			}
			
			$('#sso').empty();
			$('#sso').append("<option value=''>소분류 선택</option>");
			
			for(var i=0;i<vo.sclist.length;i++){
				$('#sso').append("<option value='"+vo.sclist[i].ctCd+"'>"+vo.sclist[i].ctName+"</option>");				
			}
			$('#ddae').val(vo.ctCd.substring(0,2));
			$('#jjong').val(vo.ctCd.substring(0,4));
			$('#sso').val(vo.ctCd);
			
			
			$('#upGoods').modal('show');
		}
		
		// 초기 데이터 세팅.
		function init(){
			call_server(searchform, '/goods/init',setSearchData);
		}
     
		function setSearchData(vo){
			for(var i=0;i<vo.supplierlist.length;i++){
				$('#pSupplierCd').append("<option value='"+vo.supplierlist[i].supplierCd+"'>"+vo.supplierlist[i].supplierName+"</option>");
				$('#supName').append("<option value='"+vo.supplierlist[i].supplierCd+"'>"+vo.supplierlist[i].supplierName+"</option>");
			}
			for(var i=0;i<vo.mCategorylist.length;i++){
				$('#dae').append("<option value='"+vo.mCategorylist[i].ctCd+"'>"+vo.mCategorylist[i].ctName+"</option>");
				$('#ddae').append("<option value='"+vo.mCategorylist[i].ctCd+"'>"+vo.mCategorylist[i].ctName+"</option>");
			}
			
		}
		
		init();
		
		
		//상품수정 저장하기
		function saveGoods(){
			$('#goodsS').modal('show');
		}
		
		
		function yesGoods(){
			call_server(dataform , '/goods/goodsUpdate ', upGoods);
		}
		function upGoods(cnt){
			
			if(cnt>0){
			    alert("수정완료");
			    $('#goodsS').modal('hide');    //모달 닫기.
			    location.reload();
			}else{
			    alert("수정실패");
			}
			 	}
		
		
		
		function upload(){
			$('#textt').val('I');
			$('#upGoods').modal('show');
			
			
			
		}
     </script>