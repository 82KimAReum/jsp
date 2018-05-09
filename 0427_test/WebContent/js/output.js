function output(array){
    var str='';
    for(var i = 0; i<array.length; ++i){
        str+="<tr>";
        str+='<td>' + array[i].getId() +'</td>';
        str+='<td>' + array[i].getName() +'</td>';
        str+='<td>' + array[i].getDept() +'</td>';
        str+='<td>' + array[i].getPay() +'</td>';
        str+='<td>' + array[i].getHopay() +'</td>';
        str+='<td>' + array[i].getGapay() +'</td>';
        str+='<td>' + array[i].getYapay() +'</td>';
        str+='<td>' + array[i].getTot() +'</td>';
        str+='<td>' + array[i].getReal() +'</td>';
        str+="</tr>";
    }
 
    
    document.getElementById("result").innerHTML= str;
     // document.getElementsByTagName('tbody')[0].innerHTML=str;
    var feature='width=800,height=450';
    //window.open('result.html','_blank',feature);
    
 }