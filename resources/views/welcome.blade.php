<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Relational Dropdown</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
        crossorigin="anonymous"></script>
</head>

<body>
    <div class="container">

        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label for="province">Province</label>
                    <select name="province_id" id="province-dropdown"
                        class="form-control  @error('province_id') is-invalid @enderror">
                        @error('province_id')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                        <option>Select province</option>
                        @foreach ($countries as $province)
                            <option value="{{ $province->id }}">
                                {{ $province->name }}
                            </option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label for="district">District</label>
                    <select name="district_id" id="district-dropdown"
                        class="form-control @error('district_id') is-invalid @enderror">
                        @error('district_id')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </select>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label for="municipality">Municipality</label>
                    <select name="municipality_id" id="municipality-dropdown"
                        class="form-control @error('municipality_id') is-invalid @enderror">
                        @error('municipality_id')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </select>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $('#province-dropdown').on('change', function() {
                var province_id = this.value;
                $("#district-dropdown").html('');
                $.ajax({
                    url: "{{ url('get-districts-by-province') }}",
                    type: "POST",
                    data: {
                        province_id: province_id,
                        _token: '{{ csrf_token() }}'
                    },
                    dataType: 'json',
                    success: function(result) {
                        $('#district-dropdown').html(
                            '<option value="">Select district</option>');
                        $.each(result.districts, function(key, value) {
                            $("#district-dropdown").append('<option value="' + value
                                .id +
                                '">' + value.name + '</option>');
                        });
                        $('#municipality-dropdown').html(
                            '<option value="">Select district First</option>');
                    }
                });
            });
            $('#district-dropdown').on('change', function() {
                var district_id = this.value;
                $("#municipality-dropdown").html('');
                $.ajax({
                    url: "{{ url('get-municipalities-by-district') }}",
                    type: "POST",
                    data: {
                        district_id: district_id,
                        _token: '{{ csrf_token() }}'
                    },
                    dataType: 'json',
                    success: function(result) {
                        $('#municipality-dropdown').html(
                            '<option value="">Select municipality</option>');
                        $.each(result.municipalities, function(key, value) {
                            $("#municipality-dropdown").append('<option value="' + value
                                .id +
                                '">' + value.name + '</option>');
                        });
                    }
                });
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            $('#province-dropdown').on('change', function() {
                var province_id = this.value;
                $("#district-dropdown").html('');
                $.ajax({
                    url: "{{ url('get-districts-by-province') }}",
                    type: "POST",
                    data: {
                        province_id: province_id,
                        _token: '{{ csrf_token() }}'
                    },
                    dataType: 'json',
                    success: function(result) {
                        $.each(result.districts, function(key, value) {
                            $("#district-dropdown").append('<option value="' + value
                                .id +
                                '">' + value.name + '</option>');
                        });
                        $('#municipality-dropdown').html(
                            '<option value="">Select district First</option>');
                    }
                });
            });
            $('#district-dropdown').on('change', function() {
                var district_id = this.value;
                $("#municipality-dropdown").html('');
                $.ajax({
                    url: "{{ url('get-municipalities-by-district') }}",
                    type: "POST",
                    data: {
                        district_id: district_id,
                        _token: '{{ csrf_token() }}'
                    },
                    dataType: 'json',
                    success: function(result) {
                        $.each(result.municipalities, function(key, value) {
                            $("#municipality-dropdown").append('<option value="' + value
                                .id +
                                '">' + value.name + '</option>');
                        });
                    }
                });
            });
        });
    </script>


</body>

</html>
