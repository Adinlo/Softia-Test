<?php
{
	$db = new PDO('mysql:host=mysql-etna-bubble-tea.alwaysdata.net;dbname=etna-bubble-tea_softia;charset=utf8', '288537', 'ROot94H');
}
// if(Exception $e)
// {
//         die('Erreur : ' . $e->getMessage());
// }

?>

<!doctype html>
    
    <html lang="en">
      
    <head>
        
    <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
    </head>
        
    <body>
    <div id="container">
        
        <h1 class="text-center">Formulaire d'attestation FormationPlus</h1> 
        
            <div>
            <label for="name">Nom</label><br>
            <input type = "text" name = "etu_nom">
            </div>
    
            <div>
            <label for="saveur">Prenom</label><br>
            <input type = "text" name = "etu_prenom">
            </div>
    
            <div>
            <label for="prix">Email</label><br>
            <input type = "text" name = "etu_email">
            </div>
    
            
            
            <button type="submit" class="btn btn-primary">Valider</button>
    </div>
    <div id="container">
        <p> Bonjour #NOM_ETUDIANT# #PRENOM_ETUDIANT#,
        Vous avez suivi #nbHeur# de formation chez FormationPlus.
        Pouvez-vous nous retourner ce mail avec la pièce jointe signée.
        Cordialement,
        FormationPlus 
        </p>
</div>

    </body> 
    </html>
    