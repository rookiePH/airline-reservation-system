function showdiv(number){
    for(var i=1;i<=3;i++){
        if(i==number){
            var obj=document.getElementById("s_row"+number);
            obj.style.display="block";
        }else{
            var obj=document.getElementById("s_row"+i);
            obj.style.display="none";
        }
    }
}
