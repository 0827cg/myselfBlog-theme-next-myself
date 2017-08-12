{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}
{% block title %}{{ page.title }} | {{ config.title }}{% endblock %}
{% block page_class %}page-post-detail{% endblock %}
{% block content %}
  <div id="posts" class="posts-expand">
    {{ post_template.render(page) }}
    <div class="post-spread">
      {% if theme.jiathis %}
        {% include '_partials/share/jiathis.swig' %}
      {% elseif theme.baidushare %}
        {% include '_partials/share/baidushare.swig' %}
      {% elseif theme.add_this_id %}
        {% include '_partials/share/add-this.swig' %}
      {% elseif theme.duoshuo_shortname and theme.duoshuo_share %}
        {% include '_partials/share/duoshuo_share.swig' %}
      {% endif %}
        
        <!--
		<div id="wpac-comment"></div>
		<script type="text/javascript">
		wpac_init = window.wpac_init || [];
		wpac_init.push({widget: 'Comment', id: 5780});
		(function() {
		    if ('WIDGETPACK_LOADED' in window) return;
		    WIDGETPACK_LOADED = true;
		    var mc = document.createElement('script');
		    mc.type = 'text/javascript';
		    mc.async = true;
		    mc.src = 'https://embed.widgetpack.com/widget.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(mc, s.nextSibling);
		})();
		</script>
		<a href="https://widgetpack.com" class="wpac-cr">Comments System WIDGET PACK</a>
        -->
        
        <!--
        <div id="container"></div>
        <link rel="stylesheet" href="https://imsun.github.io/gitment/style/default.css">
        <script src="https://imsun.github.io/gitment/dist/gitment.browser.js"></script>
        <script>
        var gitment = new Gitment({
          id: '',
          owner: 'cgstudios',
          repo: 'cgstudios-blog-file',
          oauth: {
            client_id: '5f667cada6c6e9fefd45',
            client_secret: '78c49a731e5396fd763524b410af73a19006f0fb',
          },
        })
        gitment.render('container')
        </script>
        -->

        <!--
        <noscript>Please enable JavaScript to view the comment form powered by <a href="https://commentit.io/">Comm(ent|it)</a></noscript>
        <div id="commentit"></div>
        <script type="text/javascript">
          /** CONFIGURATION VARIABLES **/
          var commentitUsername = 'cgstudios';
          var commentitRepo = 'cgstudios/cgstudios.github.io';
          var commentitPath = '{{ page.path }}';

          /** DON'T EDIT FOLLOWING LINES **/
          (function() {
              var commentit = document.createElement('script');
              commentit.type = 'text/javascript';
              commentit.async = true;
              commentit.src = 'https://commentit.io/static/embed/dist/commentit.js';
              (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(commentit);
          })();
        </script>
        -->

        <!--
        <form method="POST" action="https://api.staticman.net/v2/entry/cgstudios/cgstudios.github.io/master">
          <input name="options[redirect]" type="hidden" value="http://cgspace.date">
          /** e.g. "2016-01-02-this-is-a-post" **/
          <input name="options[slug]" type="hidden" value="{{ page.slug }}">
          <label><input name="fields[name]" type="text">Name</label>
          <label><input name="fields[email]" type="email">E-mail</label>
          <label><textarea name="fields[message]"></textarea>Message</label>
          
          <button type="submit">Go!</button>
        </form>
        -->

    <!--
    <div id="disqus_thread"></div>
    <script>

    /**
    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
    /*
    var disqus_config = function () {
    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
    };
    */
    (function() { // DON'T EDIT BELOW THIS LINE
    var d = document, s = d.createElement('script');
    s.src = 'https://cgspace0827.disqus.com/embed.js';
    s.setAttribute('data-timestamp', +new Date());
    (d.head || d.body).appendChild(s);
    })();
    </script>
    <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
    -->
    
{% endblock %}
{% block sidebar %}
  {{ sidebar_template.render(true) }}
{% endblock %}
{% block script_extra %}
  {% include '_scripts/pages/post-details.swig' %}
{% endblock %}
