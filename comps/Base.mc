<%class>
has 'subtitle';
has 'wiki_root' => ( default => $poet->path("etc/m1wiki") );

method title () {
    $.subtitle ? "Mason+Poet: " . $.subtitle : "Mason+Poet";
}

method TrimLines () {
    sub {
        s/^\s+//mg;
        s/\s+$//mg;
        return $_;
    };
}
</%class>

<%augment wrap>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
% $.Defer {{
    <title><% $.title | H %></title>
% }}
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link href="/static/css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="/static/css/arta.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js" type="text/javascript"></script>
    <script src="/static/js/highlight.pack.js"></script>
    <script>
      $(function() {
        $('.perlcode,.masoncode').each(function(i, e) {hljs.highlightBlock(e)});
      });
    </script>
  </head>
  <body>

    <div id="header">
      <span class="logo">Mason + Poet</span><br />
      <span class="description">Powerful Perl-based web templating</span>
    </div>

    <& menu.mi &>

    <div id="main">
      <div class="inner">

        <% inner %>

      </div>
    </div>

  </body>
</html>
        
</%augment>

<%method cpan>
% my ( $module, $display_as ) = @_;
% $display_as ||= $module;
% $.Trim {{
<a href="https://metacpan.org/module/<% $module %>"><% $display_as %></a>
% }}
</%method>

<%filter MasonCode>
<pre><code class="masoncode"><% $m->filter( $.TrimLines, $yield->() ) %></code></pre>
</%filter>

<%filter PerlCode>
<pre><code class="perlcode"><% $m->filter( $.TrimLines, $yield->() ) %></code></pre>
</%filter>

<%filter ShellCode>
<pre><code><div class="shellcode"><% $m->filter( $.TrimLines, $yield->() ) %></div></code></pre>
</%filter>
