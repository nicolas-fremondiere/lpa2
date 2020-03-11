class Burger < ApplicationRecord
    def getNurtiments
        require 'openfoodfacts'
        product = Openfoodfacts::Product.get(self.code, locale: 'fr')

        # If no products then return nothing
        if product == nil
            product = [["Data missing"], [""]]
          else
            product = product.nutriments
          end
         
          return product
    end
end
