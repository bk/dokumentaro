<svg xmlns="http://www.w3.org/2000/svg" class="d-none">
  <%include file="./link.mc" />
  <%include file="./menu.mc" />
  <%include file="./expand.mc" />
  <%include file="./external_link.mc" />
  % if site.search_enabled or 'search_enabled' not in site:
    <%include file="./document.mc" />
    <%include file="./search.mc" />
  % endif
  % if site.enable_copy_code_button:
    <%include file="./code_copy.mc" />
  % endif
</svg>
