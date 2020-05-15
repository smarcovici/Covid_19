
# Progression du COVID_19 pendant la phase de confinement en France

## Récupération des données
- nb hospitalisation, retour à domicile et décès quotidien sur le COVID19 sur le site data.gouv.fr
- nb habitant par département

## Traitement des données

### Préparation des données
- récupération de la population globale sans disctinction de sexe

- Calcul pour la France entière 

### Calcul des indicateurs : entrées, sorties, nb entree/hosp, tendance
- entrées en hospitalisation
- sorties en hospitalisation : guérison et décès
- rapport des entrées sur le nombre d'hospitalisation (pour 100 000 habitants)
- lissage de ce rapport sur 1 semaine pour améliorer la lisibilité
- calcul de la tendance de ce rapport sur 2 semaines (pente)

### Classification des départements
- par nombre d'hospitalisation (ramené à 100 000 habitant)
- par nombre d'entrées (ramené à 100 hospitalisation)

## Identification des différentes tendances en fin de confinement
L'objectif est d'identifier les départements les plus critiques ou ceux pour lesquels il faut rester vigilant.

###  Evolutions des hospitalisations par département
#### Legendes
La situtation des département en fin de confinement peut être rassemblée en différentes catégorie :
- en ROUGE, les départements où le virus se propage car les hospitalisations et les entrées sont elevées en fin de confinement 
- en ORANGE, les départements pour lesquels il faut être vigilant en fin de confinement car :
     - trait FIN : le virus se propage peu (entrées faibles) mais les hospitalisations sont encore élevées
     - trait EPAIS : les hospitalisations sont dans la moyenne mais les entrées élevées peuvent être le début d'une accélération     
- en GRIS, les départements avec une évolution dans la moyenne nationale (en NOIR)
- en VERT, les département avec une évolution plus faible que la moyenne.


![png](Evolution_confinement_files/Evolution_confinement_14_0.png)


#### Chiffre détaillé pour les départements critiques
- hosp : nombre d'hospitalisation du département (dep)
- Thosp : nombre d'hospitalisation pour 100 000 habitants
- Treprodmoy : nombre moyen d'entrée sur 1 semaine pour 100 hospitalisations




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>dep</th>
      <th>DEP</th>
      <th>hosp</th>
      <th>Thosp</th>
      <th>Treprodmoy</th>
      <th>CTreprod</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>5414</th>
      <td>94</td>
      <td>Val-de-Marne</td>
      <td>1449.0</td>
      <td>104</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>3932</th>
      <td>68</td>
      <td>Haut-Rhin</td>
      <td>731.0</td>
      <td>94</td>
      <td>1</td>
      <td>0</td>
    </tr>
    <tr>
      <th>5300</th>
      <td>92</td>
      <td>Hauts-de-Seine</td>
      <td>1474.0</td>
      <td>91</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>5186</th>
      <td>90</td>
      <td>Territoire de Belfort</td>
      <td>130.0</td>
      <td>89</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>4331</th>
      <td>75</td>
      <td>Paris</td>
      <td>1701.0</td>
      <td>77</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>5357</th>
      <td>93</td>
      <td>Seine-Saint-Denis</td>
      <td>1215.0</td>
      <td>75</td>
      <td>1</td>
      <td>0</td>
    </tr>
    <tr>
      <th>3191</th>
      <td>55</td>
      <td>Meuse</td>
      <td>142.0</td>
      <td>74</td>
      <td>2</td>
      <td>0</td>
    </tr>
    <tr>
      <th>5243</th>
      <td>91</td>
      <td>Essonne</td>
      <td>947.0</td>
      <td>72</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>3875</th>
      <td>67</td>
      <td>Bas-Rhin</td>
      <td>747.0</td>
      <td>65</td>
      <td>1</td>
      <td>0</td>
    </tr>
    <tr>
      <th>5471</th>
      <td>95</td>
      <td>Val-d'Oise</td>
      <td>751.0</td>
      <td>61</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>3305</th>
      <td>57</td>
      <td>Moselle</td>
      <td>635.0</td>
      <td>60</td>
      <td>2</td>
      <td>0</td>
    </tr>
    <tr>
      <th>626</th>
      <td>11</td>
      <td>Aude</td>
      <td>23.0</td>
      <td>6</td>
      <td>10</td>
      <td>1</td>
    </tr>
  </tbody>
</table>
</div>



#### Commentaires sur la situation des départements à la sortie du confinement (14 mai 2020) :

Les 11 premiers départements ci-dessus dont le nombre d'hospitalisation est le plus élevé ont une tendance à la baisse car les entrées sont faibles : cf. l'exemple qui suit sur le Val de Marne.

Le département de l'Aude a un nombre peu élevé d'hospitalisation mais le nombre d'entrée qui repart à la hausse amène à la vigilance : cf. l'exemple qui suit.

De plus il exsite de nombreux départements (VERT) qui ont été relativement peu touchés (10 fois moins).

### Evolution des entrées en hospitalisation par département

#### Courbe d'évolution pendant le confinement


![png](Evolution_confinement_files/Evolution_confinement_21_0.png)


#### Commentaires sur la propagation du virus en fin de confinement
2 phases dans l'évolution de la circulation pendant le confinement :
- jusqu'au 25 mars, tous les départements ont eu une augmentation significative des entrées (20 entrées pour 100 hospitalisaions) :
    - cela traduit une accélération de la circulation du virus,
    - et justifie à posteriori le passage en confinement pour la france entière,
- à partir du 15 avril, le nombre d'entrée a fortement baissé par rapport aux nombres d'hospitalisation (< 5  entrées pour 100 hospitalisations)
    - cela traduit une décroissance de la circulation du virus (4 fois moins par rapport au pic),
    - et donc montre l'impact significatif d'un confinement.

### Exemples d'évolution des hospitalisations pour les départements critiques

#### Val-de-Marne : les hospitalisations sont élevée mais la tendance est à la baisse
c'est un exemple de département dont :
- le nombre d'hospitalisation est certes élevé (BLEU sur le 1er  graphique)
- mais le nombre d'entrée est devenu faible (BLEU sur le 2ème graphique) ce qui se traduit par une tendance à la baisse


![png](Evolution_confinement_files/Evolution_confinement_27_0.png)



![png](Evolution_confinement_files/Evolution_confinement_27_1.png)


#### Département de l'Aude : une augmentation récente des entrées nécessite de la vigilence. 
- le nombre d'entrée repart à la hausse (GRIS sur le 1er graphique)
- cette hausse est élevée par rapport à la tendance des autres département (BLEU sur le 2ème graphique)
- mais le nombre d'hospitalisation est encore relativement faible (BLEU sur le 3e graphique)


![png](Evolution_confinement_files/Evolution_confinement_29_0.png)



![png](Evolution_confinement_files/Evolution_confinement_29_1.png)



![png](Evolution_confinement_files/Evolution_confinement_29_2.png)


## Identification des différentes  évolutions pendant le confinement
L'objectif est de donner une piste de réflexion sur les  critères influençant l'impact du confinement.

### Regroupement des départements par l'analyse des composantes principales
Il s'agit de rechercher quelques courbes caractéristiques de l'évolution des hospitalisations pendant le confinement dont la combinaison permettrait d'expliquer de décrire l'évolution de chaque département.

### Construction du modèle

### Impact des différentes composantes




    Text(0, 0.5, '% impact')




![png](Evolution_confinement_files/Evolution_confinement_36_1.png)


Les deux premières composantes expliquent 98 % de la courbe de l'évolution des hospitalisations de chaque département.
Les composantes suivantes sont négligeables par rapport à ces deux composantes.

### Visualisation des courbes caractéristiques qui décrivent l'évolution par département




    Text(0, 0.5, 'nb hospitalisation / 100 000 habitants')




![png](Evolution_confinement_files/Evolution_confinement_39_1.png)


Le poids de la première composante (courbe bleue) représente le décalage à la hausse ou à la baisse par rapport à l'évolution moyenne des hospitalisations quotidienne (courbe noire).
Cela traduit qu'un département a été  plus ou moins globalement impacté.

La deuxième composante (courbe orange) indique si un département a eu une évolution différente de la moyenne au début ou à la fin de la période :
- si le poids de la composante est positive : il y a eu une forte accélération au début et une forte décélération à la fin (cassure de la courbe plus marquée)
- si le poids de la composante est négative : il y a eu une faible accélération au début et  une faible décélération à la fin (courbe applatie)
- si le poids est nulle : la phase d'accélération au début et de décélération se rapprochent de la tendance moyenne.

### Classification des départements en fonction de la forme de l'évolution des hospitalisations

#### Poids de chaque composante par départements


![png](Evolution_confinement_files/Evolution_confinement_43_0.png)


#### Interprétation des différentes catégories : 
- en haute à droite : département fortement impacté avec une baisse relativement plus significative en fin de période (Haut-Rhin / courbe orange ci-dessous)
- en bas à droite : département fortement impacté et dont la tendance s'est relativement peu améliorée (Val-de-Marne / courbe rouge ci-dessous)
- à droite de la France : département moyennement impacté (Rhône / courbe violette)
- à gauche de la France: département peu impacté (Puy-de-Dôme / courbe bleue)
- à gauche de la France et en dessous : département dont la tendance se dégrade  (Indre / courbe rose)
- à gauche de la France et au dessus : département dont le confinement a fortement ralenti la progression (Pyrénées Orientales / courbe verte)

#### Illustration des différentes catégories


![png](Evolution_confinement_files/Evolution_confinement_46_0.png)


#### Piste de réflexion pour la suite
Alors que la situation hospitalière est proche en début de confinement (à l'exception du Haut-Rhin), cette comparaison met en évidence que malgré les règles uniformes et strictes du confinement, l'évolution des hospitalisations n'a pas été identique dans tous les départements.

La recherche des causes de cette différence est une piste pour mieux comprendre comment le confinement impacte la circulation du virus et l'évolution des hospitalisations.

## Sauvegarde des fichiers

### Sous Markdown

    [NbConvertApp] Converting notebook Evolution_confinement.ipynb to markdown
    [NbConvertApp] Support files will be in Evolution_confinement_files\
    [NbConvertApp] Making directory Evolution_confinement_files
    [NbConvertApp] Making directory Evolution_confinement_files
    [NbConvertApp] Making directory Evolution_confinement_files
    [NbConvertApp] Making directory Evolution_confinement_files
    [NbConvertApp] Making directory Evolution_confinement_files
    [NbConvertApp] Making directory Evolution_confinement_files
    [NbConvertApp] Making directory Evolution_confinement_files
    [NbConvertApp] Making directory Evolution_confinement_files
    [NbConvertApp] Making directory Evolution_confinement_files
    [NbConvertApp] Making directory Evolution_confinement_files
    [NbConvertApp] Making directory Evolution_confinement_files
    [NbConvertApp] Writing 11975 bytes to Evolution_confinement.md
    

### Sous HTML

    [NbConvertApp] Converting notebook Evolution_confinement.ipynb to html
    [NbConvertApp] Writing 2525722 bytes to Evolution_confinement.html
    

## Annexe

### Interface pour visualiser un département


    interactive(children=(Dropdown(description='dep', options=('Ain', 'Aisne', 'Allier', 'Alpes-de-Haute-Provence'…





    <function __main__.donnees_departement(dep)>


