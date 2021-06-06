# store
A mock online store with shopping carts per customer

# Requirements

- The online store starts with a catalog/inventory of products
- The store has a way of displaying total number of items 
- The store has a way of displaying order statistics ( Subtotal, Shipping Charges, Discounts (in Dollars), and the Total of the order, and the
individual Line Items with Description, Quantity and Cost.) given a customer identifier.
- Multiple customers should be able to use the Online Store at a given time without running into Inventory conflicts. At no point should the inventory ever be negative or reflect an amount greater than reality.

- Store sells food and other camping equipment 
- All Products must have a cost greater than zero.
- All items/Products must have a name
- All Products have a net weight per sku
- All Product weights are in kg.


- When the customer places an item in their cart, it takes it out of the store inventory
- When an item is removed, it returns back to the store inventory.
- When adding an item to the Shopping Cart, the total cost of the Item (Product Cost * Count) should be stored on the item.
- If we try to add a greater quantity of an item to a shopping cart, than is what is currently in inventory, the operation should fail, and an error should be thrown.
- If we try to return to the Catalog, an amount greater or equal in quantity to what is in the Shopping Cart, of an item from a shopping cart to the catalog, we will assume that we are removing that item from the cart. We should not be able to add more to the Catalog than what exists in the Cart.


- If the total weight of the items exceeds 10kg, an additional overweight shipping charge of $25 will be added to the cart.
- By default, there is a shipping charge of $20 if the cost of the items is less than $200. If the cost of the items is greater than or equal to $200, then the default shipping charge is waived. If applicable, the overweight shipping charge would still apply.

##### Discount on Tents
- If the customer buys 3 or more tents, they will get a 15% discount on the tents.
- If the customer buys 5 or more tents, they will get a 15% discount on the entire order.
