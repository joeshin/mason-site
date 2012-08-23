% $.subtitle = "HTML::Mason";

<h2>HTML::Mason</h2>

<div class="section">
Version 1 of Mason (<a href="http://metacpan.org/module/HTML::Mason">HTML::Mason</a>) has
been around since 1998. It is in wide use and is very stable. However it has not changed
much in years and does not use much in the way of Modern Perl.<br/><br/>

Version 2 of Mason (<a href="http://metacpan.org/module/HTML::Mason">Mason</a>), along
with <a href="http://metacpan.org/module/Poet">Poet</a>, is being actively developed and
has a much more modern architecture. If you are just starting out, we recommend you give
Mason 2 a try.<br/><br/>

See a <a href="http://www.openswartz.com/2011/02/21/announcing-mason-2/">summary of differences here</a>.<br/><br/>
</div>

<h2>Old wiki pages</h2>

<div class="section">
Below are archived, frozen pages from the old masonhq.com wiki. They are almost exclusively about HTML::Mason (Mason 1) and mod_perl.
<br/><br/>

<& htmlmason/warning.mi &>

</div>

<ul>
% foreach my $name (@names) {
  <li><a href="/htmlmason/wiki/<% $name %>"><% $name |H %></a></li>
% }
</ul>

<%init>
my $length = length($.wiki_root) + 1;
my @names = map { substr($_, $length, -4) } glob($.wiki_root . "/*.txt");
</%init>
