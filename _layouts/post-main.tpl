---
layout: page
---

<ul class="post-list">
{% for post in site.posts %}
  <li>
    <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>

    <h2 class="post-link">
      <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
    </h2>

    <headline>
      {{post.excerpt | strip_html | strip_newlines}}
    </headline>

  </li>
{% endfor %}
</ul>