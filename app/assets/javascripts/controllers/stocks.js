App.StocksController = Em.ArrayController.extend({

  actions: {
    controller: this,
    content: {},
    search_stocks: function() {
      var query = this.get('search');
      if(query === undefined || query.length < 3) {
        console.log('not searching for: '+query);
        return;
      }
      console.log('searching for: '+query);
      //call rails controller and get json data
      var me = this;
      jQuery.getJSON("/stocks/search.json", 
      {search: query}, function(search_results) {
        console.log('got results: '+search_results)
        me.set('model', search_results.stocks);        
      });
      //populate stocks 

    },
    sendForm: function(){
      
      this.filter(function(stock)
      {
        if (stock.get('units_of_item') > 0)
          return stock.get('units_of_item');
      });
    }
           
            //.then(function(){
     // controller.transitionToRoute('application');
   // })
  
  }
});