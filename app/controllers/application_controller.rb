class ApplicationController < ActionController::Base
 include SessionsHelper
before_action :categoy_with_header

def categoy_with_header
  @category_header = Category.all
end

end
