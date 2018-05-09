window.onload=setup;
function setup(){
	document.getElementById("btn").onclick=Click;
}
//값의 유무 검사
function isOk(aaa){
	if(aaa.value == null || aaa.value.length == 0)
		return false;
	else return true;
}
//값의 범위 검사
function isRangeCheck(aaa){
	if(aaa == hobong){
		if(aaa.value >= 1 && aaa.value <= 9) return true;
		else return false;
	}
	if(aaa.value >= 0 && aaa.value <= 10) return true;
	else return false;	
}
function Click(){
	sabun = document.getElementById("sabun");
	hobong = document.getElementById("hobong");
	night = document.getElementById("night");
	family = document.getElementById("family");
	if(!isOk(sabun)){
		alert("사번의 값이 없습니다.");  sabun.focus();
		return false;
	}
	if(!isOk(hobong)){
		alert("호봉의 값이 없습니다.");  hobong.focus();
		return false;
	}
	if(!isOk(night)){
		alert("야근시간의 값이 없습니다.");  night.focus();
		return false;
	}
	if(!isOk(family)){
		alert("부양가족수의 값이 없습니다.");  family.focus();
		return false;
	}
	if(!isRangeCheck(hobong)){
		alert("호봉의 값은 1부터 9까지의 범위입니다."); 
		hobong.focus();
		hobong.value = "";
		return false;
	}
	if(!isRangeCheck(night)){
		alert("야간시간의 값은 0부터 10까지의 범위입니다."); 
		night.focus();
		night.value = "";
		return false;
	}
	if(!isRangeCheck(family)){
		alert("부양가족수의 값은 0부터 10까지의 범위입니다."); 
		family.focus();
		family.value = "";
		return false;
	}
	
	document.forms[0].submit();
}






