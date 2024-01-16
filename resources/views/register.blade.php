<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>

{{--<form id="myform">--}}
{{--    @csrf--}}
{{--    <label for="username">Username</label>--}}
{{--    <input type="text" id="name" name="name"><br>--}}
{{--    <label for="email">Email</label>--}}
{{--    <input type="text" id="email" name="email"><br>--}}
{{--    <label for="password">Password</label>--}}
{{--    <input type="password"  id="password" name="password"><br>--}}
{{--    <button id="subBut" type="submit">Register</button>--}}
{{--</form>--}}
<div class="container w-50 mt-5">
    <form id="myform">
        @csrf

        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp">
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">email</label>
            <input type="text" class="form-control" id="email" name="email" aria-describedby="emailHelp">
        </div>


        <div class="mb-3">
            <label for="password"  class="form-label">password</label>
            <input class="form-control" type="password" name="password" id="password">
        </div>


        <button type="submit" class="btn btn-primary">Register</button>
    </form>

</div>

<script>

    $("#myform").submit(function(event){
        event.preventDefault();
        var form =$("#myform")[0];
        var data= new FormData(form);

        $.ajax({
            type:"post",
            url:"{{route('register')}}",
            data:data,
            processData:false,
            contentType:false,
            success:function(data){
                $("#submit").prop("disabled",false);
                console.log(data);
            },
            error:function(e){
                console.log(e.responseText);
                // $("#subBut").prop("disabled",true);
            }

        });
    });
</script>

</body>
</html>
