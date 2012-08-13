% $.subtitle = "Install";

<h2>Install</h2>

<div class="section">

Install <a href="https://metacpan.org/module/App::cpanminus#INSTALLATION">cpanminus</a> (cpanm) if you haven't already. Then run

% $.ShellCode {{
  &gt; cpanm -S --notest Poet
% }}

This will install Poet and its dependencies, including Mason.<br/>

<ul>
  <li>Omit the "-S" if you don't have root, in which case cpanminus will install Poet
    and prereqs into ~/perl5.<br/>
    
  <li>Omit the "--notest" if you want to run all the installation tests (will take about
    x4 as long).<br/><br/></p>
</ul>

</div>

<h2>Source code</h2>

<div class="section">
     The latest source code is on github: <a href="http://github.com/jonswar/perl-mason">jonswar/perl-mason</a> and <a href="http://github.com/jonswar/perl-poet">jonswar/perl-poet</a>.
</div>
