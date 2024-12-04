<%doc>
  Main navigation for sidebar, consisting of frontmatter-driven pages_nav and
  site-driven external_links_nav.
  
  Called from sidebar.mc via include.
</%doc>

<nav aria-label="Main" id="site-nav" class="site-nav">
  ${ pages_nav(nav) }
  ${ external_links_nav() }
</nav>

<%def name="pages_nav(navlist)">
  <ul class="nav-list">
    % for it in navlist.children:
      <%
        url_active = it.is_url(SELF_URL, cleanurl)
        section_active = url_active or it.descendant_is_url(SELF_URL, cleanurl)
      %>
      <li class="nav-list-item${ ' active' if section_active else '' }">
        % if section_active or it.level == 0:
          ${ _expander_button(it, section_active) }
        % endif
        <a href="${ it.url or '#' }"${ ' class="active"' if url_active else '' }>${ it.title }</a>
        % if it.is_section and it.children and it != navlist:
          ${ pages_nav(it) }
        % endif
      </li>
    % endfor
  </ul>
</%def>

<%def name="_expander_button(nav_item, active)">
  % if nav_item.is_section:
    <button class="nav-list-expander btn-reset"
      aria-label="toggle items in ${ nav_item.title }" aria-pressed="false">
      <svg viewBox="0 0 24 24" aria-hidden="true"><use xlink:href="#svg-arrow-right"></use></svg>
    </button>
  % endif
</%def>

<%def name="external_links_nav()">
  % if site.nav_external_links:
    <ul class="nav-list">
      % for node in site.nav_external_links:
        <li class="nav-list-item external">
          <a href="${ node.url | url }" class="nav-list-link external"
            % if node.opens_in_new_tab or ('opens_in_new_tab' not in node and site.nav_external_links_new_tab):
              target="_blank" rel="noopener noreferrer"
            % endif
          >
            ${ node.title }
            % if not node.hide_icon:
              <svg viewBox="0 0 24 24" aria-labelledby="svg-external-link-title"><use xlink:href="#svg-external-link"></use></svg>
            % endif
          </a>
        </li>
      % endfor
    </ul>
  % endif
</%def>
