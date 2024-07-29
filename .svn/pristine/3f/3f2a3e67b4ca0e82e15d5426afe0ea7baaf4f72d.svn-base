<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  
  <main id="main" class="main">

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

         
                
                
                
              
            </div>
          </div>
          
          <div class="row">
    <div class="col-lg-4">
        <h3>대분류</h3>
        <table class="table table-hover" id = topT>
            <thead>
                <tr>
                    <th>대분류코드</th>
                    <th>대분류명</th>
                </tr>
            </thead>
            <tbody>
                <!-- 테이블 내용 -->
            </tbody>
        </table>
    </div>
    <div class="col-lg-4">
        <h3>중분류</h3>
        <table class="table table-hover" id = midT>
            <thead>
                <tr>
                    <th>중분류코드</th>
                    <th>중분류명</th>
                </tr>
            </thead>
            <tbody>
                <!-- 테이블 내용 -->
            </tbody>
        </table>
    </div>
    <div class="col-lg-4">
        <h3>소분류</h3>
        <table class="table table-hover" id = botT>
            <thead>
                <tr>
                    <th>소분류코드</th>
                    <th>소분류명</th>
                </tr>
             </thead>
             <tbody>
                <!-- 테이블 내용 -->
            </tbody>
            </table>
            </div>
          </div>
    </section>
    <form id = "searchform">
    <table>
    <tr>
    <td>
    <button type = "button" onclick= "search('','1');">조회하기</button>
    <button type = "button" onclick= "selecs('','1');">대분류가져오기</button>
    </td>
    </tr>
    </table>
    </form >
    <div class="col-sm-2">
    	<table>
    	<td>
		                    <select class="form-control" style ="height:50px" id="dae" name="dae" onchange="selecs($(this).val(),'2')">
		                    	<option value=''>대분류 선택</option>
		                    	
		                    </select>
		                    </td>
		                    <td>
		                    <select class="form-control" style ="height:50px" id="jong" name="jong" onchange="selecs($(this).val(), '3')"> 
		                    	<option value=''>중분류 선택</option>
		                    	
		                    </select>
		                    </td>
		                    <td>
		                    <select class="form-control" style ="height:50px" id="so" name="so"  onchange="selecs($(this).val(), '4')">
		                    	<option value=''>소분류 선택</option>
		                    	
		                    </select>
		                    </td>
		                    </table>
		                  </div>
		                  <div class="row mb-4">
		                  <label for="inputText" class="col-sm-1 col-form-label">카테고리명</label>
		                  <div class="col-sm-2">
		                    <input type="text" class="form-control" id="categoryName" name="ctName">
		                  </div>
		                </div>
		                <button type= 'button' onclick= "changeCategory();">수정</button>
		                <button type= 'button' onclick= "newCategory();">신규</button>
		                
    <form id="hiddenform">
    <input type='hidden' id='upCtCd' name='upCtCd'>
    <input type='hidden' id='ctCd' name='ctCd'>
    <input type='hidden' id='ctLevel' name='ctLevel'>
    <input type='hidden' id='ctName' name='ctName'>
    
    
    
    </form>
    
  </main>
  
  
  	
  	<script>
  	function search(cd,level){
  			
  		
  			$('#upCtCd').val(cd);
  			$('#ctLevel').val(level)
  			call_server(hiddenform, '/all/category', getList);
  		}
		  
  	
  		function getList(list){
  			console.log(list);
  			
  			if($('#ctLevel').val()==1){
  			$('#topT > tbody').empty();
  			$('#midT > tbody').empty();
  			$('#botT > tbody').empty();
  			}else if($('#ctLevel').val()==2){
  				$('#midT > tbody').empty();
  	  			$('#botT > tbody').empty();
  			}else if ($('#ctLevel').val()==3){
  				$('#botT > tbody').empty();	
  			}
  			
  			for(var i=0; i<list.length; i++){
  				
  				str="<tr onclick=\"search('"+list[i].ctCd+"','"+(Number(list[i].ctLevel)+1)+"');\" style=\"cursor:pointer;\">";
	  			//str='<tr>';
			  	str+= '<td>'+list[i].ctCd+'</td>';
			  	str+= '<td>' +list[i].ctName+ '</td>';
			  	str+= '</tr>';
			  	if($('#ctLevel').val()==1){
			  	$('#topT > tbody').append(str);
			  	}else if($('#ctLevel').val()==2){
			  	$('#midT > tbody').append(str);
			  	}else if($('#ctLevel').val()==3){
			  	$('#botT > tbody').append(str);
			  	}
			  
		  }
  		
  		}
  		
  		
  		</script>
  		<script>
  			
  		function selecs(cd,level){
  			console.log(cd);
  			console.log(level);
  			
  			if(level==2){
  				categoryName = $("#dae option:selected").text();
  			}else if(level==3){
  				categoryName = $("#jong option:selected").text();	
  			}else if(level==4){
  				categoryName = $("#so option:selected").text();
  			}else{
  				categoryName="";
  			}
  			
  			$("#categoryName").val(categoryName);
  			
  			
  			$('#upCtCd').val(cd);
  			$('#ctLevel').val(level);
  			$('#ctCd').val(cd);
  			
  			if(level<4){
  				call_server(hiddenform,'/all/category', choiceDetail );
  			}
  		}
  		
  		//$('#so').empty();
  	    	$('#dae').empty();
  			$('#jong').empty();
  			$('#so').empty();
  		var firstOption = "<option value=''>대분류 선택</option>";
  	     $('#dae').append(firstOption);
  	     var secoundOption = "<option value=''>중분류 선택</option>";
  	     $('#jong').append(secoundOption);
  	     var threeOption = "<option value=''>소분류 선택</option>";
  	     $('#so').append(threeOption);
  	     
  		function choiceDetail(list){
  			if($('#ctLevel').val()==1){
  			
  			}else if($('#ctLevel').val()==2){
  				$('#jong').empty();
  	  			$('#so').empty();
  	  			
  	  	     var secoundOption = "<option value=''>중분류 선택</option>";
  	  	     $('#jong').append(secoundOption);
  	  	     var threeOption = "<option value=''>소분류 선택</option>";
  	  	     $('#so').append(threeOption);
  	  			
  			}else if ($('#ctLevel').val()==3){
  				$('#so').empty();
  				
  				var threeOption = "<option value=''>소분류 선택</option>";
  	  	  	     $('#so').append(threeOption);

  			}
  			
  			for(var i=0; i<list.length; i++){
			  	str= "<option value='" +list[i].ctCd+ "' >" +list[i].ctName+ "</option >";
			  	//str+= '<option value>';
			  	if($('#ctLevel').val()==1){
			  	$('#dae').append(str);
			  	
			  	}else if($('#ctLevel').val()==2){
			  	$('#jong').append(str);
			  	}else if($('#ctLevel').val()==3){
			  	$('#so').append(str);
			  	}
			  
		  }
  			
  		}
  		
  		selecs('','1');
  		
  		
  	 	
  		
  		/*
  		$('#dae').on('change', function() {
	 	        // 선택된 값 가져오기
	 	        var selectedLevel = $(this).val();*/
	 	        //$('#categoryName').val($(this).find("option:selected").text());
	 	        // 선택된 레벨을 가지고 categorylist 함수 호출
	 	        //categorylist(selectedLevel, '2');
	 	 

	 	   /* $('#jong').on('change', function() {
	 	        // 선택된 값 가져오기
	 	        var selectedseccd = $(this).val();*/
	 	       // $('#categoryName').val($(this).find("option:selected").text());
	 	        // 선택된 레벨을 가지고 categorylist 함수 호출
	 	        //categorylist(selectedseccd, '3');
	 	   
	 	    /*$('#so').on('change', function() {
	 	        // 선택된 값 가져오기
	 	        var selectedseccd = $(this).val();*/
	 	        //$('#categoryName').val($(this).find("option:selected").text());
	 	        // 선택된 레벨을 가지고 categorylist 함수 호출
	 	        //categorylist(selectedseccd, '3');
	 	    	
	 	    
	 	    
	 	   function changeCategory(){
	  	 		$('#ctName').val($('#categoryName').val());
	  	 		call_server(hiddenform,'/change', updateCate);
	  	 	}
  	 	function updateCate(cnt){
  			if(cnt>0){
  			    alert("수정완료");
  			    //$('#inquiryInfo').modal('hide');    //모달 닫기.
  			  //search('','1');
  			    //location.href='/goods/category';
  			    location.reload();
  			}else{
  			    alert("수정실패");
  			}
  			 	}
  	 	
  	 	
  	 	
  	 	function newCategory(){
  	 		//$('#upCtCd').val();
  			//$('#ctLevel').val();
  			$('#ctName').val($('#categoryName').val());
  	 	
  	 		call_server(hiddenform, '/newCate', newGory);
  	 	}
  	 	
  	 	function newGory(cnt){
  	 		if(cnt>0){
  			    alert("등록완료");
  			    //$('#inquiryInfo').modal('hide');    //모달 닫기.
  			  //search('','1');
  			    //location.href='/goods/category';
  			    location.reload();
  			}else{
  			    alert("등록실패");
  			}
  	 	}
  	 	
  			 	
  	</script>
  
  	
     