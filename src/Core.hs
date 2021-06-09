module Core where

import RIO
import qualified RIO.Map as Map

data Product = Product
  { name :: ProductName,
    price :: Price,
    weight :: Weight
  }
  deriving (Eq, Show)

newtype ProductName = ProductName Text
  deriving (Eq, Show)

newtype Price = Price Double
  deriving (Eq, Show)

newtype Weight = Weight Double
  deriving (Eq, Show)

-- Invventory / Catalog

newtype Quantity = Quantity Int
  deriving (Eq, Show, Ord)

newtype ProductId = ProductId Int
  deriving (Eq, Show, Ord)

data InventoryItem = InventoryItem
  { product :: Product,
    quantity :: Quantity
  }
  deriving (Eq, Show)

type Inventory = Map ProductId InventoryItem

-- Store

data Store = Store {inventory :: Inventory}
  deriving (Eq, Show)

-- Initialize

emptyInventory :: Inventory
emptyInventory = mempty

emptyStore :: Store
emptyStore = Store emptyInventory