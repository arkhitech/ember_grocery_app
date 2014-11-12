// For more information see: http://emberjs.com/guides/routing/

//App.Router.map(function() {
//this.resource('stocks', { path: '/' });
//});

App.Router.map(function(){
  this.resource('stocks', function(){
     this.resource('stock', { path: ':name1' });
     this.resource('stock_edit', { path: ':name' });
  });
  this.resource('cart');
  this.route('thanks');
  this.resource("welcome_email");
  this.resource("admin");
});
