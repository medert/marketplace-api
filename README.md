# README

<!DOCTYPE html>
<html>
<head>
  <title>API documentation</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link type='text/css' rel='stylesheet' href='./apidoc/stylesheets/bundled/bootstrap.min.css'/>
<link type='text/css' rel='stylesheet' href='./apidoc/stylesheets/bundled/prettify.css'/>
<link type='text/css' rel='stylesheet' href='./apidoc/stylesheets/bundled/bootstrap-responsive.min.css'/>
  <link type='text/css' rel='stylesheet' href='./apidoc/stylesheets/application.css'/>
  <!-- IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
</head>
<body>
  <div class="container-fluid">
    <div class="row-fluid">
      <div id='container'>
          <h4><a href='#products'>Products</a></h4>
  <ul>
      <li><a href='#products-index'>index</a></li>
      <li><a href='#products-show'>show</a></li>
      <li><a href='#products-purchase'>purchase</a></li>
  </ul>



<div>
<p>Another API description</p>
</div>

<hr>


  <ul class='breadcrumb'  id='products'>
    <li><a href='#'>MarketplaceApi</a><span class='divider'>/</span></li>
    <li class='active'>Products</li>
  </ul>

  <div class='page-header'>
    <h1>
      <a href='#products'>Products</a><br>
      <small></small>
    </h1>
  </div>


  <div class='accordion' id='accordion'>

      <hr>

      <ul class='breadcrumb' id='products-index'>
        <li>
          <a href='#'>MarketplaceApi</a>
          <span class='divider'>/</span>
        </li>
        <li>
          <a href='#products'>Products</a>
          <span class='divider'>/</span>
        </li>
        <li class='active'>index</li>
      </ul>

      <div>
          <h3>
            <a href='#products-index'>
              GET /products
            </a><br>
            <small>List products</small>
          </h3>
          <h3>
            <a href='#products-index'>
              GET /products?instock
            </a><br>
            <small>List products with non-zero inventory_count</small>
          </h3>
          <h3>
            <a href='#products-index'>
              GET /products?param=value
            </a><br>
            <small>List products with specific tiltle, price or inventory_count (example '/products?title=Desk')</small>
          </h3>
      </div>

      <div>

          <h2>Examples</h2>
            <pre>GET /api/v1/products
200
{
  &quot;message&quot;: &quot;Loaded all products in ascending order&quot;,
  &quot;data&quot;: [
    {
      &quot;id&quot;: 1,
      &quot;title&quot;: &quot;nemo&quot;,
      &quot;price&quot;: 48.43,
      &quot;inventory_count&quot;: 46,
      &quot;created_at&quot;: &quot;2019-01-21T03:25:54.312Z&quot;,
      &quot;updated_at&quot;: &quot;2019-01-21T03:25:54.312Z&quot;
    },
    {
      &quot;id&quot;: 2,
      &quot;title&quot;: &quot;est&quot;,
      &quot;price&quot;: 13.06,
      &quot;inventory_count&quot;: 15,
      &quot;created_at&quot;: &quot;2019-01-21T03:25:54.314Z&quot;,
      &quot;updated_at&quot;: &quot;2019-01-21T03:25:54.314Z&quot;
    },
    {
      &quot;id&quot;: 3,
      &quot;title&quot;: &quot;asperiores&quot;,
      &quot;price&quot;: 86.55,
      &quot;inventory_count&quot;: 60,
      &quot;created_at&quot;: &quot;2019-01-21T03:25:54.316Z&quot;,
      &quot;updated_at&quot;: &quot;2019-01-21T03:25:54.316Z&quot;
    }
  ]
}</pre>


          <h2>Params</h2>
          <table class='table'>
            <thead>
              <tr>
                <th>Param name</th>
                <th>Description</th>
              </tr>
            </thead>
            <tbody>
                <tr style='background-color:rgb(255,255,255);'>
    <td>
      <strong>instock </strong><br>
      <small>
        optional
        , nil allowed
      </small>
    </td>
    <td>

        <p><strong>Validations:</strong></p>
        <ul>
            <li>
<p>Must be a String</p>
</li>
        </ul>

    </td>

  </tr>


  <tr style='background-color:rgb(255,255,255);'>
    <td>
      <strong>title </strong><br>
      <small>
        optional

      </small>
    </td>
    <td>

        <p><strong>Validations:</strong></p>
        <ul>
            <li>
<p>Must be a String</p>
</li>
        </ul>

    </td>

  </tr>


  <tr style='background-color:rgb(255,255,255);'>
    <td>
      <strong>price </strong><br>
      <small>
        optional

      </small>
    </td>
    <td>

        <p><strong>Validations:</strong></p>
        <ul>
            <li>
<p>Must be a String</p>
</li>
        </ul>

    </td>

  </tr>


  <tr style='background-color:rgb(255,255,255);'>
    <td>
      <strong>inventory_count </strong><br>
      <small>
        optional

      </small>
    </td>
    <td>

        <p><strong>Validations:</strong></p>
        <ul>
            <li>
<p>Must be a String</p>
</li>
        </ul>

    </td>

  </tr>



            </tbody>
          </table>
      </div>
      <hr>

      <ul class='breadcrumb' id='products-show'>
        <li>
          <a href='#'>MarketplaceApi</a>
          <span class='divider'>/</span>
        </li>
        <li>
          <a href='#products'>Products</a>
          <span class='divider'>/</span>
        </li>
        <li class='active'>show</li>
      </ul>

      <div>
          <h3>
            <a href='#products-show'>
              GET /products/:id
            </a><br>
            <small>Show a product</small>
          </h3>
      </div>

      <div>

          <h2>Examples</h2>
            <pre>GET /api/v1/products/25
200
{
  &quot;message&quot;: &quot;Loaded a product with id 25&quot;,
  &quot;data&quot;: {
    &quot;id&quot;: 25,
    &quot;title&quot;: &quot;sunt&quot;,
    &quot;price&quot;: 85.13,
    &quot;inventory_count&quot;: 89,
    &quot;created_at&quot;: &quot;2019-01-21T03:25:54.416Z&quot;,
    &quot;updated_at&quot;: &quot;2019-01-21T03:25:54.416Z&quot;
  }
}</pre>


          <h2>Params</h2>
          <table class='table'>
            <thead>
              <tr>
                <th>Param name</th>
                <th>Description</th>
              </tr>
            </thead>
            <tbody>
                <tr style='background-color:rgb(255,255,255);'>
    <td>
      <strong>id </strong><br>
      <small>
        optional

      </small>
    </td>
    <td>

        <p><strong>Validations:</strong></p>
        <ul>
            <li>
<p>Must be a number.</p>
</li>
        </ul>

    </td>

  </tr>



            </tbody>
          </table>
      </div>
      <hr>

      <ul class='breadcrumb' id='products-purchase'>
        <li>
          <a href='#'>MarketplaceApi</a>
          <span class='divider'>/</span>
        </li>
        <li>
          <a href='#products'>Products</a>
          <span class='divider'>/</span>
        </li>
        <li class='active'>purchase</li>
      </ul>

      <div>
          <h3>
            <a href='#products-purchase'>
              GET /products/:id/purchase
            </a><br>
            <small>Purchase a product</small>
          </h3>
      </div>

      <div>



      </div>
  </div>



      </div>
    </div>
    <hr>
    <footer></footer>
  </div>
  <script type='text/javascript' src='./apidoc/javascripts/bundled/jquery.js'></script>
<script type='text/javascript' src='./apidoc/javascripts/bundled/bootstrap-collapse.js'></script>
<script type='text/javascript' src='./apidoc/javascripts/bundled/prettify.js'></script>
<script type='text/javascript' src='./apidoc/javascripts/apipie.js'></script>
</body>
</html>
