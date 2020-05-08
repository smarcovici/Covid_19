
# Analyse de la progression du COVID19 en France

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
- en ROUGE, les départements les plus critiques  selon les critères : 
    - nb d'hospitalisation important
    - avec un nb d'entrées important ou une tendance à la hausse
 - en ORANGE, les départements pour lesquels il faut être vigilant avec l'un des criètres :
     - nb d'hospitalisation important avec un faible nb d'entrées et une tendance à la baisse
     - ou nb d'entrées important
 - en GRIS, les départements prochent de la tendance moyenne de la France (NOIR)
 - en VERT, les département avec une faible circulation.


![png](Evolution_confinement_files/Evolution_confinement_12_0.png)


### Tableau détaillé des départements critiques
- hosp : nb d'hospitalisation
- Thosp : nb d'hospitalisation ramené à 100 000 habitants
- Treprodmoy : nb d'entrées moyen sur 1 semaine ramené à 100 hospitalisation
- tendance  : augmentation ou baisse quotidienne du nb d'entrées ramené à 100 hospitalisation




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
      <th>4844</th>
      <td>94</td>
      <td>Val-de-Marne</td>
      <td>1623.0</td>
      <td>116</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>4742</th>
      <td>92</td>
      <td>Hauts-de-Seine</td>
      <td>1603.0</td>
      <td>99</td>
      <td>1</td>
      <td>0</td>
      <td>-6</td>
    </tr>
    <tr>
      <th>4793</th>
      <td>93</td>
      <td>Seine-Saint-Denis</td>
      <td>1379.0</td>
      <td>85</td>
      <td>2</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>3875</th>
      <td>75</td>
      <td>Paris</td>
      <td>1863.0</td>
      <td>84</td>
      <td>0</td>
      <td>0</td>
      <td>-3</td>
    </tr>
    <tr>
      <th>2855</th>
      <td>55</td>
      <td>Meuse</td>
      <td>143.0</td>
      <td>74</td>
      <td>2</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>4691</th>
      <td>91</td>
      <td>Essonne</td>
      <td>966.0</td>
      <td>74</td>
      <td>1</td>
      <td>0</td>
      <td>-8</td>
    </tr>
    <tr>
      <th>3467</th>
      <td>67</td>
      <td>Bas-Rhin</td>
      <td>786.0</td>
      <td>69</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>4895</th>
      <td>95</td>
      <td>Val-d'Oise</td>
      <td>818.0</td>
      <td>66</td>
      <td>1</td>
      <td>0</td>
      <td>-5</td>
    </tr>
    <tr>
      <th>2702</th>
      <td>52</td>
      <td>Haute-Marne</td>
      <td>91.0</td>
      <td>50</td>
      <td>8</td>
      <td>1</td>
      <td>16</td>
    </tr>
  </tbody>
</table>
</div>



### Commentaires à la date du :

Les départements critiques sont :
- la Seine Saint-denis avec
    - une forte hospitalisation
    - et une tendance qui diminue trop lentement
- la Haute-Marne avec une tendance qui repart à la hausse

### Evolution des entrées en hospitalisation par département


![png](Evolution_confinement_files/Evolution_confinement_19_0.png)


### Commentaires
2 phases dans l'évolution :
- avant fin mars : tous les départements ont eu un nombre élevé d'entrée par rapport aux hospitalisations
ce qui traduit une accélération de la circulation du virus
- après mi-avril : le nombre d'entrée a fortement baissé par rapport aux nombres d'hospitalisation
ce qui traduit une décélération de la circulation du virus

### Evolution pour la France entière des entrées et hospitalisations


![png](Evolution_confinement_files/Evolution_confinement_22_0.png)


### Evolution détaillée pour un département des hospitalisation et des entrées


    interactive(children=(Dropdown(description='dep', options=('Ain', 'Aisne', 'Allier', 'Alpes-de-Haute-Provence'…





    <function __main__.courbes_departement(dep)>




![png](Evolution_confinement_files/Evolution_confinement_25_0.png)



![png](Evolution_confinement_files/Evolution_confinement_25_1.png)



![png](Evolution_confinement_files/Evolution_confinement_25_2.png)


## Enregistrement

### Sous Markdown

    [NbConvertApp] Converting notebook Evolution_confinement.ipynb to markdown
    [NbConvertApp] Support files will be in Evolution_confinement_files\
    [NbConvertApp] Making directory Evolution_confinement_files
    [NbConvertApp] Making directory Evolution_confinement_files
    [NbConvertApp] Making directory Evolution_confinement_files
    [NbConvertApp] Making directory Evolution_confinement_files
    [NbConvertApp] Making directory Evolution_confinement_files
    [NbConvertApp] Making directory Evolution_confinement_files
    [NbConvertApp] Writing 6149 bytes to Evolution_confinement.md
    

### Sous HTML

    [NbConvertApp] Converting notebook Evolution_confinement.ipynb to html
    [NbConvertApp] Writing 1307713 bytes to Evolution_confinement.html
    
