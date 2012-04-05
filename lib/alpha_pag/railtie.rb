require 'alpha_pag/view_helpers'
module AlphaPag
  class Railtie < Rails::Railtie
    initializer "alpha_pag.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
