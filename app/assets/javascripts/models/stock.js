/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

App.Stock = DS.Model.extend({
  parent_id: DS.attr('string'),
  name: DS.attr('string'),
  additional_text: DS.attr('string'),
  normal_price: DS.attr('number'),
  store_name: DS.attr('string'),
  product_group_id: DS.attr('string'),
  status: DS.attr('string'),
  brand_id: DS.attr('string'),
  packaging: DS.attr('string'),
  units_of_item: DS.attr('number'),
  size: DS.attr('string'),
  halal_status: DS.attr('string'),
  halal_certification_issuer: DS.attr('string'),
  preservatives_status: DS.attr('string'),
  artificial_coloring_status: DS.attr('string'),
  artificial_flavoring_status: DS.attr('string'),
  food_conditioner_status: DS.attr('string'),
  artifical_sweetener_status: DS.attr('string'),
  returnable: DS.attr('string'),
  product_note: DS.attr('string'),
  internal_note: DS.attr('string'),
  product_price_group: DS.attr('string'),
  creator: DS.attr('string'),
  picture: DS.attr('string')
});