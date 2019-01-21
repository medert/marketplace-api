-   [Market 1.0](../apidoc.html) /
-   Products

Products \
==========

* * * * *

[\>\>\>](../apidoc/products/index.html)

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
    {
      "id": 4,
      "title": "non",
      "price": 80.97,
      "inventory_count": 23,
      "created_at": "2019-01-20T03:58:22.696Z",
      "updated_at": "2019-01-20T03:58:22.696Z"
    },
    {
      "id": 5,
      "title": "laboriosam",
      "price": 37.15,
      "inventory_count": 88,
      "created_at": "2019-01-20T03:58:22.698Z",
      "updated_at": "2019-01-20T03:58:22.698Z"
    },
    {
      "id": 6,
      "title": "facere",
      "price": 92.99,
      "inventory_count": 40,
      "created_at": "2019-01-20T03:58:22.700Z",
      "updated_at": "2019-01-20T03:58:22.700Z"
    },
    {
      "id": 7,
      "title": "dignissimos",
      "price": 25.75,
      "inventory_count": 58,
      "created_at": "2019-01-20T03:58:22.702Z",
      "updated_at": "2019-01-20T03:58:22.702Z"
    },
    {
      "id": 8,
      "title": "voluptatem",
      "price": 68.02,
      "inventory_count": 39,
      "created_at": "2019-01-20T03:58:22.704Z",
      "updated_at": "2019-01-20T03:58:22.704Z"
    },
    {
      "id": 9,
      "title": "iure",
      "price": 33.13,
      "inventory_count": 57,
      "created_at": "2019-01-20T03:58:22.706Z",
      "updated_at": "2019-01-20T03:58:22.706Z"
    },
    {
      "id": 10,
      "title": "ipsum",
      "price": 90.61,
      "inventory_count": 74,
      "created_at": "2019-01-20T03:58:22.708Z",
      "updated_at": "2019-01-20T03:58:22.708Z"
    }
  ]
}
```

### Params

+--------------------------------------+--------------------------------------+
| Param name                           | Description                          |
+======================================+======================================+
| **instock**\                         | **Validations:**                     |
|  optional , nil allowed              |                                      |
|                                      | -   Must be a String                 |
+--------------------------------------+--------------------------------------+
| **title**\                           | **Validations:**                     |
|  optional                            |                                      |
|                                      | -   Must be a String                 |
+--------------------------------------+--------------------------------------+
| **price**\                           | **Validations:**                     |
|  optional                            |                                      |
|                                      | -   Must be a String                 |
+--------------------------------------+--------------------------------------+
| **inventory\_count**\                | **Validations:**                     |
|  optional                            |                                      |
|                                      | -   Must be a String                 |
+--------------------------------------+--------------------------------------+

* * * * *

[\>\>\>](../apidoc/products/show.html)

[GET /products/:id](#description-show) \
 Show a product
----------------------------------------

### Examples

``` {.prettyprint}
GET /products/81
200
{
  "message": "Loaded a product with id 81",
  "data": null
}
```

### Params

+--------------------------------------+--------------------------------------+
| Param name                           | Description                          |
+======================================+======================================+
| **id**\                              | **Validations:**                     |
|  optional                            |                                      |
|                                      | -   Must be a number.                |
+--------------------------------------+--------------------------------------+

* * * * *

[\>\>\>](../apidoc/products/purchase.html)

[GET /products/:id/purchase](#description-purchase) \
 Purchase a product
-----------------------------------------------------

* * * * *
