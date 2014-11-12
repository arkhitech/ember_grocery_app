App.ApplicationRoute = Em.Route.extend({
  
 //  events: {
  //  openModal: function() {

 //    this.render('modal', {
 //      into: 'application',
 //      outlet: 'modal'
  //   });
     
       
 //   },
    
 //   closeModal: function() {
  //     this.disconnectOutlet({
  //      outlet: 'modal',
  //      parentView: 'application'
  //    })},
  
  actions: {
    addToCart: function(record){
      //var record = this.store.getById('stock', id);
      //record.set("units_of_item", "1");
      record.incrementProperty("units_of_item");      
    },
    removeFromCart: function(record){
      //var record = this.store.getById('stock', id);
      if(record.get("units_of_item") > 0){
         record.decrementProperty("units_of_item");
      }
    }
  }

    
//}
});
