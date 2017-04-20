# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( bundle )


# <!-- <%= javascript_include_tag 'navbar/navbar-template.js', type: 'text/x-template', id: 'navbar' %>
# <%= javascript_include_tag 'navbar/navbar.js' %>
# <%= javascript_include_tag 'home/home.js' %>
# <%= javascript_include_tag 'profile/profile.js' %>
# <%= javascript_include_tag 'stats/stats.js' %>
# <%= javascript_include_tag 'root.js' %> -->
