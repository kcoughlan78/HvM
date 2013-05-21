/**
 * Created with JetBrains RubyMine.
 * User: MacKE
 * Date: 22/03/2013
 * Time: 17:39
 * To change this template use File | Settings | File Templates.
 */
// this js file will serve home, signup, login and faq
$(document).ready(function(){

    $('#content_admin_left').hover(function(){

            $(this).find('.content_box').stop().animate({marginTop:'0px'},500);

        },

        function(){

            $(this).find('.content_box').stop().animate({marginTop:'-180px'},700);

        });

    $('#content_admin_left_centre').hover(function(){

            $(this).find('.content_box').stop().animate({marginTop:'0px'},500);

        },

        function(){

            $(this).find('.content_box').stop().animate({marginTop:'-180px'},700);

        });
    $('#content_admin_right_centre').hover(function(){

            $(this).find('.content_box').stop().animate({marginTop:'0px'},500);

        },

        function(){

            $(this).find('.content_box').stop().animate({marginTop:'-180px'},700);

        });

    $('#content_admin_right').hover(function(){

            $(this).find('.content_box').stop().animate({marginTop:'0px'},500);

        },

        function(){

            $(this).find('.content_box').stop().animate({marginTop:'-180px'},700);

        });


    $('#content_left').hover(function(){

            $(this).find('.content_box').stop().animate({marginTop:'0px'},500);

        },

        function(){

            $(this).find('.content_box').stop().animate({marginTop:'-180px'},700);

        });

    $('#content_left_centre').hover(function(){

            $(this).find('.content_box').stop().animate({marginTop:'0px'},500);

        },

        function(){

            $(this).find('.content_box').stop().animate({marginTop:'-180px'},700);

        });
    $('#content_right_centre').hover(function(){

            $(this).find('.content_box').stop().animate({marginTop:'0px'},500);

        },

        function(){

            $(this).find('.content_box').stop().animate({marginTop:'-180px'},700);

        });

    $('#content_right').hover(function(){

            $(this).find('.content_box').stop().animate({marginTop:'0px'},500);

        },

        function(){

            $(this).find('.content_box').stop().animate({marginTop:'-180px'},700);

        });

});




