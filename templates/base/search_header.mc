<% placeholder = site.search_placeholder or 'Search {}'.format(site.name or site.title or 'this website') %>

<div class="search" role="search">
  <script src="${ '/pagefind/pagefind-ui.js' | url }"></script>
  <div id="search" class="results"></div>
</div>
<script>
  window.addEventListener('DOMContentLoaded', (event) => {
    new PagefindUI({
      element: "#search",
      showSubResults: true,
      showImages: false
    });
  });
  ## TODO: MutationObserver() for whether results are being displayed,
  ## for setting overlay on the background.
</script>
