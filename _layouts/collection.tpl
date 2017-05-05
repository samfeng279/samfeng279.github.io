---
layout: default
---

{% assign paging = page.collections | group_by: "category" | sort: "name" | map: "name" %}

{% for item in paging %}
  {% if item == page.category %}
    {% assign next = forloop.index0 | plus: 1 %}
    {% assign prev = forloop.index0 | minus: 1 %}

<!-- arrays start at 0; minus 1 from size -->
    {% if forloop.first %}
      {% assign prev = paging | size | minus: 1 %}
    {% endif %}

    {% if forloop.last %}
      {% assign next = 0 %}
    {% endif %}

    {% break %}
  {% endif %}
{% endfor %}

<!-- get the next/prev elements from the array -->
{% for item in paging limit: 1 offset: next %}
  {% assign next = item %}
{% endfor %}

{% for item in paging limit: 1 offset: prev %}
  {% assign prev = item %}
{% endfor %}

<div>
  <div>
    <a href="{{ prev | prepend:site.baseurl }}">
      ‹ prev
    </a>
  </div>
  <div>
    <a href="{{ next | prepend: site.baseurl }}">
      next ›
    </a>
  </div>
</div>