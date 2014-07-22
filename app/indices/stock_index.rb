# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

ThinkingSphinx::Index.define :Stock, :with => :active_record do
  indexes name
  indexes store_name, :sortable => true
  
  set_property :min_infix_len => 3
end