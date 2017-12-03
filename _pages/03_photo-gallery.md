---
layout: page
title: Gallery
heading: Places I'd Go Back To
images:
  - image_path: /samfeng279.github.io/assets/images/background.jpg
    title: Peyto Lake, Alberta
  - image_path: /samfeng279.github.io/assets/images/quarry-rock.jpg
    title: Quarry Rock, BC
  - image_path: /samfeng279.github.io/assets/images/brunswick-mountain.jpg
    title: Brunswick Mountain, BC
  - image_path: /samfeng279.github.io/assets/images/niagra-falls.jpg
    title: Niagra Falls, Ontario
  - image_path: /samfeng279.github.io/assets/images/california.png
    title: Laguna Beach, California
  - image_path: /samfeng279.github.io/assets/images/xihu.jpg
    title: Xihu, Hangzhou
  - image_path: /samfeng279.github.io/assets/images/qiandaohu.jpg
    title: Qiandaohu, Chun'an
  - image_path: /samfeng279.github.io/assets/images/hangzhou.jpg
    title: Downtown of Hangzhou
  - image_path: /samfeng279.github.io/assets/images/senado-square.jpg
    title: Senado Square, Macau
  - image_path: /samfeng279.github.io/assets/images/dragons-back.jpg
    title: Dragon's Back, Hong Kong
permalink: gallery/
published: true
---

<ul class="photo-gallery">
    {% for image in page.images %}
        <a class="picture" data-toggle="modal"><li>
            <img src="{{ image.image_path }}" alt="{{ image.title }}"/>
            <div class="overlay">
                <div class="text">{{ image.title }}</div>
            </div>
        </li></a>
    {% endfor %}
</ul>

