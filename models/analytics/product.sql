SELECT 
  product.stock_item_id as product_id
  , product.stock_item_name as product_name
  , coalesce(product.brand, 'Underfined') as brand_name
  , product.supplier_id
  , supplier.supplier_name
FROM `vit-lam-data.wide_world_importers.warehouse__stock_items` as product
join {{ref('supplier')}} as supplier
  on product.supplier_id = supplier.supplier_id
