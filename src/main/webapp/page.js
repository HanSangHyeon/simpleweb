function loadDetail(url) {
    $('.loading').fadeIn(500);
    $('#right').load(url, function () {
        // $('.loading').fadeIn(2000);
        console.log('load ended');
        setTimeout(function(){
            // 1초 후 작동해야할 코드
            // alert("hello world");
            $('.loading').fadeOut(500);
        }, 500);
    });
}
