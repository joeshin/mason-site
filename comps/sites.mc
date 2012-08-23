% $.subtitle = "Mason-powered Sites";

<%filter Site ($name, $url, $logo)>
  <li>
    <table width="100%" cellpadding=0 cellspacing=0 border=0>
      <tr>
        <td class="logo">
          <img src="/static/images/logos/<% $logo %>" />
        </td>
        <td>
          <a href="<% $url %>"><% $name %></a><br />
          <% $yield->() %>
        </td>
      </tr>
    </table>
  </li>
</%filter>

<h2>Mason-powered Sites</h2>

<div class="section">
  Mason has powered thousands of web sites, large and small, over the past 15 years.
  Some notable examples are listed below.

  <ul class="mason-sites">
% $.Site('Amazon.com', 'www.amazon.com', 'amazon.jpg') {{
    The web's largest retailer adopted Mason as its official website
    templating system in 2002.  As of the summer of 2006, all web pages on
    Amazon.com, the international Amazon sites, and most Amazon-powered sites
    like <a href="http://www.target.com">Target.com</a> were served through
    Mason. It is still widely used there as of 2012.
% }}

% $.Site('Hearst Magazines', 'subscribe.hearstmags.com', 'hearst.jpg') {{
    One of the world's largest diversified media companies. Hearst uses Poet
    and Mason to serve the online versions of its well-known magazines
    (including <a href="http://www.cosmopolitan.com/">Cosmopolitan</a>, <a href="http://www.goodhousekeeping.com/">Good
    Housekeeping</a>, and <a href="http://www.harpersbazaar.com/">Harper's
    Bazaar</a>) as well as associated content management and subscription
    management systems.</li>
% }}

% $.Site('Salon', 'www.salon.com', 'salon.jpg') {{
    One of the first magazines on the web used Mason to power its public
    website and content management system til 2003.
% }}

% $.Site('Delicious', 'delicious.com', 'delicious.jpg') {{
    The pioneering bookmarking site formerly known as del.icio.us was
    initially built with Mason.
% }}

% $.Site('DynDNS', 'www.dyndns.org', 'dyndns.jpg') {{
    One of the world's larges providers of free and premium Dynamic DNS services.
% }}

% $.Site('Shutterstock', 'www.shutterstock.com', 'shutterstock.jpg') {{
    Connects professionals with millions of high-quality photos, illustrations
    and video from around the web.
% }}

% $.Site('Rent.com', 'www.rent.com', 'rent.jpg') {{
    A free nationwide online apartment listing service.
% }}

  </ul>

</div>
