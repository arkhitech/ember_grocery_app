/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


App.StocksRoute = Ember.Route.extend({
  model: function() { return this.store_name.find('stock'); }
});

