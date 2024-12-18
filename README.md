## Description
Ce projet consiste à détecter et suivre les objets ou personnes en mouvement dans une séquence d'images. La méthode repose sur la soustraction entre une image courante et une image de référence, suivie d'opérations de seuillage et de traitement morphologique pour améliorer la détection.

## Objectifs
1. **Calculer la différence** entre l'image courante et l'image de référence.
2. **Seuil manuel** pour obtenir une image binaire.
3. Appliquer des **ouvertures et fermetures morphologiques** pour améliorer l’image binaire.
4. **Compter le nombre de régions détectées** et les afficher.
5. **Supprimer les régions de petite taille** (seuil à définir).
6. Calculer les **centres de gravité** des régions détectées et les stocker.
7. **Afficher les trajectoires** des objets en mouvement à partir des centres de gravité.

## Prérequis
- Logiciel : MATLAB
- Fichier de référence : `ref.jpg`
- Séquence d'images : `image50.jpg` à `image200.jpg`

## Instructions d'Exécution
1. **Préparation des fichiers** :  
   Placez les images `image50.jpg` à `image200.jpg` et l’image de référence `ref.jpg` dans le même dossier que le programme.
   
2. **Exécution** :  
   Ouvrez et complétez le script `TP5.m` dans MATLAB selon les étapes spécifiées.  

3. **Méthodes** :  
   - Calculez la différence absolue entre chaque image et l'image de référence.  
   - Appliquez un seuillage manuel pour obtenir une image binaire.  
   - Réalisez des ouvertures et fermetures pour éliminer le bruit.  
   - Identifiez les régions détectées et calculez leurs centres de gravité.  
   - Tracez les trajectoires à partir des centres.

## Fichiers Associés
- `TP5.m` : Script MATLAB pour l'exécution des étapes.
- `ref.jpg` : Image de référence.
- `image50.jpg` à `image200.jpg` : Séquence d’images.

## Résultats Attendues
- Affichage du nombre d'objets détectés.
- Élimination des régions de petite taille.
- Calcul et visualisation des trajectoires des objets en mouvement.

## Auteur
Projet développé dans le cadre du **TP4 - Détection de Mouvements**.

## Licence
Projet libre pour usage académique.
