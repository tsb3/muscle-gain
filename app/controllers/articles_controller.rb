class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "記事が作成されました"
            redirect_to article_path(@article)
        else
            render 'new'
        end
    end

    def show
         @article = Article.find(params[:id])
    end

    private
        def article_params
            params.require(:article).permit(:title, :description)
        end
end