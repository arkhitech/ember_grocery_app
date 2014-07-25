App.CartRoute = Ember.Route.extend({
  
  model: function(){
    return this.store.find('stock');
  }
  
});