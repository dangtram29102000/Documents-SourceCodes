     $(document).ready(function () {
    // lấy vị trí header cách top 
    // debugger;
    var pos=$('#header').position();
    console.log(pos);
    $(window).scroll(function(){
    // vị trí băt đầu cuộn chuột 
     var posScroll= $(document).scrollTop();
        // kiểm tra 
     
        if(parseInt(posScroll) > parseInt(pos.top))
        {
            $('#header').addClass('fixed');
        }
        else $('#header').removeClass('fixed');
    })
     console.log( posScroll);
});
// window.onscroll = function() {myFunction()};
// alert('hiiiiiiiiiiiii');
// var header=document.getElementById("header");
// function myFunction() {
//   if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
//    header.className = "fixed";
//   } else {
//     // document.getElementById("header").className = "";
//   }
// }