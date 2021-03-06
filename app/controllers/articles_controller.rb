class ArticlesController < ApplicationController
    #账号认证

    http_basic_authenticate_with name: "dhh",password: "secret",
    except: [:index,:show]
    
    #显示所有文章
    #使用的路由为：articles GET    /articles(.:format)          articles#index
    #对应创建一个index.html.erb文件
    #创建变量@articles 实例变量以 @ 开头
    def index
        @articles = Article.all
    end

    #显示数据，show
    #使用的路由：article GET    /articles/:id(.:format)      articles#show
    #创建页面文件view:shou.html.erb
    def show
        @article = Article.find(params[:id])
    end


    def new
        @article = Article.new
    end

    def edit
        @article = Article.find(params[:id])
    end

    def create
        #一个键值对 plain :(params[:article].inspect)
        #render plain: params[:article].inspect


        #使用私有方法写更安全的程序
        @article = Article.new(article_params)

        #If @article.save fails in this situation, we need to show the form back to the user. 
        if 
            @article.save
            redirect_to @article
        else
            render 'new'
        end
    end

    def update
        @article = Article.find(params[:id])

        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy

        redirect_to articles_path
    end
    private 
        def article_params
            params.require(:article).permit(:title,:text)
        end
end
