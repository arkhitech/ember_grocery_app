//App.Store = DS.Store.extend({

//});

// Override the default adapter with the `DS.ActiveModelAdapter` which
// is built to work nicely with the ActiveModel::Serializers gem.
//App.ApplicationAdapter = DS.ActiveModelAdapter.extend({

//});

App.ApplicationStore = DS.Store.extend({
  revision: 12,
  adapter: "DS.RESTAdapter"
});
