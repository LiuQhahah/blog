# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


##  4.2 生成 new controller

To create a new controller, you will need to run the "controller" generator and tell it you want a controller called "Welcome" with an action called "index"

> $ bin/rails generate controller Welcome index


Most important of these are of course the controller, located at app/controllers/welcome_controller.rb and the view, located at app/views/welcome/index.html.erb.

## 4.3 设置应用主页：Setting the Application Home Page

Open the file config/routes.rb in your editor.

    Rails.application.routes.draw do
    get 'welcome/index'
    
    root 'welcome#index'
    end

### link_to

The link_to method is one of Rails' built-in view helpers. It creates a hyperlink based on text to display and where to go - in this case, to the path for articles.

### <%= link_to 'New article', new_article_path %>

new 一个 文章路径 new_article_path，其中article是通过generate article controllers  

### articles_path
指的是  变量articles 的路径，下划线代替了点.

## 5.10 Adding Some Validation

## 5.11 Updating Articles

We've covered the "CR" part of CRUD. Now let's focus on the "U" part, updating articles.


## 5.12 Using partials to clean up duplication in views 对于重复代码的处理

创建文件  `/_form.html.erb`

>new.html.erb 代码

```ruby
<h1>New article</h1>
 
<%= render 'form' %>
 
<%= link_to 'Back', articles_path %>
```