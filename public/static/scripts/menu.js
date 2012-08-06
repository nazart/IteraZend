$(document).ready(function (){
    $('#treeMenu ul li:has("div")').find('span:first').addClass('closed');
    $('#treeMenu ul li:has("div")').find('div').hide();	
    $('#treeMenu li:has("div")').find('span:first').click (function (){ 
        $(this).parent('li').find('span:first').toggleClass('opened');
        $(this).parent('li').find('div:first').slideToggle();
		 
    });
    
    $('#main_navigation .nivelMenu1 > li').hover (
    
        function () {
            //show its submenu
            
            $('ul:first', this).slideDown(100);
        }, 
        function () {
            //hide its submenu
            $('ul:first', this).slideUp(100);			
        }
    );
    
});