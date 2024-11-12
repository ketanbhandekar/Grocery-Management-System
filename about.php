<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<section class="about">

   <div class="row">

      <div class="box">
         <img src="images/about-img-1.png" alt="">
         <h3>why choose us?</h3>
         <p> 
            Our commitment to quality, freshness, and variety. We offer handpicked fruits, vegetables, 
            premium meats, and fresh fish, ensuring you get the best ingredients for your meals. With 
            competitive pricing, convenient shopping options, and excellent customer service, we make 
            your grocery experience easy, reliable, and enjoyable. 
         </p>
         <a href="contact.php" class="btn">contact us</a>
      </div>

      <div class="box">
         <img src="images/about-img-2.png" alt="">
         <h3>what we provide?</h3>
         <p>We provide a wide range of fresh, high-quality products including fruits, vegetables, 
            premium meats, and seafood. We also offer pantry essentials, dairy products, and beverages 
            to meet all your grocery needs. Our goal is to deliver freshness, variety, and convenience, 
            ensuring you have everything for healthy, delicious meals.</p>
         <a href="shop.php" class="btn">our shop</a>
      </div>

   </div>

</section>

<section class="reviews">

   <h1 class="title">clients reviews</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/pic-1.png" alt="">
         <p>I love shopping at Grocery Hub. The fruits and vegetables are always fresh, and their meat selection is top-notch. The prices are reasonable, and the staff is super friendly. Highly recommend!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Aarav Sharma</h3>
      </div>

      <div class="box">
         <img src="images/pic-2.png" alt="">
         <p>I’ve been a regular customer at Grocery Hub for months. The variety is great, especially the fish section, and the quality is consistent. It’s my go-to for all my grocery needs!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Priya Gupta</h3>
      </div>

      <div class="box">
         <img src="images/pic-3.png" alt="">
         <p>Grocery Hub offers a fantastic range of products. Their fresh produce section is always well-stocked, and I appreciate how easy it is to find everything I need in one place. Excellent service too!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <!-- <i class="fas fa-star-half-alt"></i> -->
         </div>
         <h3>Rohan Singh</h3>
      </div>

      <div class="box">
         <img src="images/pic-4.png" alt="">
         <p>I’m impressed with the quality of the fruits and vegetables at Grocery Hub. They last longer than what I get from other stores, and the prices are competitive. It's always a pleasant shopping experience.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Ananya Desai</h3>
      </div>

      <div class="box">
         <img src="images/pic-5.png" alt="">
         <p>The meat selection at Grocery Hub is unbeatable! I’ve tried different cuts, and they’re always fresh and tender. Plus, their customer service is exceptional. A great place for grocery shopping.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Vikram Mehta</h3>
      </div>

      <div class="box">
         <img src="images/pic-6.png" alt="">
         <p>I love the variety of groceries available at Grocery Hub, especially the fresh fish. It’s always a pleasant experience shopping here. The store is well-organized, and the staff is super helpful!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Kavya Iyer</h3>
      </div>

   </div>

</section>




<?php include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>