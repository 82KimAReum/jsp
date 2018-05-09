array=[];
window.addEventListener('load',setup);

function setup(){
   document.getElementById('btnInput').addEventListener('click',input);
   document.getElementById('btnCalc').addEventListener('click',calc);
   document.getElementById('btnSort').addEventListener('click',sort);
   document.getElementById('btnResult').addEventListener('click',output);

   document.getElementById('btnCalc').disabled=true; //계산 버튼 비활성화
   document.getElementById('btnSort').disabled=true; //정렬 버튼 비활성화
   document.getElementById('btnResult').disabled=true; //결과 버튼 비활성화

   document.getElementById('btnResult').addEventListener('click',newPage,false);
}


function getEmployee(idx){
   return array[idx];
}
function newPage(evt){
    var feature='width=500, height=700, left='+evt.screenX +
                    ', top='+evt.screenY;
    window.open('result.html','_blank');//새창띄우기



}
function getArray() {
    return array;
}