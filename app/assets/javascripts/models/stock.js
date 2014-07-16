/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

App.Stock = DS.Model.extend({
  parent_id: DS.attr('integer'),
  name: DS.attr('text'),
  additional_text: DS.attr('text'),
  normal_price: DS.attr('decimal'),
  store_name: DS.attr('string')
});