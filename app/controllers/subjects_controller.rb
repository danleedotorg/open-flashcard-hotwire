class SubjectsController < ApplicationController
  def index
    @subjects = Subject.eager_load(:creator).all.limit(100)
  end
end