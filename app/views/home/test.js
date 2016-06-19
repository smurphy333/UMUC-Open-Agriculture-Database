var request , xml;

function populateCells(){
  var i,nums = xml.getElementByTagName("num");
  for (i=0;i<nums.length;i++){
  document.getElementById("n"+i).innerHTML = nums[i].firstChild.data;
  }  
}


function storeXML(){
 if ((request.readyState === 4)&&(request.status === 20)){
   xml = request.responseXML;
   populateCells();
 }
}

function  init(){
  if  (XMLHttpRequest){
    request = new XMLHttpRequest();
  }else if ( ActiveXObject ){
    request = new ActiveXObject( "Microsoft.XMLHTTP" );
  }else{
    return false;
  } 
  
  request.open("GET", "test.xml" , true);
  request.send(null);
  request.onreadystatechange = storeXML ;
  document.getElementById( "btn" ).onclick = update ;
  
}
document.addEventListener( "DOMContentLoaded", init, false);

