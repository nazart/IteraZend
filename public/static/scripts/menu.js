$(document).ready(function (){

$('#treeMenu ul li:has("div")').find('span:first').addClass('closed');
    $('#treeMenu ul li:has("div")').find('div').hide();	
    $('#treeMenu li:has("div")').find('span:first').click (function (){ 
        $(this).parent('li').find('span:first').toggleClass('opened');
        $(this).parent('li').find('div:first').slideToggle();
		 
    });
    $('#main_navigation ul > li').hover (
        function () {
            $('ul:first', this).not('.MenuSectionArea ul').slideDown(100);
        }, 
        function () {
            $('ul:first', this).not('.MenuSectionArea ul').slideUp(100);			
        }
    );
    
});