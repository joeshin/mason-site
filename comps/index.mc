% $.subtitle = "Home";

<h2>Welcome to Mason and Poet</h2>

<div class="section">
  <p>
    <strong>
      <% $.cpan('Mason') %> is a powerful Perl-based templating system
    </strong>
    for generating HTML or other dynamic content. It has
    powered <a href="/sites">thousands of web sites</a> over the past 15 years,
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

    Mason and Poet were created
    by <a href="http://www.openswartz.com/">Jonathan Swartz</a> with help
    from <a href="http://urth.org/">Dave Rolsky</a>
    and <a href="http://www.linkedin.com/in/kenahoo">Ken Williams</a>.
</div>
