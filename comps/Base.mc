<%class>
has 'subtitle';

sub title { $.subtitle ? "Mason: " . $.subtitle : "Mason" }

method TrimLines () {
    sub {
        s/^\s+//m;
        s/\s+$//m;
        return $_;
    };
}
</%class>

<%augment wrap>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title><% $.title %></title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/arta.css">
    <script src="js/highlight.pack.js"></script>
    <script>hljs.initHighlightingOnLoad();</script>
  </head>
  <body>

    <div id="header">
      <!--img src="images/blue-bg.jpg" id="background" /-->
      <img src="images/brick-bg.jpg" id="background" />
      <span class="logo">Mason + Poet</span>
    </div>

    <div id="sub-header">
      <span class="description">Powerful Perl-based web framework and templating</span>
    </div>

    <ul id="menu">
      <li class="current"><a href="/">Home</a></li>
      <li><a href="/">Download</a></li>
      <li><a href="/">Documentation</a></li>
      <li><a href="/">FAQ</a></li>
    </ul>

    <div id="main">
      <div class="inner">

        <% inner %>

      </div>
    </div>

  </body>
</html>
        
</%augment>

<%filter MasonCode>
<pre><code>
% $.TrimLines {{
  <% $yield->() %>
% }}
</pre></code>
</%filter>

<%filter PerlCode>
<pre><code>
% $.TrimLines {{
  <% $yield->() %>
% }}
</pre></code>
</%filter>

<%filter ShellCode>
<pre><code>
% $.TrimLines {{
  <% $yield->() %>
% }}
</pre></code>
</%filter>

