class PostsTable < TableCloth::Base
  # To include actions on this table, uncomment this line
  include TableCloth::Extensions::Actions

  column :datetime, label: 'Date/Time'
  column :title, label: 'Event Name'
  column :body, label: 'Details'
  

    actions seperator: " | " do
    action {|post| link_to "Edit", edit_post_path(post) }
    action {|post| link_to "Delete", post_path(post), method: :delete }
  end

  # Define columns with the #column method
  # column :name, :email

  # Columns can be provided a block
  #
  # column :name do |object|
  #   object.downcase
  # end
  #
  # Columns can also have conditionals if you want.
  # The conditions are checked against the table's methods.
  # As a convenience, the table has a #view method which will return the current view context.
  # This gives you access to current user, params, etc...
  #
  # column :email, if: :admin?
  #
  # def admin?
  #   view.current_user.admin?
  # end
  #
  # Actions give you the ability to create a column for any actions you'd like to provide.
  # Pass a block with an arity of 2, (object, view context).
  # You can add as many actions as you want.
  # Make sure you include the actions extension.
  #
  # actions do
  #   action {|object| link_to "Edit", edit_object_path(object) }
  #   action(if: :valid?) {|object| link_to "Invalidate", invalidate_object_path(object) }
  # end
  #
  # If action provides an "if:" option, it will call that method on the object. It can also take a block with an arity of 1.
config.table.class = 'table table-hover'
end
