<%class>
use Poet qw(:file);

route ":name";
</%class>

<% $content %>

<%init>
my $file = join("/", $.wiki_root, $.name) . ".txt";
$m->not_found unless -f $file;
my $content = read_file($file);
$content = html_escape($content);
$content =~ s/\n\n/\n<br><br>\n/g;
$.subtitle = "Mason HQ wiki archive: " . $.name;
</%init>
