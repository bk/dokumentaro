<div class="side-bar">
  <div class="site-header" role="banner">
    <a href="${ '/' | url }" class="site-title lh-tight"><%include file="site_title.mc" /></a>
    <button id="menu-button" class="site-button btn-reset" aria-label="Toggle menu" aria-pressed="false">
      <svg viewBox="0 0 24 24" class="icon" aria-hidden="true"><use xlink:href="#svg-menu"></use></svg>
    </button>
  </div>

  <%include file="site_nav.mc" />

  <%namespace name="nav_footer_custom" file="nav_footer_custom.mc" />\
  <% custom_nav_footer = capture(nav_footer_custom.body).strip() %>
  % if custom_nav_footer:
    ${ custom_nav_footer }
  % else:
    <footer class="site-footer">
      % if site.nav_footer_text:
        ${ site.nav_footer_text }
      % else:
        This site uses <a href="https://github.com/bk/dokumentaro">Dokumentaro</a>, a documentation theme for wmk.
      % endif
    </footer>
  % endif

</div>
