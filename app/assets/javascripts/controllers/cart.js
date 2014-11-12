App.CartController = Em.ArrayController.extend({
  
  actions: {
    controller: this,
    content: {},
    sendForm: function(){
      
      var purchased_stocks = [];
      
      
      this.filter(function(stock)
      {
        if (stock.get('units_of_item') > 0)
          purchased_stocks.push(
                { stock_id: stock.get('id'),
                quantity: stock.get('units_of_item')
          });
          //info = info + "\n\nItem: " + stock.get('name') + "\nQuantity: " + stock.get('units_of_item');
      });
      
//      info = info + "\n\nUser Details: \nName: ";
//      info = info + this.get('name');
//      
//      info = info + "\nEmail: ";
//      info = info + this.get('email');
//
//      info = info + "\nAddress: ";
//      info = info + this.get('address');
//      
//      info = info + "\nPhone: ";      
//      info = info + this.get('phone');
//
//      info = info + "\nDate: ";      
//      info = info + this.get('date');
//
//      info = info + "\nTime: ";
//      info = info + this.get('time');
      
      $.ajax({
        type: "POST",
        url: '/welcome_email',
        data: {
          //'info':info,
          purchased_stocks: purchased_stocks,
          name: this.get('name'),
          email: this.get('email'),
          address: this.get('address'),
          phone: this.get('phone'),
          date: this.get('date'),
          time: this.get('time')          
        }
      });
            
      this.transitionTo('thanks');
    }
           
            //.then(function(){
     // controller.transitionToRoute('application');
   // })
  }
  
  
  });