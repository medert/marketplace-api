# README

-   [Marketplace-api 1.0](../apidoc.html) /
-   Products

Products \
==========

* * * * *


<h3>GET /products \</h3>
<h5>List products</h5>

-----------------------------------------------------

<h3>GET /products?instock \</h3>
<h5>List products with non-zero inventory\_count</h5>

-----------------------------------------------------

<h3>GET /products?param=value \</h3>
<h5>List products with specific tiltle </h5>
<h5>List products with price </h5>
<h5>List products with inventory\_count </h5>

-----------------------------------------------------

### [Examples]((https://github.com/medert/marketplace-api/blob/master/doc/apipie_examples.json))

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



<h3>GET /products/:id \ </h3>
 <h5>Show a product</h5>

 -----------------------------------------------------

### [Examples]((https://github.com/medert/marketplace-api/blob/master/doc/apipie_examples.json))

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



<h3>GET /products/:id/purchase \ </h3>
<h5>Purchase a product</h5>

### [Examples]((https://github.com/medert/marketplace-api/blob/master/doc/apipie_examples.json))

* * * * *
