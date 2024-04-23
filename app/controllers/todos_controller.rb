class TodosController < ApplicationController
  def index
  end

  def create
    @todo = Todo.create(description: params[:todo][:description])
    if @todo.valid?
      redirect_to todos_path

      def index
        @todos = Todo.all
      end
    end
  end
end
