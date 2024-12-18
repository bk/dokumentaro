<div id="main-header" class="main-header">
  % if site.search_enabled:
    <%include file="search_header.mc" />
  % else:
    <div></div>
  % endif
  <%include file="header_custom.mc" />
  % if site.color_scheme_switcher:
    <%include file="color_scheme_switcher.mc" />
  % endif
  % if site.aux_links:
    <%include file="aux_nav.mc" />
  % endif
</div>
