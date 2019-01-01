---
layout: page
---

{% assign imageCollection = site.photos | sort: 'order' | reverse %}
<div class="photos-page">
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 photo-header">
                    <h2>{{page.title}}</h2>
                </div>
            </div>
            <div class="row">
                {% for item in imageCollection %}
                    {% assign image = item.img_list[0].img_path %}
                    <div class="col-lg-4 col-sm-6 col-xs-12 card-container">
                        <div class="card-box partners-card-box mobile-full-card" style="background-image: url({{ image }})">
                            <div class="card-box-content text-center">
                                <div class="title-height">{{item.date_txt}}</div> 
                                <div class="button-height">
                                    <a class="btn photos-button" href="{{item.url}}">Photos</a>
                                </div>
                            </div>
                        </div>
                    </div>
                {% endfor %}
            </div>
        </div>
    </div>
</div>

