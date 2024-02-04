<?php
$titre="Mes Posts";
session_start();

if(!isset($_SESSION['auth'])){
  header('Location: index.php');
}
require('utilitaire/class.post.php');
require('connexion.php');
$pdo=new DB;
$post=new post($pdo);
$user=$post->user();

$mesposts=$post->Mesposts($user['id']);


require('utilitaire/heade.php');
?>

<link rel="stylesheet" href="utilitaire/style.css">
<link rel="stylesheet" href="utilitaire/style2.css">

<main class="flex-shrink-0 mt-5 bg-body ">
	<div class="container mt-5">
  
	<?php
//var_dump($mesposts);
$i=1;
	foreach ($mesposts as $key) {
 	//echo ($i++.'  >>>>>>>>>>'.htmlentities($key['post'])."<p>");
	}
	
	?>













<div class="container">
    <div class="row">
		<div class="col12">
            <h2>Mes Posts</h2>
		<hr class="my-3" >

        </div><div class="container mb-3" >
            <form class="d-flex">
                <input class="form-control bg-body me-2 w-100 filter " type="search" id="filter" onkeyup="searchProduct()" placeholder="Filtrer par Titre" aria-label="Search">
                
            </form>
        </div>
        <div class="codl12" id="codl12">
            <div class="row" id="myTable">

				<?php foreach($mesposts as $p) :?>
                <div class="col4 col6-s">
                    <div class="category-forum carde"  >
                        <a href="/forum/categorie/html-css" class="category-forum__top">
                            <span data-image-cdn-attr-src="//sdz-upload.s3.amazonaws.com/prod/categories/icons/icon_forum_html-css.png" data-image-cdn-attr-alt="HTML / CSS" data-image-cdn-width="45" data-image-cdn-attr-class="category-forum__illustration"><img class="category-forum__illustration" width="45" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" /></span>
                                <div class="category-forum__illustrated">
                                    <div class="category-forum__title text-dark"><?= $p['nom_stype'] ?>

                                    </div>
                                        <div class="category-forum__description description"><?= $p['titre'] ?>

                                        </div>
                                </div>
                        </a>
						<a title="[HTML] Conflit deux diaporamas page web" href="/forum/sujet/html-conflit-deux-diaporamas-page-web-580d2/95049242" class="category-forum__bottom">
							<hr>
							<strong>
								<span class="category-forum__last-msg">Dernier message :</span>
							</strong>
							<br/>
							<div class="category-forum__last-msg-link text-dark">
								[HTML] Conflit deux diaporamas page web
							</div>
						</a>
					</div>
				</div>

				<?php endforeach ?>


			</div>
		</div>
	</div>

	<script>
    function searchProduct(){
      const input = document.getElementById('filter').value.toUpperCase();
      //console.log(input)
      const cardContainer = document.getElementById("codl12")
      
      //console.log(cardContainer)
      const cards= cardContainer.getElementsByClassName('carde')
      //console.log(cards)
      for(let i=0; i<cards.length; i++){
        let title=cards[i].querySelector('.category-forum__illustrated div.description');
        //console.log(title)
        if(title.innerText.toUpperCase().indexOf(input)> -1){
          cards[i].style.display='';
        }else{
          cards[i].style.display='none';
        }
      }
    }
</script>

<?php
require('utilitaire/foot.php');
?>