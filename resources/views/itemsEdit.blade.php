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
<div class="container w-50 mt-5">
    <form method="POST" action="/items/edit/{{$item->id}}" enctype="multipart/form-data">
        @csrf
        @method('PUT')
        <div class="mb-3">
            <label for="name" class="form-label">Item name</label>
            <input type="text" class="form-control" id="name" name="name" value="{{$item->name}}" aria-describedby="emailHelp">
            <input type="hidden" id="id" name="id" value="{{request('id')}}">
        </div>
        <div class="mb-3">
            <label for="department_id" class="form-label">department id</label>
            <select id="department_id" name="department_id" class="form-select" aria-label="Default select example">
                <option name="department_id" id="department_id" value="{{$item->department_id}}">
                    {{$item->department_id}}
                </option>
            </select>
            <input type="hidden" id="id" name="id" value="{{request('id')}}">
        </div>

        <div class="mb-3">
            <label for="image" class="form-label">Image</label>
            <input class="form-control" type="file" name="image" id="image">
        </div>


        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>

{{--<form method="POST" action="/items/edit/{{$item->id}}" enctype="multipart/form-data">--}}

{{--    @csrf--}}
{{--    @method('PUT')--}}
{{--    <label for="name">item Name</label>--}}
{{--    <input type="text" id="name" name="name" value="{{$item->name}}"><br>--}}
{{--    <label for="department_id">departments</label>--}}
{{--    <select name="department_id" id="department_id">--}}
{{--            <option name="department_id" id="department_id" value="{{$item->department_id}}">--}}
{{--                {{$item->department_id}}--}}
{{--            </option>--}}
{{--    </select>--}}
{{--    <label for="image">image</label>--}}
{{--    <input type="file" name="image" id="image">--}}
{{--    <button id="subBut" type="submit">Save</button>--}}
{{--</form>--}}


</body>
</html>
