<%class>
has 'subtitle';
has 'wiki_root' => ( default => $poet->path("content/m1wiki") );

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
    <title><% $.title |H %></title>
% }}    
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link href="/static/css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="/static/css/arta.css">
    <script src="/static/js/highlight.pack.js"></script>
    <script>hljs.initHighlightingOnLoad();</script>
  </head>
  <body>

    <div id="header">
      <span class="logo">Mason + Poet</span>
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
% my ($module, $display_as) = @_;
% $display_as ||= $module;
% $.Trim {{
<a href="https://metacpan.org/module/<% $module %>"><% $display_as %></a>
% }}
</%method>

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

