<!-- app/views/articles/show.html.erb -->
<!-- [...] -->
<%= cl_image_tag @article.photo.key, height: 300, width: 400, crop: :fill %>
