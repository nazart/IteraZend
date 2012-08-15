$(document).ready(function (){
$('#imagenMinContent #imagenMin').find('img').hover (function (){ 
        $('#imagenMain img').attr('src',this.src);
    });
    
});