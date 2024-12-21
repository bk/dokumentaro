<%namespace name="footer_custom" file="footer_custom.mc" />

<% custom_footer = capture(footer_custom.body).strip() or '' %>

% if custom_footer or site.last_edit_timestamp or site.gh_edit_link or site.back_to_top:
  <hr>
  <footer>
    % if site.back_to_top:
      <p><a href="#top" id="back-to-top">${ site.back_to_top_text or 'Back to top' }</a></p>
    % endif

    ${ custom_footer }

    % if site.last_edit_timestamp or site.gh_edit_link:
      <div class="d-flex mt-2">
        % if site.last_edit_timestamp and site.last_edit_time_format and MTIME:
          <p class="text-small text-grey-dk-000 mb-0 mr-2">
            Page last modified: <span class="d-inline-block">${ (page.modified_date or MTIME) | date(fmt=site.last_edit_time_format) }</span>.
          </p>
        % endif
        % if site.gh_edit_link and site.gh_edit_link_text and SELF_SHORT_PATH:
          <p class="text-small text-grey-dk-000 mb-0">
            <a href="${ site.gh_edit_link.rstrip('/') }${ SELF_SHORT_PATH }" id="edit-this-page">${ site.gh_edit_link_text }</a>
          </p>
        % endif
      </div>
    % endif
  </footer>
% endif
