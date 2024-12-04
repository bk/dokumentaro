<nav aria-label="Auxiliary" class="aux-nav">
  <ul class="aux-nav-list">
    % for link in site.aux_links:
      <li class="aux-nav-list-item">
        <a href="${ link.url }" class="site-button"
          % if site.aux_links_new_tab:
          target="_blank" rel="noopener noreferrer"
          % endif
        >
          ${ link.title }
        </a>
      </li>
    % endfor
  </ul>
</nav>