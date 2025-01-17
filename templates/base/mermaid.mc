## NOTE: mermaid must be version 10 or greater
<script type="module">
 % if site.mermaid.path:
  import mermaid from '${ site.mermaid.path | url }';
% else:
  import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@${ site.mermaid.version or '11.4.1' }/dist/mermaid.esm.min.mjs';
% endif
  var config = <%include file="mermaid_config.js" />;
  mermaid.initialize(config);
  mermaid.run({
    querySelector: '.mermaid code',
  });
</script>
