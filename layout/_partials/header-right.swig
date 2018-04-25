{% if theme.languages.enable %}

    <select id="langlist" class="langlist" onChange="langChange()">
        {% for name, path in theme.languages.list %}
        <option value="{{ path.split('||')[1] | trim | default('en') }}">{{ path.split('||')[0] | trim }}</option>
        {% endfor %}
    </select>
     <script type="text/javascript">
    (function(){
        if(window.location.pathname.indexOf('en')>-1){
            var b = document.getElementById("langlist") 
            b.value="en"
        }
    })()

    function langChange(){
        var lang=$('.langlist')[0].value||'zh-Hans'
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
