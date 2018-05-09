function calc(){
   for(var i=0;i<array.length;i++){
   var pay=0;
   switch(array[i].getPay()){
      case 1: pay=15000; break;
      case 2: pay=25000; break;
      case 3: pay=35000; break;
      case 4: pay=45000; break;
   }

   switch(array[i].getTime()){
      case 1: array[i].setYapay(1500); break;
      case 2: array[i].setYapay(2500); break;
      case 3: array[i].setYapay(3500); break;
      case 4: array[i].setYapay(4500); break;
   }

   array[i].setGapay(7000*array[i].getFcount());

   switch(array[i].getId().charAt(1)){
      case '1': array[i].setHopay(900000); break;
      case '2': array[i].setHopay(400000); break;
      case '3': array[i].setHopay(600000); break;
      case '4': array[i].setHopay(800000); break;
      case '5': array[i].setHopay(300000); break;
      case '6': array[i].setHopay(800000); break;
      case '7': array[i].setHopay(800000); break;
   }

   switch(array[i].getId().charAt(0)){
      case 'A': array[i].setDept('영업부'); break;
      case 'B': array[i].setDept('업무부'); break;
      case 'C': array[i].setDept('홍보부'); break;
      case 'D': array[i].setDept('인사부'); break;
      case 'E': array[i].setDept('경리부'); break;
      case 'F': array[i].setDept('판촉부'); break;
      case 'G': array[i].setDept('총무부'); break;
   }

   var tot=array[i].getHopay()+pay+array[i].getYapay()+array[i].getGapay();
   array[i].setTot(tot);
   var tax=parseInt(array[i].getHopay()*0.1);
   array[i].setReal(tot-tax);

   // alert(employee.getHopay()+', '+employee.getGapay()+', '+employee.getYapay()+', '+employee.getTot()+', '+employee.getReal());
}
}