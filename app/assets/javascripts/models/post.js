
App.PostsRoute = Ember.Route.extend({
  model: function(){
    //return App.Post.find();
    return posts;
  }
});


//error
App.Post = DS.Model.extend({
  title: DS.attr('string'),
  author: DS.attr('string')
});

var posts = [{
    id: '1',
    title: "secret",
    author: "bob proctor"
},
{
    id: '2',
    title: "physics",
    author: "einstein"
}];

//error
App.Post.FIXTURES = [{
    id: '1',
    title: "secret",
    author: "bob proctor"
},
{
    id: '2',
    title: "physics",
    author: "einstein"
}
];