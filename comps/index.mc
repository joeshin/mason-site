% $.subtitle = "Home";

<div class="section">
  <p>
    <strong>
      <% $.cpan('Mason') %> is a powerful Perl-based templating system
    </strong>
    for generating HTML or other dynamic content. It has
    powered thousands of web sites over the past 15 years,
    including <a href="http://www.amazon.com/">Amazon.com</a>
    and <a href="http://www.salon.com/">Salon.com</a>.
    <br/>
    <br/>

    <strong>
      <% $.cpan('Poet') %> is a modern companion web framework for Mason.
    </strong>
    It uses <a href="http://plackperl.org/">PSGI/Plack</a>
    for server integration and a selection of best-of-breed CPAN modules for caching,
    logging and configuration.
    <br/>
    <br/>

    Mason can also be used as the templating layer for other Perl web frameworks
    like <% $.cpan('Catalyst::View::Mason2', 'Catalyst') %>
    and <% $.cpan('Dancer::Template::Mason2', 'Dancer' ) %>.
    <br/>

% $.MasonCode {{
    <%text>
    % foreach my $name ('Mason', 'Poet') {
    Welcome to <% $name %>!
    % }
    </%text>
% }}

</div>

<h2>Quick Start</h2>
<div class="section">

  Install <a href="https://metacpan.org/module/App::cpanminus#INSTALLATION">cpanm</a> if necessary. Then run

% $.ShellCode {{
  &gt; cpanm -S --notest Poet
% }}

  <p>This will install Poet and its dependencies, including Mason.<br/>

    <ul>
    <li>Omit the "-S" if you don't have root, in which case cpanminus will install Poet
    and prereqs into ~/perl5.<br/>

    <li>Omit the "--notest" if you want to run all the installation tests (will take about
    x4 as long).<br/><br/></p>
    </ul>
  
  To create your initial environment:

% $.ShellCode {{
    &gt; poet new MyApp
    my_app/.poet_root
    my_app/bin/app.psgi
    my_app/bin/get.pl
    ...
    Now run 'my_app/bin/run.pl' to start your server.
% }}

  Then start your server:

% $.ShellCode {{
    &gt; my_app/bin/run.pl
    Running plackup --Reload ... --env development --port 5000
    Watching ... for file updates.
    HTTP::Server::PSGI: Accepting connections at http://0:5000/
% }}

</div>

