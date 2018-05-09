window.addEventListener('load',setup,false);//윈도우가 load되면 setup호출

function setup(){
   
    array= opener.getArray();
    output(array);
}