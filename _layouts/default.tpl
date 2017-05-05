<!DOCTYPE html>
<html>
{% include head.inc %}

<padding> </padding>

<body>
	{% include nav.inc %}
	<main>
		<article>
			{{ content }}
		</article>
		{% include footer.inc %}
	</main>
</body>
	
</html>
