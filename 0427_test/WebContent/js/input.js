function input() {
    var id = document.getElementById('txtId').value;
    var name = document.getElementById('txtName').value;
    var pay = document.getElementById('txtPay').value;
    var time = document.getElementById('txtTime').value;
    var fcount = document.getElementById('txtFcount').value;
 
    if(!id || !name || !pay || !time || !fcount) {
        alert('값이 없는 항목이 있습니다.\n확인 후 다시 입력해 주십시오.');
        f.id.focus();
        return false;
    }
   
    var employee = new Employee(id, name, parseInt(pay), parseInt(time), parseInt(fcount));
 
    document.getElementById('txtId').value = '';
    document.getElementById('txtName').value = '';
    document.getElementById('txtPay').value ='';
    document.getElementById('txtTime').value = '';
    document.getElementById('txtFcount').value = '';
   
    // calc(employee);

    array.push(employee);

    //한 개 이상의 입력이 발생하면 계산하기/결과보기 버튼 활성화
    if(array.length >= 1) {
        document.getElementById('btnCalc').disabled = false;
        document.getElementById('btnResult').disabled = false;
    } 
    if(array.length >= 2) { //2개 이상이면 정렬 버튼 활성화
        document.getElementById('btnSort').disabled = false;
    }

 }
 
 
 