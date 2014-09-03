class Admin::MainController < ApplicationController
    before_filter :check_session

    def index
    end
end
