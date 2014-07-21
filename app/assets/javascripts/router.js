// For more information see: http://emberjs.com/guides/routing/

//App.Router.map(function() {
//this.resource('stocks', { path: '/' });
//});

App.Router.map(function(){
  this.resource('posts');
  this.resource('about');
  this.resource('stock', { path: '/stock/:stock_id' })
  this.resource('stocks')
});
