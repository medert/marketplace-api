# README

-   [Marketplace-api 1.0](../apidoc.html) /
-   Products

Products \
==========

* * * * *


[GET /products](#description-index) \
 List products
-------------------------------------

[GET /products?instock](#description-index) \
 List products with non-zero inventory\_count
---------------------------------------------

[GET /products?param=value](#description-index) \
 List products with specific tiltle, price or inventory\_count (example '/products?title=Desk')
-----------------------------------------------------------------------------------------------

### Examples

``` {.prettyprint}
GET /products
200
{
  "message": "Loaded all products in ascending order",
  "data": [
    {
      "id": 1,
      "title": "a",
      "price": 58.41,
      "inventory_count": 59,
      "created_at": "2019-01-20T03:58:22.689Z",
      "updated_at": "2019-01-20T03:58:22.689Z"
    },
    {
      "id": 2,
      "title": "omnis",
      "price": 85.79,
      "inventory_count": 85,
      "created_at": "2019-01-20T03:58:22.692Z",
      "updated_at": "2019-01-20T03:58:22.692Z"
    },
    {
      "id": 3,
      "title": "sunt",
      "price": 45.42,
      "inventory_count": 12,
      "created_at": "2019-01-20T03:58:22.694Z",
      "updated_at": "2019-01-20T03:58:22.694Z"
    },
  ]
}
```

### Params


|  Param name           | Description       |
|------------------------------|---------------------------------|
| **instock**\ <br /> optional , nil allowed |  **Validations:**  <br />-   Must be a String |
|  **title**\ <br />optional  | **Validations:**  <br />-   Must be a String  |
|  **title**\ <br />optional  |  **Validations:**  <br />-   Must be a String |
|  **price**\ <br />optional  |  **Validations:**  <br />-   Must be a String |
| **inventory\_count**\ <br />optional | **Validations:**  <br />-   Must be a String |



* * * * *



[GET /products/:id](#description-show) \
 Show a product
----------------------------------------

### Examples

``` {.prettyprint}
GET /products/3
200
{
  "id": 3,
  "title": "sunt",
  "price": 45.42,
  "inventory_count": 12,
  "created_at": "2019-01-20T03:58:22.694Z",
  "updated_at": "2019-01-20T03:58:22.694Z"
},
```

### Params


| Param name                 | Description                                 |
|----------------------------|---------------------------------------------|
| **id**\  <br />   optional | **Validations:** <br />  - Must be a number.|


* * * * *



[GET /products/:id/purchase](#description-purchase) \
 Purchase a product
-----------------------------------------------------

* * * * *
