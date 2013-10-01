module Activeadmin
  module Ckeditor
    class Engine < ::Rails::Engine
      initializer 'activeadmin-ckeditor.load_static_assets' do |app|
        middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{ root }/app"
      end
    end
  end
end