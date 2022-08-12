<!-- app/views/articles/show.html.erb -->
<% @article.photos.each do |photo| %>
<%= cl_image_tag @article.photo.key, height: 300, width: 400, crop: :fill %>

<!-- app/views/articles/show.html.erb -->
<% @article.photos.each do |photo| %>
  <%= cl_image_tag photo.key, height: 300, width: 400, crop: :fill %>
<% end %>
