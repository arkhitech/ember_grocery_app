App.StockEditRoute = Ember.Route.extend({
  
  model: function(){
    return this.store.find('stock', params.name);
  }
  
});
