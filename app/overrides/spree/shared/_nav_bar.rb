Deface::Override.new(virtual_path: 'spree/shared/_nav_bar',
                     name: '_nav_bar_overide',
                     replace: "#top-nav-bar",
                     text: '<ul class="nav navbar-nav navbar-right" data-hook>
                            <% if spree_current_user %>
                              <li><%= link_to Spree.t(:my_account), spree.account_path %></li>
                              <li><%= link_to Spree.t(:logout), spree.logout_path %></li>
                            <% else %>
                              <li id="link-to-login"><%= link_to Spree.t(:login), spree.login_path , data: { modal: true } %></li>
                            <% end %>
                            <li>aaa</li>
                            <li id="search-bar" data-hook>
                              <%= render partial: "spree/shared/search" %>
                            </li>
                          </ul>'
                     )
