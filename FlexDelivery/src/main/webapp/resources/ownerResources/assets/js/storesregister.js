/**
 * storesregister.js
 */
 

 	function validate_oRegisterNo(num){
		var pattern = new RegExp(/^[0-9]*$/g);
		return pattern.test(num);
		/*
			businessLicense에서 사용함
			0 에서 9사이의 숫자로 시작하거나 끝나야 한다는 의미 (^는 시작, $는 끝을 의미)
			닫기 대괄호(]) 뒤의 * 기호는 0번 이상 반복
		*/
	}
