

App.StocksRoute = Ember.Route.extend({
 model: function() { return this.store.find('stock'); }

});

App.StockRoute = Ember.Route.extend({
  
  events: {
     closeModal: function() {
       this.disconnectOutlet({
        parentView: 'stocks'
      });
  }
  }
});
