<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSRF Token -->
<meta name="csrf-token" content="{{ csrf_token() }}">

<title>{{ config('app.name', 'Traffic Safety Support') }}</title>

<!-- Scripts -->
<script src="{{ asset('js/jquery.min.js') }}" defer></script>
<script src="{{ asset('js/jquery.leanModal.min.js') }}" defer></script>
<script src="{{ asset('js/jquery.flexisel.js') }}" defer></script>
<script src="{{ asset('js/responsiveslides.min.js') }}" defer></script>
<script src="{{ asset('js/jquery.magnific-popup.js') }}" ></script>
<script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" data-auto-replace-svg="nest"></script>

<!-- Fonts -->


<!-- Styles -->
<link rel="stylesheet" href="{{ asset('css/bootstrap.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('css/style.css') }}">
<link rel="stylesheet" href="{{ asset('css/flexslider.css') }}">
<link rel="stylesheet" href="{{ asset('css/bootstrap.css') }}" media="screen">
<link rel="stylesheet" href="{{ asset('css/popuo-box.css') }}" type="text/css" media="all">

<!-- Favicon -->
<link rel="shortcut icon" href="{{{ asset('img/favicon.ico') }}}">
