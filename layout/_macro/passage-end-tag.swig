 {% if theme.passage_end_tag.enabled %}
    <div style="text-align:center;color: #ccc;font-size:14px;">
    <time title="{{ __('post.last_updated') }}" itemprop="dateModified" datetime="{{ moment(post.updated).format() }}">
                {{ date(post.updated, theme.passage_end_tag.date_format) }}
              </time>
              </div>
    {% endif %}