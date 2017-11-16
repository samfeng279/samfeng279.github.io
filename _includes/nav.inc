<aside>
	<div class="nav-container">
		<nav>
			<ul>
			<li>
			<ul>
				<li><a href="{{ site.url }}">Home</a></li>
				{% for page in site.pages %} {% if page.title %}
				<li><a href="{{ page.url | prepend: site.baseurl }}">{{ page.title }}</a></li>
				{% endif %} {% endfor %}
                <li><a href="{{ site.baseurl }}/assets/files/resume.pdf">Resume</a></li>
			</ul>
			</li>
			</ul>
		</nav>
	</div>
</aside>


