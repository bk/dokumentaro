<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">

  <link rel="stylesheet" href="${ '/css/d9o-{}.css'.format(site.color_scheme or 'default') | fingerprint,url }">
  <%block name="inline_css()"></%block>
  ## TODO: content-driven extra css
  ## TODO: nav_activation CSS rules (maybe)

  % if site.ga_tracking:
    <% ga_codes = site.ga_tracking.split(',') %>
    <script async src="https://www.googletagmanager.com/gtag/js?id=${ ga_codes[0] }"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      % for ga_code in ga_codes:
        gtag('config', '${ ga_code }}'${ ", 'anonymize_ip': true" if site.ga_tracking_anonymize else '' });
      % endfor
    </script>
  % endif

  % if site.search_enabled:
    ## TODO: use pagefind instead
    <script src="${ '/js/vendor/lunr.min.js' | url }"></script>
  % endif

  <script src="${ '/js/d9o.js' | fingerprint,url }}"></script>

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <%include file="favicon.mc" />

  <%namespace import="seo" name="/lib/seo.mc" />
  % if page:
    ${ seo(site, page, url=SELF_URL) }
  % else:
    ${ seo(site, page=None, url=SELF_URL, title=self.page_title, img=self.attr.main_image) }
  % endif


  <%include file="custom_head.mc" />

</head>
