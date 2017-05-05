<!DOCTYPE html>
<html>
{% include head.html %}

<header>
	<h1><a href="{{ site.baseurl }}">{{ site.title }}</a></h1>
</header>

<body>
	{% include header.html %}
	<main>
		<article>
			{{ content }}
		</article>
		{% include footer.html %}
	</main>
</body>
	
</html>