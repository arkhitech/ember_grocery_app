App.CartController = Em.ObjectController.extend({
  

  actions: {
    controller: this,
    content: {},
    sendForm: function(){
      
      this.get('name');
      this.get('email');
      this.get('address');
      this.get('phone');
      this.get('date');
      this.get('time');
      
      this.transitionTo('thanks');
    }
           
            //.then(function(){
     // controller.transitionToRoute('application');
   // })
  }
  
  
  }
);