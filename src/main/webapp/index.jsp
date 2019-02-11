<html>
  <head>
    
    <script src="/websample_war_exploded/resources/js/app/page.js"></script>
    <script>
              window.onload = function () {
            if (typeof history.pushState === "function") {
                history.pushState("jibberish", null, null);
                window.onpopstate = function () {
                    history.pushState('newjibberish', null, null);
                    // Handle the back (or forward) buttons here
                    // Will NOT handle refresh, use onbeforeunload for this.
                };
            }
        }
        var jsonMenu = [
            {"id":"m1", "name" : "메뉴1", "c_mn" : [ {"id" : "m101", "name" : "메뉴1-1"}, {"id" : "m102", "name" : "메뉴1-2"}]},
            {"id":"m2", "name" : "메뉴2", "c_mn" : [ {"id" : "m201", "name" : "메뉴2-1"}, {"id" : "m202", "name" : "메뉴2-2"}]},
            {"id":"m3", "name" : "메뉴3", "c_mn" : [ {"id" : "m301", "name" : "메뉴3-1"}, {"id" : "m302", "name" : "메뉴3-2"}]},
            {"id":"m4", "name" : "메뉴4", "c_mn" : [ {"id" : "m401", "name" : "메뉴4-1"}, {"id" : "m402", "name" : "메뉴4-2"}]}
        ]
        $(document).ready(function () {

            var header_menu = "";
            header_menu += '<ul>';
            $(jsonMenu).each(function (idx, data) {
                // console.log('id : ', idx , data);
                console.log('id : '+ data.name);
                header_menu += '<li>'+data.name+'</li>';
            });
            header_menu += '</ul>';
            $('#header').html(header_menu);

            $('span.tg').on('click', function () {

                $('#left').load('./sample1.jsp', function() {
                    console.log('load ended');
                });
                loadDetail('./sample2.jsp');
            });
        });
    </script>
  </head>
<body>
<div>
    <div id="header"></div>
    <div>Header<span class="tg" style="cursor: pointer">ddddd1</span></div>
    <div id="left">left</div>
    <div id="right">right</div>
</div>

<div class="loading" style="display:none; position:absolute; z-index:99999; left:0px; top:0px;background-color: #BEBFBC;width:100%;height:100%"/>
</body>
</html>
