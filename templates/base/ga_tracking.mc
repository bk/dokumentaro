% if site.ga_tracking:
  <% ga_codes = site.ga_tracking.split(',') %>
  <script async src="https://www.googletagmanager.com/gtag/js?id=${ ga_codes[0] }"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    % for ga_code in ga_codes:
      gtag('config', '${ ga_code }'${ ", 'anonymize_ip': true" if site.ga_tracking_anonymize_ip else '' });
    % endfor
  </script>
% endif
