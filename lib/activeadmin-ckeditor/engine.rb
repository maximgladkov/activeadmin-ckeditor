module Activeadmin
  module Ckeditor
    class Engine < ::Rails::Engine
      initializer 'activeadmin-ckeditor.load_static_assets' do |app|
        p "***** #{ root } *****"
        middleware.insert_before ::ActionDispatch::Static, ::ActionDispatch::Static, "#{ root }/app"
      end
    end
  end
end