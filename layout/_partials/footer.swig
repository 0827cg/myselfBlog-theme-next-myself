<div class="copyright" >
  {% set current = date(Date.now(), "YYYY") %}
  &copy; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="fa fa-{{ theme.authoricon }}"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ config.author }}</span>
  <span class="span-time"></span>
  <script>
  var startTime = new Date("{{theme.sinceDetails}}");
  setInterval(function () {
    var nowTime = new Date();
    var time = nowTime - startTime;
    var day = parseInt(time / 1000 / 60 / 60 / 24);
    var hour = parseInt(time / 1000 / 60 / 60 % 24);
    var minute = parseInt(time / 1000 / 60 % 60);
    var seconds = parseInt(time / 1000 % 60);
    $('.span-time').html("  |  已建站" + day + "天" + hour + "小时" + minute + "分钟" + seconds + "秒");
  }, 1000);
</script>
</div>

