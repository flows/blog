<html>
<head>
  <title>The Chiχ website</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="/style/cosmo.min.css" rel="stylesheet" />
  <link href="/style/site.css" rel="stylesheet" />
  <link href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.0/styles/tomorrow-night-eighties.min.css" rel="stylesheet" />
  <style>
  </style>

  <script src="https://code.jquery.com/jquery.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.1.0/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.0/highlight.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.0/languages/javascript.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.0/languages/coffeescript.min.js"></script>
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
  <![endif]-->
</head>
<body>

  <div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="/">Chiχ.io</a>
      </div>
      <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="/">Home</a></li>
          <li><a href="/about">About</a></li>
        </ul>
      </div><!--/.nav-collapse -->
    </div>
  </div>

  <div class="container">
    <div>
       {{&body}}
    </div>
  </div>

  <div id="footer">
  </div>

  <script>hljs.initHighlightingOnLoad();</script>

  <script>
     stroll.bind( 'ul.nav-list' );
  </script>

  </body>
</html>
