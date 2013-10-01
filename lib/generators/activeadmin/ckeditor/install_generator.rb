require 'rails/generators'

module Activeadmin
  module Ckeditor
    module Generators
      class InstallGenerator < Rails::Generators::Base
        def ckeditor
          generate "ckeditor:install"
        end

        def require_assets
          gsub_file "app/assets/javascripts/active_admin.js", '//= require active_admin/base', "//= require active_admin/base\n//= require ckeditor/init"
          prepend_file "app/assets/stylesheets/active_admin.css.scss", "//= require activeadmin-ckeditor\n"
          application 'config.autoload_paths += %W(#{ config.root }/app/models/ckeditor)'
        end
      end
    end
  end
end