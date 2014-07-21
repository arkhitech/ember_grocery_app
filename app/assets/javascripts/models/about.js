App.AboutRoute = Ember.Route.extend({
  
  model: function(){
    
    return about;
  }
  
});

var about = [{
    id: '1',
    title: "the awesome book",
    author: "steorad watson"
},
{
    id: '2',
    title: "story book",
    author: "shakespare"
}];
