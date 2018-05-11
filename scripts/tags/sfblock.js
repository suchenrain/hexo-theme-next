/* global hexo */
/* Usage: 
 * {% sfblock [class] %} 
 * Something 
 * {% endsfblock %}
 * Alias: {% sf %} Something {% endsf %}
 * [class] : default | primary | success | info | warning | danger.
 *           May be not defined.
*/

function sfblock(args, content) {
    var c = args.join(' ')||'info';
    return '<blockquote class="'+ c +'">' +
              hexo.render.renderSync({text: content, engine: 'markdown'}) +
            '</blockquote>';
  }
  
  hexo.extend.tag.register('sfblock', sfblock, {ends: true});
  hexo.extend.tag.register('sfb', sfblock, {ends: true});
  