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

### link_to

The link_to method is one of Rails' built-in view helpers. It creates a hyperlink based on text to display and where to go - in this case, to the path for articles.

### <%= link_to 'New article', new_article_path %>

new 一个 文章路径 new_article_path，其中article是通过generate article controllers  

### articles_path
指的是  变量articles 的路径，下划线代替了点.