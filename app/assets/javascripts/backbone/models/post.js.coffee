class Backbonesample.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:
    title: null
    content: null

class Backbonesample.Collections.PostsCollection extends Backbone.Collection
  model: Backbonesample.Models.Post
  url: '/posts'
