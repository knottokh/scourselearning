Deface::Override.new(virtual_path: 'spree/shared/_header',
                     name: '_header_overide',
                     replace: "#spree-header",
                     text: '<div id="spree-header">
                          <header id="header" data-hook>
                            <div class="container">
                              <div class="row">
                                <figure id="logo" class="col-md-4 col-sm-3" data-hook>
                                  <%= logo %>
                                </figure>
                                <%= render partial: "spree/shared/nav_bar" %>
                              </div>
                            </div>
                          </header>
                          <div class="container">
                            <%= render partial: "spree/shared/main_nav_bar" %>
                          </div>
                        </div>'
                     )
