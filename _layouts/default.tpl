<!DOCTYPE html>
<html>
{% include head.html %}

<padding> </padding>

<body>
	{% include nav.html %}
	<main>
		<article>
			{{ content }}
		</article>
		{% include footer.html %}
	</main>
</body>
	
</html>
