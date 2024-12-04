<%
breadcrumbs = []
me_in_nav = nav.find_item(url=SELF_URL, normalize=url)
if me_in_nav:
    while me_in_nav.parent:
        if me_in_nav.parent and me_in_nav.parent.title:
            breadcrumbs.append(me_in_nav.parent)
        me_in_nav = me_in_nav.parent
breadcrumbs.reverse()
%>
% if breadcrumbs:
  <nav aria-label="Breadcrumb" class="breadcrumb-nav">
    <ol class="breadcrumb-nav-list">
      % for breadcrumb in breadcrumbs:
        <li class="breadcrumb-nav-list-item">
          <a href="${ breadcrumb.url }">${ breadcrumb.title }</a>
        </li>
      % endfor
      <li class="breadcrumb-nav-list-item"><span>${ page.title }</span></li>
  </ol>
</nav>
% endif
