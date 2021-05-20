class TodosController < ApplicationController

  def about 


  end

  def index

    @todos = Todo.all

  end

  def show

     @todo = Todo.find(params[:id])
  end

  def new

    @todo = Todo.new
  end

  def create 

    @todo = Todo.new(todo_params)

    if @todo.save then

      redirect_to @todo
      
    else

      render :new
  end
end


def edit

  @todo = Todo.find(params[:id])


end



def update

  @todo = Todo.find(params[:id])

  if @todo.update(todo_params) then

    redirect_to @todo

  else

    render :edit 


  end

end


def destroy

  @todo = Todo.find(params[:id])
  @todo.destroy


  redirect_to root_path 


end


  private

  def todo_params 

    params.require(:todo).permit(:title)


  end



end 