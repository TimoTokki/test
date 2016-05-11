---
layout: page
title: 信息汇总
permalink: /docs/infoofdocs/
---
{% for post in site.docs %}
<h4>
	{{post.title}}
</h4>
{% if post.update_date %}
<p>

	{{post.update_date}}
</p>
{% else %}
<p>
	请更新
</p>
{% endif%}
{% endfor %}