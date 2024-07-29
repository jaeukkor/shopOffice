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
		              	<div class="row mb-4">
		                  <label for="inputText" class="col-sm-1 col-form-label">회원명</label>
		                  <div class="col-sm-2">
		                    <input type="text" class="form-control" id="userName" name="userName">
		                  </div>
		                </div>
		           <td>
		           <td rowspan="2">
		                <div class="row mb-4">
		                  <label for="inputText" class="col-sm-1 col-form-label">답변여부</label>
		                  <div class="col-sm-2">
		                    <select class="form-control" id="replyYn" name="replyYn">
		                    	<option value=''>선택</option>
		                    	<option value='Y'>예</option>
		                    	<option value='N'>아니오</option>
		                    </select>
		                  </div>
		                </div>		
              		</td>
              		<td rowspan="2">
              			<button type="button" class="btn btn-info" onclick="search();">조회</button>
              		</td>
              	</tr>
              	<tr>
              		<td>
              			<div class="row mb-3">
		                  <label for="inputDate" class="col-sm-1 col-form-label">등록일</label>
		                  <div class="col-sm-2">
		                    <input type="date" class="form-control" id="regDtFrom" name="regDtFrom">
		                  </div>
		                  ~
		                  <div class="col-sm-2">
		                    <input type="date" class="form-control" id="regDtTo" name="regDtTo">
		                  </div>
		                  
		                </div>
              		</td>
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
                    <th scope="col">문의유형</th>
                    <th scope="col">회원ID</th>
                    <th scope="col">회원명</th>
                    <th scope="col">제목</th>
                    <th scope="col">문의등록일</th>
                    <th scope="col">답변여부</th>
                    <th scope="col">답변등록일</th>
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
  
  <div class="modal fade" id="inquiryInfo" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">고객문의</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
             <table class="table table-hover" id = "inquiryTable">
                <thead>
                  <tr>
                    <tr>
                    	<th scope="col">제목</th>
                    	<td id="title"></td>
                    </tr>
                    <tr>
                    	<th scope="col">유형</th>
                    	<td id="boardType"></td>
                    	</tr>
                    <tr>
                    	<th scope="col">회원ID</th>
                    	<td id="userIdtxt"></td>
                    	</tr>
                    <tr>
                    	<th scope="col">회원명</th>
                    	<td id="userNametxt"></td>
                    	</tr>
                    <tr>
                    	<th scope="col">문의일</th>
                    	<td id= "regDt"></td>
                    	</tr>
                    <tr>
                    	<th scope="col">첨부파일</th>
                    	<td id="attchFile"></td>
                    	</tr>
                    <tr>
                    	<th scope="col">문의내용</th>
                    	<td id="content"></td>
                    	</tr>
                    <tr>
                    	<th scope="col">답변내용</th>
                    	<td><textarea  cols="50" rows="5" id="replyContent" ></textarea></td>
                    	</tr>
                </thead>
                <tbody>
              	</tbody>
              </table>
              
            
           </div>
           <div class="modal-footer">
             <button type="button" class="btn btn-primary" onclick="upReply()">답변등록</button>
             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
           </div>
         </div>
       </div>
     </div><!-- End Vertically centered Modal-->
     
     <form id="hiddenform">
     <input type='hidden' id='userId' name='userId'>
     <input type='hidden' id='boardSeq' name='boardSeq'>
     <input type='hidden' id='replyContentt' name='replyContent'>
     </form>
     
     <script>
     function search(){
         call_server(searchform,'/inquiry/searchlist',getlist);
     }
     
     function getlist(list){
         $('#boardTable > tbody').empty();
         for(var i=0;i<list.length;i++){
             str="<tr onclick=\"boardDetail('"+list[i].userId+"','"+list[i].boardSeq+"');\" style=\"cursor:pointer;\">";
             str+="<td></td>";
             str+="<td>"+list[i].boardType+"</td>";
             str+="<td>"+list[i].userId+"</td>";
             str+="<td>"+list[i].userName+"</td>";
             str+="<td>"+list[i].title+"</td>";
             str+="<td>"+list[i].regDt+"</td>"; 
             str+="<td>"+list[i].replyYn+"</td>";
             str+="<td>"+list[i].replyDt+"</td>";
             str+="</tr>";
             $('#boardTable tbody').append(str);
         }
     }
     
     
     
     
 	function boardDetail(id, seq){
         $('#userId').val(id);
         $('#boardSeq').val(seq);
         call_server(hiddenform,'/getBoardDetail',getBoardList);  
 	} //회원의 주문정보.
 
 	function getBoardList(vo){
 		
 		$('#inquiryTable > tbody').empty();
 		
 		$('#title').text(vo.title);
 		$('#boardType').text(vo.boardType);
 		$('#userIdtxt').text(vo.userId);
 		$('#userNametxt').text(vo.userName);
 		$('#regDt').text(vo.regDt);
 		$('#attchFile').text(vo.attchFile);
 		$('#content').text(vo.content);
 		$('#replyContent').text(vo.replyContent);
 		$('#inquiryInfo').modal('show');
 		
 	}
 	function upReply(){
 		$('#replyContentt').val($('#replyContent').val());
 		call_server(hiddenform,'/getReply', getReplyAdd);
 	}
 	
 	function getReplyAdd(cnt){
		 		
		if(cnt>0){
		    alert("답변등록");
		    $('#inquiryInfo').modal('hide');    //모달 닫기.
		    search();
		}else{
		    alert("답변실패");
		}
		 	}
		     
     
     
     
     
     </script>
