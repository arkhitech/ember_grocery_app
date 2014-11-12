//App.StocksController = Em.ArrayController.extend({
//
//  valueObserver: function() {
//    // Executes whenever the "value" property changes   
//      var query = this.get('search');
//      if(query === undefined || query.length < 3) {
//        console.log('not searching for: '+query);
//        return;
//      }
//      console.log('searching for: '+query);
//      //call rails controller and get json data
//      var me = this;
//      jQuery.getJSON("/stocks/search.json", 
//      {search: query}, function(search_results) {
//        console.log('got results: '+search_results);
//        me.set('model', search_results.stocks);  
//      });
//  }.observes('search')
//});

App.StocksController = Em.ArrayController.extend({

  valueObserver: function() {
    // Executes whenever the "value" property changes   
      var query = this.get('search');
      if(query === undefined || query.length < 3) {
        console.log('not searching for: '+query);
        return;
      }
      console.log('searching for: '+query);
      //call rails controller and get json data
      var me = this;      
      Ember.$.getJSON("/stocks/search.json", 
      {search: query}).then(function(search_results) {
        var store = me.get('store');        
        store.unloadAll('stock');
        store.pushMany('stock', search_results.stocks);
        //me.set('model', search_results.stocks);
      });
  }.observes('search')
});