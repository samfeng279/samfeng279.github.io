---
layout: page
---
<div class="photos-page">
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 photo-header" style="padding-bottom:30px">
                    <h2 class="grid-item-title">{{page.title}} - {{page.date_txt}}</h2>
                </div>
            </div>
            <ul class="photo-gallery">
                {% for image in page.img_list %}
                    <div>
                        <a class="picture" data-toggle="modal" data-target="#{{ image.img_path | remove: '/' | remove: '.' }}"><li>
                            <img src="//images.weserv.nl?url={{ site.baseurl | replace:'http://','' }}/samfeng279.github.io/{{ image.img_path }}&w=300&h=300&t=square">
                            <div class="overlay">
                                <span class="overlay-text">{{ image.img_txt }}</span>
                            </div>
                        </li></a>
                        <div class="modal fade" id="{{ image.img_path | remove: '/' | remove: '.' }}" tabindex="-1" role="dialog" aria-hidden="true">
                          <div class="modal-dialog" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title">{{ image.img_txt }}</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body text-center">
                                <img src="{{ image.img_path }}" alt="{{ image.img_txt }}"/>
                              </div>
                            </div>
                          </div>
                        </div>
                    </div>
                {% endfor %}      
            </ul>
        </div>
    </div>
    
    {% assign imageCollection = site.photos | sort: 'order' | reverse %}
    {% assign size = imageCollection | size %}
    {% assign size = size | minus: 1 %}
    {% assign count = 0 %}
    <div class="section">
        <div class="container">
            <div class="row">
                {% for item in imageCollection %}
                    {% if page.url == item.url %}
                    {% if count == 0 %}
                    {% assign nextCount = count | plus: 1%}
                    {% assign nextLink = imageCollection[nextCount].url %}
                        <div class="page-navigation-controls flex-no-wrap">
                            <a class="btn left photos-left not-active" href="" data-slide="prev">Previous</a>
                            <a class="btn back-to-list photos-back" href="/photo-gallery/">To Gallery</a>
                            <a class="btn right photos-right" href="{{nextLink}}" data-slide="next">Next</a>
                        </div>
                    {% elsif count == size %}
                    {% assign prevCount = count | minus: 1 %}
                    {% assign prevLink = imageCollection[prevCount].url %}
                        <div class="page-navigation-controls flex-no-wrap">
                            <a class="btn left photos-left" href="{{prevLink}}" data-slide="prev">Previous</a>
                            <a class="btn back-to-list photos-back" href="/photo-gallery/">To Gallery</a>
                            <a class="btn right photos-right not-active" href="" data-slide="next">Next</a>
                        </div>
                    {% else %}
                    {% assign prevCount = count | minus: 1 %}
                    {% assign nextCount = count | plus: 1%}
                    {% assign nextLink = imageCollection[nextCount].url %}
                    {% assign prevLink = imageCollection[prevCount].url %}
                        <div class="page-navigation-controls flex-no-wrap">
                            <a class="btn left photos-left" href="{{prevLink}}">Previous</a>
                            <a class="btn back-to-list photos-back" href="/photo-gallery/">To Gallery</a>
                            <a class="btn right photos-right" href="{{nextLink}}" >Next</a>
                        </div>
                    {% endif %}
                    {% endif %}
                {% assign count = count | plus: 1 %}
                {% endfor %}
            </div>
        </div>
    </div>
</div>