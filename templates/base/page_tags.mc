% if page and page.tags and site.tags_enabled and not page.TAXONOMY and taxonomies:
  <%
    tx_tags = [_ for _ in taxonomies
               if _.get('item_url_pattern') and _.get('name', '').lower() in ('tag', 'tags')]
    if tx_tags:
        taglist_url = tx_tags[0]['list_url']
        tag_urlpat = tx_tags[0]['item_url_pattern']
    else:
        return ''
  %>
  <div class="tags">
    <h4><a href="${ taglist_url }">Tags</a></h4>
    <ul>
      % for tag in sorted(page.tags):
        <li><a href="${ tag_urlpat.format(slugify(tag)) }">${ tag }</a></li>
      % endfor
    </ul>
  </div>
% endif
