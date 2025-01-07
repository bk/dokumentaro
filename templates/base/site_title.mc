% if site.logo:
  <div class="site-logo" role="img" aria-label="${ site.title }"></div>
  <style type="text/css">
    .site-logo { background-image: url(${site.logo}); }
  % if site.logo_reversed:
    body.dark .site-logo { background-image: url(${site.logo_reversed}); }
  % endif
  </style>
% else:
  ${ site.name or site.title or '(site.name/title)' }
% endif
