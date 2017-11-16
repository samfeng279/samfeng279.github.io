<!DOCTYPE html>
<html>
{% include head.inc %}

<padding> </padding>

<body>
	{% include nav.inc %}
    <main>
        <article>
            <h2>{{ page.heading }}</h2>
            {{ content }}
        </article>
    </main>
</body>
	
</html>
