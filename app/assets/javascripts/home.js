/**
 * Created with JetBrains RubyMine.
 * User: MacKE
 * Date: 22/03/2013
 * Time: 17:39
 * To change this template use File | Settings | File Templates.
 */
// this js file will serve home, signup, login and faq
$(document).ready(function() {
    $('#content_left').on('mouseenter', '.homeh4', function() {
        $(this).closest('#content_left').find('.blog_desc').slideDown();
    });
    $('#content_left').on('mouseleave', '.homeh4', function() {
        $(this).closest('#content_left').find('.blog_desc').slideUp();
    });
    $('#content_centre').on('mouseenter', '.homeh4', function() {
        $(this).closest('#content_centre').find('.blog_desc').slideDown();
    });
    $('#content_centre').on('mouseleave', '.homeh4', function() {
        $(this).closest('#content_centre').find('.blog_desc').slideUp();
    });
    $('#content_right').on('mouseenter', '.homeh4', function() {
        $(this).closest('#content_right').find('.blog_desc').slideDown();
    });
    $('#content_right').on('mouseleave', '.homeh4', function() {
        $(this).closest('#content_right').find('.blog_desc').slideUp();
    });
});




