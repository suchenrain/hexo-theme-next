{% if theme.languages.enable %}
<div id="lang-select-wrap">
      <label id="lang-select-label"><i class="fa fa-globe"></i><span id="lang-text">简体中文</span></label>
      <select id="lang-select" onChange="langChange()">
        {% for name, path in theme.languages.list %}
        <option value="{{ path.split('||')[1] | trim | default('en') }}">{{ path.split('||')[0] | trim }}</option>
        {% endfor %}
      </select>
</div>
     <script type="text/javascript">
    (function(){
        if(window.location.pathname.indexOf('en')>-1){
            var b = document.getElementById("lang-select") 
            b.value="en"
            var l= document.getElementById("lang-text")
            l.textContent="English"
        }
    })()

    function langChange(){
        var lang = document.getElementById("lang-select").value||'zh-Hans'
        switch(lang){
            case 'zh-Hans':
            window.location ="{{switch_lang('zh-Hans')}}";
            break;
            case 'en':
            window.location ="{{switch_lang('en')}}";
            break;
        }
    }
 </script>
{% endif %}

