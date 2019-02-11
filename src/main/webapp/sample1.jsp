<html>
<head>
    <title>
    </title>
    <script>
        $(document).ready(function () {
             $('li').on('click', function() {
                 var m = $(this).attr('id');
                 console.log('m : ' + m)
                 if (m == "1") {
                     loadDetail('./sample2.jsp');
                    // $('#right').load('./sample2.jsp');
                 } else if (m == "2") {
                     loadDetail('./sample3.jsp');
                    // $('#right').load('./sample3.jsp');
                 }
             });
        });
    </script>
</head>
<body>
<ul>
    <li id="1">11111</li>
    <li id="2">11112</li>
    <li id="3">11113</li>
    <li id="4">11114</li>
    <li id="5">11115</li>
</ul>
</body>
</html>
