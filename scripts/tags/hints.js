/* global hexo */
/**
 * Usage
 * {% hint [class] %} 
 * Something 
 * {% endhint %}
 * [class] : default:info | success | warning | danger.
 * 
 * @param {any} args 
 * @param {any} content 
 * @returns 
 */
function hints(args,content){
    var c = args.join(' ')||'info';
    return '<div class="hint '+ c +'">' +
              hexo.render.renderSync({text: content, engine: 'markdown'}).trim() +
            '</div>';
}

hexo.extend.tag.register('hint', hints, {ends: true});