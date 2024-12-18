<% placeholder = site.search_placeholder or 'Search' %>

<div class="search" role="search">
  <script src="${ '/pagefind/pagefind-ui.js' | url }"></script>
  <div id="search" class="results"></div>
</div>
<script>
  function pf_search_observer(elm) {
    ## Sets up an observer that activates a gray underlay when search
    ## is active. Also sets the placeholder text during initialization.
    const container = document.getElementById('top');
    const input = document.querySelector('#search .pagefind-ui__search-input');
    if (input) {
      input.placeholder = "${ placeholder }";
    }
    const observer = new MutationObserver((mutations) => {
      mutations.forEach((mutation) => {
        if (mutation.type == 'childList') {
          let is_empty = elm.innerHTML.indexOf('<') > -1 ? false : true;
          if (is_empty) {
            container.classList.remove('search-active');
          }
          else {
            container.classList.add('search-active');
          }
        }
      });
    });
    observer.observe(elm, {childList: true});
  }
  function attach_pf_search_observer() {
    ## Waits for Pagefind to initalize and then calls pf_search_observer,
    ## which essentially makes dynamic styling changes.
    const elm = document.querySelector('#search .pagefind-ui__drawer');
    if (elm) {
      pf_search_observer(elm);
    } else {
      setTimeout(attach_pf_search_observer, 100);
    }
  }
  window.addEventListener('DOMContentLoaded', (event) => {
    new PagefindUI(<%include file="pagefind_ui_settings.mc" />);
    attach_pf_search_observer();
  });
</script>
