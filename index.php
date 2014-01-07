<!DOCTYPE html> 
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <script type="text/javascript" src="jquery-1.6.3.min.js"></script>
        <script type="text/javascript" src="jquery.easing.1.3.js"></script>
        <script type="text/javascript">
        <script>
            $(document).ready(function(  ){
                setInterval(function(){volaS()},3000);
           )};
                function volaS(){   
                    $.post("newEmptyPHP.php", {game: <? echo $_GET['hraid'] ?>} , function(data){
                         console.log(data);
                    });
                
            }
        </script>   
    </head>
    <body>
    </body>
</html>
