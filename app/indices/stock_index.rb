# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

ThinkingSphinx::Index.define :Stock, :with => :active_record do
  indexes skuName
  indexes storeName, :sortable => true
end