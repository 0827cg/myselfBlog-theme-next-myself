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

{% endblock %}
{% block sidebar %}
  {{ sidebar_template.render(true) }}
{% endblock %}
{% block script_extra %}
  {% include '_scripts/pages/post-details.swig' %}
{% endblock %}
