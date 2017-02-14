<h1>The Catchers</h1>
<h2>All Trainers</h2>
<% @trainer.each do |trainer|%>
<p class="trainer">
  <a href="/trainer/<%= trainer.id %>"><%= trainer.name %></a>
</p>
<% end %>

<a href='/trainer/new'>Create your own Trainer</a>
