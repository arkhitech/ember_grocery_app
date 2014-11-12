class Stock < ActiveRecord::Base
  
  require 'csv'
  belongs_to :product_group
  belongs_to :brand
  has_many :promos
 # mount_uploader :picture, PictureUploader
  belongs_to :parent_stock, foreign_key: 'parent_id', class_name: 'Stock'
  accepts_nested_attributes_for :brand, :product_group, :promos
#  INDEX_PARENTSKUID	= 1
#  INDEX_PARENTSKUNAME	= 2
#  INDEX_SKUNAME	= 3
#  INDEX_SKUNAMEADDITIONALTEXT	= 4
#  INDEX_NORMALPRICE	= 5
#  INDEX_STORENAME	= 6
#  INDEX_PRODUCTCATEGORY	= 7
#  INDEX_PRODUCTGROUP	= 8
#  INDEX_PRODUCTTYPE	= 9
#  INDEX_STATUS = 10
#  INDEX_MANUFACTURER = 11
#  INDEX_BRAND = 12	
#  INDEX_PACKAGING = 13	
#  INDEX_UNITSOFITEM = 14
#  INDEX_TEKAPOSIZE = 15
#  INDEX_PROMOTYPE = 16
#  INDEX_PROMOENDDATE = 17
#  INDEX_HALALSTATUS = 18	
#  INDEX_HALALCERTIFICATIONISSUER = 19
#  INDEX_PRESERVATIVESSTATUS = 20
#  INDEX_ARTIFICIALCOLORINGSTATUS = 21
#  INDEX_ARTIFICIALFLAVORINGSTATUS = 22	
#  INDEX_FOODCONDITIONERSTATUS = 23
#  INDEX_ARTIFICIALSWEETENERSTATUS = 24
#  INDEX_RETURNABLE = 25
#  INDEX_TEKAPOPRODUCTNOTE = 26
#  INDEX_TEKAPOINTERNALNOTE = 27	
#  INDEX_PRODUCTPRICEGROUP = 28
#  INDEX_SKUDATECREATED = 29
#  INDEX_SKUCREATOR = 30
#  INDEX_SKUDATELASTUPDATED = 31
  
  def self.import(file, options = {:headers => true, :col_sep => ','} )
    stocks = []
    unless file.nil?
      puts "File is not nil #{file.path} | #{options}"
      CSV.foreach(file.path, options) do |row|
        
        parent_stock = Stock.find_or_create_by(
            name: row['parentSkuName'], store_name: nil)
        
        if row['parentSkuName'].present?
          parent_stock_id = parent_stock.id
        else
          parent_stock_id = parent_stock.id
        end
        
        stock = Stock.find_or_create_by!(
          name: row['skuName'], 
          store_name: row['storeName'], 
          parent_id: parent_stock_id
        ) if row['skuName'].present?
        stocks << stock
        
        stock.additional_text = row['skuNameAdditionalText']
        stock.normal_price = row['normalPrice']
        stock.store_name = row['storeName']
        
        if row['productCategory'].present?
          product_category = ProductCategory.find_or_create_by!(
            name: row['productCategory']
          ) 
          product_category_id = product_category.id
        else
          product_category_id = nil
        end
        
        stock.product_group = ProductGroup.find_or_create_by!(
          name: row['productGroup'],
          product_type: row['productType'],
          product_category_id: product_category_id
        ) if row['productGroup'].present? || row['productType'].present?
        
        stock.status = row['status']
        
        stock.brand = Brand.find_or_create_by!(
          name: row['brand'],
          manufacturer: row['manufacturer']
        ) if row['brand'].present? || row['manufacturer'].present?
        
        stock.packaging = row['packaging']
        stock.units_of_item = row['unitsOfItem']
        stock.size = row['tekapoSize']
        
        if row['promoType'].present?
          stock.promos << [Promo.find_or_create_by!(
            promo_type: row['promoType'],
            end_date: row['promoEndDate']
          )]
        end
  
        stock.halal_status = row['halalStatus']
        stock.halal_certification_issuer = row['halalCertificationIssuer']
        stock.preservatives_status = row['preservativesStatus']
        stock.artificial_coloring_status = row['artificialColoringStatus']
        stock.artificial_flavoring_status = row['artificialFlavoringStatus']
        stock.food_conditioner_status = row['foodConditionerStatus']
        stock.artifical_sweetener_status = row['artificialSweetenerStatus']
        stock.returnable = row['returnable']
        stock.product_note = row['tekapoProductNote']
        stock.internal_note = row['tekapoInternalNote']
        stock.product_price_group = row['productPriceGroup']
        stock.created_at = row['skuDateCreated']
        stock.creator = row['skuCreator'] || 'admin'
        stock.updated_at = row['skuDateLastUpdated']
        stock.save!
      end
    end
    stocks  
  end
  
  def self.update_edit(params)
        
    stock = Stock.find_by_id(params['id'])

    if stock
      stock.store_name = params['store_name'];
      stock.normal_price = params['normal_price'];
      stock.parent_id = params['parent_id'];
      stock.halal_status = params['halal_status'];
      stock.picture = params['picture'];
      stock.halal_certification_issuer = params['halal_certification_issuer'];
      stock.creator = params['creator'];
      stock.additional_text = params['additional_text'];
      stock.preservatives_status = params['preservatives_status'];
      stock.product_note = params['product_note'];
      stock.artificial_coloring_status = params['artificial_coloring_status'];
      stock.size = params['size'];
      stock.product_group_id = params['product_group_id'];
      stock.food_conditioner_status = params['food_conditioner_status'];
      stock.units_of_item = params['units_of_item'];
      stock.status = params['status'];
      stock.artifical_sweetener_status = params['artifical_sweetener_status'];
      stock.internal_note = params['internal_note'];
      stock.brand = params['brand'];
      stock.returnable = params['returnable'];
      stock.packaging = params['packaging'];
      stock.product_price_group = params['product_price_group'];
      stock.artificial_flavoring_status = params['artificial_flavoring_status'];
      
      stock.save!

    end
  end
end