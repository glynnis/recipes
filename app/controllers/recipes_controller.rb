class RecipesController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def new
    @recipe = Recipe.new
  end

  def create
    render text: params[:recipe].inspect
    @recipe.save
    redirect_to @recipe
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :yield, :level, :prep_time, :cook_time, :steps, :source)
  end

end
