<aside>
	<div class="container">
		<nav>
			<ul>
			<li>
			<ul>
				<li><a href="{{site.url}}">Home</a></li>
				{% for page in site.pages %} {% if page.title %}
				<li><a href="{{ page.url | prepend: site.baseurl }}">{{ page.title }}</a></li>
				{% endif %} {% endfor %}
			</ul>
			</li>
			</ul>
		</nav>
	</div>
</aside>


