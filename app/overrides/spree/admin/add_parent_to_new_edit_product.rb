Deface::Override.new(
  virtual_path: 'spree/admin/products/new',
  name: 'add_parent to product new',
  insert_after: '[data-hook="new_product_price"]',
  text: %q{
    <div data-hook="new_product_parent" class="col-xs-12 col-md-4">
        <%= f.field_container :parent, class: ['form-group'] do %>
          <%= f.label :parent_id, Spree.t(:courses) %>
          <%= f.collection_select(:parent_id, @courses_choices, :id, :name, { include_blank: Spree.t('match_choices.none') }, { class: 'select2'}) %>
        <% end %>
      </div>
  }
)
Deface::Override.new(
  virtual_path: 'spree/admin/products/_form',
  name: 'add_parent to product _form',
  insert_after: '[data-hook="admin_product_form_slug"]',
  text: %q{
   <div data-hook="admin_product_form_parents">
        <%= f.field_container :parent, class: ['form-group'] do %>
          <%= f.label :parent_id, Spree.t(:courses) %>
          <%= f.collection_select(:parent_id, @courses_choices, :id, :name, { include_blank: Spree.t('match_choices.none') }, { class: 'select2' }) %>
          <%= f.error_message_on :parent %>
        <% end %>
     </div>
  }
)