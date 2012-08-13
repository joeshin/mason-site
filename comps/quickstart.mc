% $.subtitle = "Quick Start";

<h2>Quick Start</h2>

<div class="section">

Once you've <a href="/install">installed Poet</a>, create your initial environment:

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

For more, see <% $.cpan('Poet::Manual::Tutorial') %>.

</div>
