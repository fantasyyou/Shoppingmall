function commquery()  //根据关键字查询
 { 
   var keyword=document.getElementById("keyword").value;
   window.location.href="commset.jsp?keyword="+encodeURI(keyword);
 }

function titlequery(object)  //根据标签查询
 { 
   var keyword=object.innerHTML
   window.location.href="commset.jsp?keyword="+encodeURI(keyword);
 }

function jumpbill() { //跳转到结算页码
   window.location.href="bill.jsp";
 }

function openarea(id)
 { 
   document.getElementById(id).style.background="#D0D0D0";
   document.getElementById("assort-area-"+id).style.display="block";
 }

function closearea(id)
 { 
   document.getElementById(id).style.background="#FFFFFF";
   document.getElementById("assort-area-"+id).style.display="none";
 }