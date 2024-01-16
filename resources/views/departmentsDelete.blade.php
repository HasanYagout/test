<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>

<div class="container mt-5 w-50">
    <form id="myform">
        @csrf
        <div class="mb-3">
            <label for="name" class="form-label">Department Name</label>
            <input type="text" class="form-control" id="name" name="name" value="{{request('name')}}" aria-describedby="emailHelp">
            <input type="hidden" id="id" name="id" value="{{request('id')}}">
        </div>

        <button type="submit" class="btn btn-primary">Delete</button>
    </form>
</div>
{{--<form id="myform">--}}

{{--    @csrf--}}
{{--    <label for="name">Department Name</label>--}}
{{--    <input type="text" id="name" name="name" value="{{request('name')}}"><br>--}}
{{--    <input type="hidden" id="id" name="id" value="{{request('id')}}">--}}
{{--    <button id="subBut" type="submit">Delete</button>--}}
{{--</form>--}}

<script>
    $("#myform").submit(function(event){
        event.preventDefault();
        var form =$("#myform")[0];
        var data= new FormData(form);

        $.ajax({
            type:"post",
            url:"{{route('departDelete')}}",
            data:data,
            processData:false,
            contentType:false,
            success:function(data){
                window.location.href = "/departments";
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
