
# Progression du COVID19 pendant la phase de confinement en France

## Données utilisées
- nb hospitalisation, retour à domicile et décès quotidien sur le COVID19 sur le site data.gouv.fr
- nb habitant par département

## Traitement des données

### Mise en forme des données
- analyse de la population globale sans disctinction de sexe
- calcul pour la France entière

### Calcul des indicateurs : entrées, sorties, nb entree/hosp, tendance
- entrées en hospitalisation
- sorties en hospitalisation : guérison et décès
- rapport des entrées sur le nombre d'hospitalisation (pour 100 000 habitants)
- lissage de ce rapport sur 1 semaine pour améliorer la lisibilité
- calcul de la tendance de ce rapport sur 2 semaines (pente)

     departement :  999

### Classification des départements
- par nombre d'hospitalisation (ramené à 100 000 habitant)
- par nombre d'entrées (ramené à 100 hospitalisation)

## Visualisation des résultats

###  Evolutions des hospitalisations par département
- en ROUGE, les départements où le virus se propage car le nombre d'hospitalisation et d'entrée sont elevés 
- en ORANGE, les départements pour lesquels il faut être vigilant car :
     - soit le virus se propage peu (peu d'entrée) mais le nombre d'hospitalisation est encore élevé
     - soit le nombre d'hospitalisation est dans la moyenne mais le virus se propage (beaucoup d'entrée)
 - en GRIS, les départements avec une évolution proche de la moyenne nationale (en NOIR)
 - en VERT, les département avec une évolution plus faible que la moyenne.


![png](Evolution_confinement_files/Evolution_confinement_12_0.png)


### Tableau détaillé des départements critiques
- hosp : nombre d'hospitalisation du département (dep)
- Thosp : nombre d'hospitalisation pour 100 000 habitants
- Treprodmoy : nombre d'entrée moyenné sur 1 semaine pour 100 hospitalisation
- tendance  : augmentation/baisse quotidienne du nombre d'entrée pour 100 hospitalisation




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
      <th>tendance</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>4939</th>
      <td>94</td>
      <td>Val-de-Marne</td>
      <td>1606.0</td>
      <td>115</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>4835</th>
      <td>92</td>
      <td>Hauts-de-Seine</td>
      <td>1557.0</td>
      <td>96</td>
      <td>1</td>
      <td>0</td>
      <td>-5</td>
    </tr>
    <tr>
      <th>4887</th>
      <td>93</td>
      <td>Seine-Saint-Denis</td>
      <td>1367.0</td>
      <td>84</td>
      <td>1</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>3951</th>
      <td>75</td>
      <td>Paris</td>
      <td>1819.0</td>
      <td>83</td>
      <td>0</td>
      <td>0</td>
      <td>-6</td>
    </tr>
    <tr>
      <th>2911</th>
      <td>55</td>
      <td>Meuse</td>
      <td>146.0</td>
      <td>76</td>
      <td>2</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>4783</th>
      <td>91</td>
      <td>Essonne</td>
      <td>964.0</td>
      <td>74</td>
      <td>1</td>
      <td>0</td>
      <td>-4</td>
    </tr>
    <tr>
      <th>3535</th>
      <td>67</td>
      <td>Bas-Rhin</td>
      <td>765.0</td>
      <td>67</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>4991</th>
      <td>95</td>
      <td>Val-d'Oise</td>
      <td>813.0</td>
      <td>66</td>
      <td>1</td>
      <td>0</td>
      <td>-2</td>
    </tr>
    <tr>
      <th>2755</th>
      <td>52</td>
      <td>Haute-Marne</td>
      <td>90.0</td>
      <td>50</td>
      <td>8</td>
      <td>1</td>
      <td>13</td>
    </tr>
  </tbody>
</table>
</div>



### Commentaires à la date du 7 mai 2020 :

Les départements critiques sont :
- les 8 premiers départements ci-dessus dont le taux d'hospitalisation est élevé mais avec une tendance à la baisse.
- la Haute-Marne dont les entrées sont repartis à la hausse (ORANGE GRAS sur la courbe ci-dessus)

De plus il exsite de nombreux départements (VERT) qui ont été relativement peu touchés (10 fois moins).

### Evolution des entrées en hospitalisation par département


![png](Evolution_confinement_files/Evolution_confinement_18_0.png)


### Commentaires
2 phases dans l'évolution :
- jusqu'au 25 mars, tous les départements ont eu une augmentation significative des entrées :
    - cela traduit une accélération de la circulation du virus,
    - et justifie à posteriori le passage en confinement pour la france entière,
- à partir du 15 avril, le nombre d'entrée a globalement fortement baissé par rapport aux nombres d'hospitalisation
    - cela traduit une capacité du virus à beaucoup moins se transmettre (8 fois moins d'entrée),
    - ce qui montre l'impact significatif d'un confinement.

### Evolution des hospitalisations pour la France entière


![png](Evolution_confinement_files/Evolution_confinement_21_0.png)


### Evolution des hospitalisations sur quelques départements


    interactive(children=(Dropdown(description='dep', options=('Ain', 'Aisne', 'Allier', 'Alpes-de-Haute-Provence'…


#### Département de la Seine-Saint-Denis : les hospitalisations sont élevée mais la tendance est à la baisse
c'est un exemple de département dont :
- le nombre d'hospitalisation est certes élevé (BLEUE sur le deuxième graphique)
- mais le nombre d'entrée est devenu faible (GRIS sur le 1er graphique) ce qui se traduit par une tendance à la baisse (BLEU sur le 1er graphique)

#### Département de la Haute-Marne : les entrées repartent à la hausse
- le nombre d'entrée repart à la hausse (GRIS/BLEU sur le 1er graphique)
- Cette hausse est élevée par rapport à la tendance des autres département (BLEU 3e graphique)
- mais le nombre d'hospitalisation est encore dans la tendance moyenne (BLEU 2e graphique)

## Sauvegarde des fichiers

### Sous Markdown

### Sous HTML

## Fin
