<aside class="{{page.layout}}">
    <div class="nav-container {% if page.url == "/" %}light-nav {% else %}dark-nav {% endif %}">
        <nav class="desktop-nav navbar navbar-expand-sm fixed-top navbar-light">
            <ul class="nav-brand">
                <li>
                    <a href="{{ site.url }}">SAM FENG</a>
                </li>
            </ul>
			<ul class="ml-auto">
				{% for page in site.pages %} 
                    {% if page.published == true and page.title %}
				        <li><a href="{{ page.url | prepend: site.baseurl }}">{{ page.title }}</a></li>
				    {% endif %} 
                {% endfor %}
                <li><a href="{{ site.baseurl }}/assets/files/resume.pdf">Resume</a></li>
			</ul>
		</nav>
        <nav class="mobile-nav fixed-top navbar navbar-expand-sm fixed-top navbar-light">
            <div class="navbar-header">
              <button class="navbar-toggle collapsed btn" data-toggle="collapse" data-target="#collapsedNav" aria-expanded="false">&#9776;</button>
            </div>

            <div class="collapse navbar-collapse" id="collapsedNav">
              <ul class="nav navbar-nav">
                <li><a href="{{ site.url }}">Home</a></li>
				{% for page in site.pages %} 
                    {% if page.published == true and page.title %}
				        <li><a href="{{ page.url | prepend: site.baseurl }}">{{ page.title }}</a></li>
				    {% endif %} 
                {% endfor %}
                <li><a href="{{ site.baseurl }}/assets/files/resume.pdf">Resume</a></li>
              </ul>
            </div>
        </nav>
    </div>
</aside>


