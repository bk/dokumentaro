% if site.logo:
  <div class="site-logo" role="img" aria-label="${ site.title }"></div>
% else:
  ${ site.name or site.title or '(site.name/title)' }
% endif
