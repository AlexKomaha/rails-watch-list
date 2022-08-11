class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.text :comment
      t.references :movie, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
  class User < ActiveRecord::Base
    belongs_to :company
    has_and_belongs_to_many :roles
  end

  class Company < ActiveRecord::Base
    has_many :users
  end

  class Role < ActiveRecord::Base
    has_and_belongs_to_many :users
  end

  <%= simple_form_for @user do |f| %>
    <%= f.input :name %>
    <%= f.association :company %>
    <%= f.association :roles %>
    <%= f.button :submit %>
  <% end %>
end
