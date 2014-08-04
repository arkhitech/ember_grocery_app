App.CartController = Em.ObjectController.extend({
  

  actions: {
    controller: this,
    content: {},
    sendForm: function(){
      
      var info = "Name: ";
      info = info + this.get('name');
      
      info = info + "\nEmail: ";
      info = info + this.get('email');

      info = info + "\nAddress: ";
      info = info + this.get('address');
      
      info = info + "\nPhone: ";      
      info = info + this.get('phone');

      info = info + "\nDate: ";      
      info = info + this.get('date');

      info = info + "\nTime: ";
      info = info + this.get('time');
      
      $.ajax({
        type: "POST",
        url: '/welcome_email',
        data: {'info':info}
      });
            
      this.transitionTo('thanks');
    }
           
            //.then(function(){
     // controller.transitionToRoute('application');
   // })
  }
  
  
  }
);