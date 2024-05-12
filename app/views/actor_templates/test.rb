<% a_id = @the_actor.id %>

<% matching_characters = Character.where({ :actor_id => a_id }) %>

<% @the_actor.characters.each do |a_character| %> 

  <tr>
    <td>
      <%= a_character.the_movie.title %>
    </td>

    <td>
      <%= a_character.the_movie.year %>
    </td>

    <td>
      <%= a_character.the_movie.the_director.name %>
    </td>

    <td>
      <%= a_character.name %>
    </td>

    <td>
      <a href="/movies/<%= a_character.the_movie.id %>">
        Show details
      </a>
    </td>
  </tr>
<% end %>
