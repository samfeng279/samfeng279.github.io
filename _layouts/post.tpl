---
layout: default
---

<h2>{{ page.title }}</h2>
<time>{{ page.date | date: "%b %-d, %Y" }}{% if page.author %} • {{ page.author }}{% endif %}{% if page.meta %} • {{ page.meta }}{% endif %}</time>

{{ content }}

<div>
  {% if page.previous.url %}
    <a href="{{page.previous.url}}">&laquo; Previous</a>
  {% endif %}
</div>
<div>
  {% if page.next.url %}
    <a href="{{page.next.url}}">Next &raquo;</a>
  {% endif %}
</div>