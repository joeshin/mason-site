<%class>
use Poet qw(:file);
route ":name";
</%class>

<h2><% $.name | H %></h2>

<hr>
<& warning.mi &>
<hr>

<% $content %>

<%init>
my $file = join( "/", $.wiki_root, $.name ) . ".txt";
$m->not_found unless -f $file;
my $content = read_file($file);
$content = html_escape($content);
$content =~ s/\n/\n<br>/g;
$.subtitle = "Mason HQ wiki archive: " . $.name;
</%init>
