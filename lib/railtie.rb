module SweetLang
	class Railtie < Rails::Railtie
		initializer "template handler registration" do
			ActionView::Template.register_template_handler :s, ::SweetLang::Sweet.new
		end
	end
end