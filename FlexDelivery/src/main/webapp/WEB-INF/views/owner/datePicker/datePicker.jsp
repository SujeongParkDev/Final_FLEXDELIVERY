<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script src="${pageContext.request.contextPath}/resources/ownerResources/herbJs/jquery-3.5.1.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/bootstrap-datepicker-master/dist/css/bootstrap-datepicker.min.css"> 
<script src="${pageContext.request.contextPath}/resources/ownerResources/bootstrap-datepicker-master/dist/js/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/bootstrap-datepicker-master/dist/locales/bootstrap-datepicker.ko.min.js" charset="UTF-8"></script>


<script>
		
		

		
		
		
		
		
		
		
		
		
		
		
	$(function(){
		xIniDatePicker = function ( controlId , _screenLangCd )
		{
		    var controlDate = $("#" + controlId);
		    if (controlDate.length == 0) { return; }
			
		    var datePickerLang = "en"; // 기본 영어
		    switch ( _screenLangCd )
		    {
		    	case "ko": datePickerLang = "ko"; break;
		    	case "ko-KR": datePickerLang = "ko"; break;
		    	case "ja": datePickerLang = "ja"; break;
		        case "ja-JP": datePickerLang = "ja"; break;
		        default: datePickerLang = "us";
		    }
		
		
		    controlDate.datepicker({
		        assumeNearbyYear: false,
		        autoclose: "true", // 자동으로 창을 닫는다
				format: "yyyy-mm-dd", // 일자 형식
				language: datePickerLang, // 언어코드 ( 한국어 )
				todayBtn: true, // 오늘 버튼
				todayHighlight: true, // 오늘에 하이라이트
				clearBtn: false, // 닫기 버튼
				startDate:'-6m',
	            endDate: '0d'
	            
			});
			
		}
	
		
		//초기화 함수 호출
		xIniDatePicker ( "sDate", "ko" );
		
		$("#btnSearchDate").click(function(){	xShowCalendar("sDate"); });
		
		
		xShowCalendar = function ( _controlId )
			{
				var ctrl = document.getElementById(_controlId); // 컨트롤을 찾는다.
				if ( ctrl != null )
				{
					$(ctrl).datepicker('show');// 달력을 보인다.
				}
				//return false;
			}
		
		
	});
	
	
	
	
	$(function(){
		xIniDatePicker = function ( controlId , _screenLangCd )
		{
		    var controlDate = $("#" + controlId);
		    if (controlDate.length == 0) { return; }
			
		    var datePickerLang = "en"; // 기본 영어
		    switch ( _screenLangCd )
		    {
		    	case "ko": datePickerLang = "ko"; break;
		    	case "ko-KR": datePickerLang = "ko"; break;
		    	case "ja": datePickerLang = "ja"; break;
		        case "ja-JP": datePickerLang = "ja"; break;
		        default: datePickerLang = "us";
		    }
		
		
		    controlDate.datepicker({
		        assumeNearbyYear: false,
		        autoclose: "true", // 자동으로 창을 닫는다
				format: "yyyy-mm-dd", // 일자 형식
				language: datePickerLang, // 언어코드 ( 한국어 )
				todayBtn: true, // 오늘 버튼
				todayHighlight: true, // 오늘에 하이라이트
				clearBtn: false, // 닫기 버튼
				startDate:'-6m',
				endDate: '0d'
				
			});
			
		}
	
		
		//초기화 함수 호출
		xIniDatePicker ( "eDate", "ko" );
		
		$("#btnSearchDate").click(function(){	xShowCalendar("eDate"); });
		
		
		xShowCalendar = function ( _controlId )
			{
				var ctrl = document.getElementById(_controlId); // 컨트롤을 찾는다.
				if ( ctrl != null )
				{
					$(ctrl).datepicker('show');// 달력을 보인다.
				}
				//return false;
			}
	});
 
	
	
		
		

</script>


<style>
	input{
		border: 1px solid rgb(212,212,212);
		border-radius: 5px;
		height:30px;
	}

</style>
</head>


<body>





	
			<div class="input-group" >
			   <input type="text"  class="form-control text-right"  name="startDay" id="sDate"  value="" maxlength="8" style="width:100px;">
			 <span class="mt-2"> &nbsp; ~ &nbsp; </span>
			   <input type="text"  class="form-control text-right"  name="endDayt" id="eDate"  value="" maxlength="8" style="width:100px;"> 
		  </div>
	
	
</body>
</body>
</html>