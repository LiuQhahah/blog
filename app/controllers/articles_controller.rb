class ArticlesController < ApplicationController

    #显示数据，show
    def show
        @article = Article.find(params[:id])
    end


    def new
    end

    def create
        #一个键值对 plain :(params[:article].inspect)
        #render plain: params[:article].inspect


        #使用私有方法写更安全的程序
        @article = Article.new(article_params)

        @article.save
        redirect_to @article
    end

    private 
        def article_params
            params.require(:article).permit(:title,:text)
        end
end
