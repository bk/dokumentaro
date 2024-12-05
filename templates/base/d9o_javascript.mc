<script>
  window.d9o_settings = {
    prefixPath: "${ site.prefix_path if site.prefix_path else '' }",
    enableCopyCodeButton: ${ 'true' if site.enable_copy_code_button else 'false' },
    headingAnchors: ${ 'true' if site.heading_anchors else 'false' },
    headingAnchorsClass: "anchor-heading",
    headingAnchorsHtml: '<svg viewBox="0 0 16 16" aria-hidden="true"><use xlink:href="#svg-link"></use></svg>'
  };
</script>
<script src="${ '/js/d9o.js' | fingerprint,url }" defer></script>
