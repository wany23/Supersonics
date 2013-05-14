class HomeController < ApplicationController
	skip_before_filter :require_user,
	skip_before_filter :is_admin,
	skip_before_filter :is_admin, :only => [:show, :new]
	
	def index
	end

end