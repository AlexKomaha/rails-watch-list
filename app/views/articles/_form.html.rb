<!-- app/views/articles/_form.html.erb -->
<%= simple_form_for(article) do |f| %>
  <!-- [...] -->
  <%= f.input :photo, as: :file %>
  <!-- [...] -->
<% end %>


<!-- app/views/articles/_form.html.erb -->
<%= simple_form_for(article) do |f| %>
  <!-- [...] -->
  <%= f.input :photos, as: :file, input_html: { multiple: true } %>
  <!-- [...] -->
<% end %>
