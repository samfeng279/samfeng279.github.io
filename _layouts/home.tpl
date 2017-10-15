<!DOCTYPE html>
<html>
{% include head.inc %}

<header class="home">
	<h1><a href="{{ site.baseurl }}">{{ site.title }}</a></h1>
</header>

<body>
	{% include head.inc %}
    {% include nav.inc %}
	<main>
		<article>
			{{ content }}
		</article>
<!--		{% include footer.inc %}-->
	</main>
</body>
	
</html>
