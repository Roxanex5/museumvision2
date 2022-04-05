<!doctype html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <title></title>
    <meta name="description" content=" ">
    <meta name="viewport" content="width=device-width, initial-scale=1 shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <meta property="og:title" content="">
    <meta property="og:type" content="">
    <meta property="og:url" content="">
    <meta property="og:image" content="">

    <link rel="manifest" href="site.webmanifest">
    <link rel="" href="" type="" />
    <link rel="" href="o" />

    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/main.css">
    <meta name="theme-color" content="#fafafa">
    <style>
        body {
            background-image: url("https://cdn.pixabay.com/photo/2020/08/28/16/17/bust-5524961_960_720.jpg");
            background-repeat: repeat-y;
            background-position: right;
            background-size: 20% 20%;
            background-color: #b9aaaa;
        }
    </style>



</head>
<h1 class="text-center" > Création d'une visite</h1>
<div class="row mb-3 m-3">
    <div class="col-2">
        <img src="../images/date.png" class="rounded" alt="date" style="width:20%; height:auto">
    </div>
    <form>
        <div class="row mb-3">
            <label for="inputEmail3" class="col-2 col-form-label">Nombre total de personnes : </label>
            <div class="col-1">
                <input type="email" class="form-control" id="inputEmail3">
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputEmail3" class="col-2 col-form-label">Nombre total d'adultes: </label>
            <div class="col-1">
                <input type="email" class="form-control" id="inputEmail3">
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputEmail3" class="col-2 col-form-label">Nombre total d'enfants : </label>
            <div class="col-1">
                <input type="email" class="form-control" id="inputEmail3">
            </div>
        </div>

    <div class="col-2">
        <button type="button" class="btn btn-outline-dark">Actualiser</button>
    </div>
    <div class="col-6">
    </div>
    <div class="row mb-3 m-5">
        <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
            <label class="form-check-label" for="flexCheckDefault">
                Exposition temporaire
            </label>
        </div>
    </div>
        <?php
        $i=0;
        $max = count( $listeExpos );
       while( $i < $max )  { ?>
        <div class="row mb-3 m-5">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                <label class="form-check-label" for="flexCheckDefault">
                    <?php echo $listeExpos[$i]['nom']  ?>
                </label>
            </div>
        </div>
        <?php $i++ ;
        } ?>


    <div  class="row mb-3 m-3">
        <div class="col-3">
            <button type="button" class="btn btn-outline-dark"> Tarif = </button>
        </div>
        <div class="col-3">
            <button type="button" class="btn btn-outline-dark"> Crée une visite </button>
        </div>
        <div class="col-6">
        </div>
    </div>
</div>











<main role="main">
    <div class="container">
    </div>
    <footer class="container">
        <p class="float-right"><a href="#">Retour en haut</a></p>
        <p>&copy; 2022 MuseumVision, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
    </footer>
</main>
