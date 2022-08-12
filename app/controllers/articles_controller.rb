# app/controllers/articles_controller.rb
# [...]
def article_params
  params.require(:article).permit(:title, :body, :photo)
end
