class Backbonesample.Routers.PostsRouter extends Backbone.Router
  initialize: (options) ->
    @posts = new Backbonesample.Collections.PostsCollection()
    @posts.reset options.posts

  routes:
    "/new"      : "newPost"
    "/index"    : "index"
    "/:id/edit" : "edit"
    "/:id"      : "show"
    ".*"        : "index"

  newPost: ->
    @view = new Backbonesample.Views.Posts.NewView(collection: @posts)
    $("#posts").html(@view.render().el)

  index: ->
    console.log("log from coffee... in index router")
    @view = new Backbonesample.Views.Posts.IndexView(posts: @posts)
    console.log("view: " + @view);
    $("#posts").html(@view.render().el)

  show: (id) ->
    post = @posts.get(id)

    @view = new Backbonesample.Views.Posts.ShowView(model: post)
    $("#posts").html(@view.render().el)

  edit: (id) ->
    post = @posts.get(id)

    @view = new Backbonesample.Views.Posts.EditView(model: post)
    $("#posts").html(@view.render().el)
