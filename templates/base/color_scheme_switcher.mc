<% is_default = not site.color_scheme == 'dark' %>
<div class="color-switcher">
  <div id="switch-moon"${ '' if is_default else ' style="display:none"'  }>
    <a href="#" title="Switch to dark mode"><svg viewBox="0 0 24 24" class="icon" aria-hidden="true"><use xlink:href="#svg-moon"></use></svg></a>
  </div>
  <div id="switch-sun"${ ' style="display:none"' if is_default else '' }>
    <a href="#" title="Switch to light mode"><svg viewBox="0 0 24 24" class="icon" aria-hidden="true" id="switch-sun"><use xlink:href="#svg-sun"></use></svg></a>
  </div>
</div>
<script>
  (function () {
    const default_light = ${ 'true' if is_default else 'false'};
    const default_dark = !default_light;
    const preferred_scheme = localStorage.getItem('preferred_scheme') || '';
    const switch_moon = document.getElementById('switch-moon');
    const switch_moon_a = switch_moon.querySelector('a');
    const switch_sun = document.getElementById('switch-sun');
    const switch_sun_a = switch_sun.querySelector('a');
    const pick_scheme = function (theme, save) {
      document.body.classList.remove('dark');
      document.body.classList.remove('default');
      document.body.classList.remove('light');
      document.body.classList.add(theme);
      if (theme=='dark') {
        switch_moon.style.display = 'none';
        switch_sun.style.display = 'block';
      }
      else {
        switch_moon.style.display = 'block';
        switch_sun.style.display = 'none';
      }
      if (save) localStorage.setItem('preferred_scheme', theme);
    };
    if ((preferred_scheme == 'dark' && default_light) || (preferred_scheme == 'light' && default_dark)) {
      pick_scheme(preferred_scheme, false);
    }
    const toggle_scheme = function(ev) {
      ev.preventDefault();
      let moon_visible = switch_moon.style.display == 'none';
      let other = moon_visible ? 'light' : 'dark';
      pick_scheme(other, true);
    };
    switch_moon_a.addEventListener('click', toggle_scheme);
    switch_sun_a.addEventListener('click', toggle_scheme);
  })();
</script>
