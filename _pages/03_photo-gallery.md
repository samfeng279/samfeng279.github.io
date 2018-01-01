---
layout: page
title: Photo Gallery
heading: Places I'd Go Back To
images:
  - image_path: /samfeng279.github.io/assets/images/background.jpg
    title: Peyto Lake, Alberta
    modal: peyto
  - image_path: /samfeng279.github.io/assets/images/quarry-rock.jpg
    title: Quarry Rock, BC
    modal: quarry
  - image_path: /samfeng279.github.io/assets/images/brunswick-mountain.jpg
    title: Brunswick Mountain, BC
    modal: brunswick
  - image_path: /samfeng279.github.io/assets/images/niagra-falls.jpg
    title: Niagra Falls, Ontario
    modal: niagra
  - image_path: /samfeng279.github.io/assets/images/california.png
    title: Laguna Beach, California
    modal: laguna
  - image_path: /samfeng279.github.io/assets/images/xihu.jpg
    title: Xihu, Hangzhou
    modal: xihu
  - image_path: /samfeng279.github.io/assets/images/qiandaohu.jpg
    title: Qiandaohu, Chun'an
    modal: qiandao
  - image_path: /samfeng279.github.io/assets/images/hangzhou.jpg
    title: Downtown of Hangzhou
    modal: dtHangzhou
  - image_path: /samfeng279.github.io/assets/images/senado-square.jpg
    title: Senado Square, Macau
    modal: macau
  - image_path: /samfeng279.github.io/assets/images/dragons-back.jpg
    title: Dragon's Back, Hong Kong
    modal: hk
permalink: photo-gallery/
published: true
---

<ul class="photo-gallery">
    {% for image in page.images %}
        <a class="picture" data-toggle="modal" data-target="#{{ image.modal }}"><li>
            <img src="{{ image.image_path }}" alt="{{ image.title }}"/>
            <div class="overlay">
                <span class="overlay-text">{{ image.title }}</span>
            </div>
        </li></a>
        
        <div class="modal fade" id="{{ image.modal }}" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title">{{ image.title }}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body text-center">
                <img src="{{ image.image_path }}" alt="{{ image.title }}"/>
              </div>
            </div>
          </div>
        </div>
    {% endfor %}
</ul>
