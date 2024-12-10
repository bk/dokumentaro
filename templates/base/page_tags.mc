<%
tx_tags = CACHE.get('taxonomies__tags', None)
if site.tags_enabled and page and 'taxonomies' not in CACHE:
    # We only want to call get_used_taxonomies once per build
    taxonomies = MDCONTENT.get_used_taxonomies()
    CACHE['taxonomies'] = taxonomies
    if taxonomies:
        tx_tags = [_ for _ in taxonomies
                   if _.get('item_url_pattern') and 'tag' in str(_['taxon'])]
        if tx_tags:
            tx_tags = tx_tags[0]
            CACHE['taxonomies__tags'] = tx_tags
%>
% if page.tags and tx_tags:
  <%
    taglist_url = tx_tags['list_url']
    tag_urlpat = tx_tags['item_url_pattern']
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
