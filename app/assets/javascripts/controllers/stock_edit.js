App.StockEditController = Em.ObjectController.extend({  
actions: {
    controller: this,
    content: {},
    updateStock: function(){
      
      stock = this.get ('model');
      
      var id = stock.get('id');
      var store_name = stock.get('store_name');
      var normal_price = stock.get('normal_price');
      var parent_id = stock.get('parent_id');
      var halal_status = stock.get('halal_status');
      var picture = stock.get('picture');
      var halal_certification_issuer = stock.get('halal_certification_issuer');
      var creator = stock.get('creator');
      var additional_text = stock.get('additional_text');
      var preservatives_status = stock.get('preservatives_status');
      var product_note = stock.get('product_note');
      var artificial_coloring_status = stock.get('artificial_coloring_status');
      var product_price_group = stock.get('product_price_group');
      var artificial_flavoring_status = stock.get('artificial_flavoring_status');
      var size = stock.get('size');
      var product_group_id = stock.get('product_group_id');
      var food_conditioner_status = stock.get('food_conditioner_status');
      var units_of_item = stock.get('units_of_item');
      var status = stock.get('status');
      var artifical_sweetener_status = stock.get('artifical_sweetener_status');
      var internal_note = stock.get('internal_note');
      var brand = stock.get('brand');
      var returnable = stock.get('returnable');
      var packaging = stock.get('packaging');
      
      $.ajax({
        type: "POST",
        url: 'update_stock',
        data: {
          store_name: store_name,
          id: id,
          normal_price: normal_price,
          parent_id: parent_id,
          halal_status: halal_status,
          picture: picture,
          halal_certification_issuer: halal_certification_issuer,
          creator: creator,
          additional_text: additional_text,
          preservatives_status: preservatives_status,
          product_note: product_note,
          artificial_coloring_status: artificial_coloring_status,
          size: size,
          product_group_id: product_group_id,
          food_conditioner_status: food_conditioner_status,
          units_of_item: units_of_item,
          status: status,
          artifical_sweetener_status: artifical_sweetener_status,
          internal_note: internal_note,
          brand: brand,
          returnable: returnable,
          packaging: packaging,
          product_price_group: product_price_group,
          artificial_flavoring_status: artificial_flavoring_status
        }
      });
    }
  }
  });