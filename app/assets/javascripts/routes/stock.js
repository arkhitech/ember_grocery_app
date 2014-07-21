
App.StockRoute = Ember.Route.extend({
 model: function(params) { return this.store.find('stock', params.stock_id); }  
});


App.StocksRoute = Ember.Route.extend({
 model: function() { return this.store.find('stock'); }
  
});
