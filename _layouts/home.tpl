<!DOCTYPE html>
<html>
{% include head.inc %}

<header>
	<h1><a href="{{ site.baseurl }}">{{ site.title }}</a></h1>
</header>

<body>
	{% include header.inc %}
	<main>
		<article>
			{{ content }}
		</article>
		{% include footer.inc %}
	</main>
</body>
	
</html>
