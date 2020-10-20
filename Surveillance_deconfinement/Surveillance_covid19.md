
    
    

# Surveillance du COVID-19 en France

Bonjour,

L'objectif est de calculer les indicateurs et les modèles qui permettent de suivre l'évolution de l'épidémie de Covid-19 en France :
- les chapites I,II et III présentent les données utilisées et les principes des calculs.
- les chapitres IV et V (bilan) décrivent l'évolution de l'épidémie par département.

Une mise à jour bi-mensuelle est réalisée à partir des nouvelles données hospitalières et de tests de dépistage.

## I. Origine des données
- nombre quotidien d'hospitalisation, retour à domicile et décès par département (site data.gouv.fr)
- résultat quotidien des tests de dépistage virologiques par département (site data.gouv.fr)
- nombre d'habitant par département

## II. Construction des indicateurs

    Calcul mis à jour le 2020-10-14
    

### Calcul des indicateurs par département
- taux d'hospitalisation (Thosp) : nombre d'hospitalisation pour 100 000 habitants
- taux d'entrée à l'hôpital (Treprod) : nombre d'entrée quotidienne pour 100 hospitalisations
- taux d'entrée à l'hôpital lissé (Treprodmoy) : moyenne sur 3 jours

                                                                           
    

### Classification quotidienne des départements

    
    

    Catégories pour le taux d'hospitalisation (pour 100 000 hab.) :
    très bas <  14  < bas <  34  < moyen <  62  < élevé <  104  < très élevé
    
    Catégories pour le taux d'entrée à l'hôpital (pour 100 hosp.)
    bas <  6  < élevé <  16  < très élevé 
    

### Calcul d'une alerte sur le taux d'entrée à l'hôpital
Les conditions :
- le taux d'hospitalisation n'est pas très bas (> 14 hosp. / 100 000 hab.)
- le taux d'entrée à l'hôpital est élevé (> 6 entrées / 100 hosp.)

ou
- le taux d'hospitalisation est très bas (< 14 hosp. / 100 000 hab.)
- le taux d'entrée à l'hôpital est très élevé (> 16 entrées / 100 hosp)

Cette alerte détecte une hausse significative des hospitalisations (cf. IV.B.1).

                                                                                        

### III. Relation entre les entrées à l'hôpital et les résultats des tests virologiques.

### Modélisation à partir d'une régression logistique PLS

Le modèle établit la relation entre les entrées à l'hôpital et les tests positifs pour :
- anticiper une hausse des entrées à l'hôpital,
- vérifier que les entrées à l'hôpital sont accompagnées de tests de dépistage.

La relation a été établie pendant la phase 1 et 2 du déconfinement (jusqu'au 15 juin) où les tests de dépistage sont mis en place.

**Les données explicatives** sont les taux de test positif (/ 100 000 hab.) sur les 10 derniers jours précédent l'alerte.

**Les données à prédire** sont une hausse significative des hospitalisation (alerte lorsque les entrées quotidiennes dépassent  6 entrées pour 100 hospitalisations)).

    
    

    
    

    
    

    
    


### Interprétation du modèle

La modélisation montre que les alertes sur le taux d'entrée à l'hôpital sont liées à 3 facteurs : 
- la moyenne du taux de tests positifs sur les 10 derniers jours,
- la pente pendant ces 10 jours,
- l'allure exponentielle de la croissance.


    
    

    
    

    
    

    
    

    
    

    
    

    
    
    
    

    
    

    
    

### Précision du modèle
Nous constatons que :
- Les alertes sur le taux d'entrée à l'hôpital sont en lien avec les tests positifs sur les 10 derniers jours.
- Lorsque le modèle n'explique par ces alertes, les tests de depistage ont été insuffisants.
- Lorsque le modèle propose des alertes basées sur les tests positifs sans une hausse des entrées hospitalières, celles-ci anticipent une évolution à la hausse.

Ce modèle permet donc d'anticiper une éventuelle accélération de la circulation du virus dans un département.


## IV. Surveillance des hospitalisations et des tests de dépistage

### A.1 - Taux d'hospitalisation
##### Description :
Le taux d'hospitalisation traduit l'importance de l'épidémie dans un département car il représente la proportion de cas grave en cours d'hospitalisation.


![png](Surveillance_covid19_files/Surveillance_covid19_59_0.png)


##### Commentaires :
A l'exception de la Guadeloupe, les départements  ont un taux d'hospitalisation qui reste bas par rapport au pic de l'épidémie de début avril,
- soit le nombre de tests positifs  (JAUNE) est élevé,
- soit le nombre d'entrées à l'hôpital (ROSE) est en augmentation.

Cette reprise globale à la hausse  est analysée par la suite.

### A.2 - Taux d'hospitalisation les plus élevés


![png](Surveillance_covid19_files/Surveillance_covid19_62_0.png)


##### Commentaires : 
Depuis 1 mois, la Guadeloupe a une hausse significative des hospitalisations, équivalente à celle de la moyenne nationale de début Avril.

### B.1 - Taux d'entrée à l'hôpital
##### Description :
Le taux d'entrée à l'hôpital traduit la dynamique de l'épidémie dans un département.

En effet, le nombre d'hospitalisation est proportionnel (décalé dans le temps) au nombre de contamination et les entrées à l'hôpital au nombre de nouveaux cas.
Plus le rapport entre les entrées à l'hôpital et les hospitalisations est élevé, plus le rapport équivalent entre les nouveaux cas et les contaminations est élevé et donc  plus importante est la transmission du virus.


![png](Surveillance_covid19_files/Surveillance_covid19_65_0.png)


##### Commentaires :
La comparaison du taux d'entrée à l'hôpital et l'évolution du taux d'hospitalisation (cf. A.1) montre que : 
- le taux d'entrée atteint 20 % au pic de l'épidémie (**limite Rouge**),
- il s'approche des 10 % lorsque l'épidémie à une tendance incertaine (reprise ou ralentissement) (**limite Rose**),
- il est inférieur à 5 % lorsque la vitesse de circulation du virus est faible.

Depuis le déconfinement (mai) et jusqu'à fin juillet, quelques départements ont ponctuellement un taux qui augmente.

Depuis mi-aout, la plupart des départements ont un taux d'entrée qui s'approche des 10 %, ce qui indique une reprise plus ou moins marquée de l'épidémie.

### B-2 - Alerte sur les entrées à l'hôpital
##### Description :
Le graphique de **gauche** permet de suivre **l'évolution hospitalière** d'un département :
- taux d'hospitalisation (BLEU) pour le département / (NOIR EPAIS) pour la France,
- taux d'entrée à l'hôpital (GRIS EPAIS) pour le département / (NOIR FIN) pour la France,
- le trait ROSE est la limite du taux d'entrée où l'épidémie s'accélère.

Le graphique de **droite** permet de suivre les **résultats des tests de dépistage** :
- nombre d'entrée à l'hôpital du département (BLEU) et de la France (NOIR EPAIS) pour 100 000 habitants,
- nombre tests positifs du département (GRIS) et de la la France (NOIR FIN) pour 100 000 habitants.

Les **POINTS ROUGES** représentent les jours où le modèle génère une alerte à partir des tests positifs.

Pour faciliter l'analyse, les départements ont été regroupés en différentes catégories selon la tendance observée.

    Alerte
    
    Departement           Hosp | Treprod | Entree | Hebdo |   S-1 |      Evolution       | +1 mois  | R2   | DW  |    Alerte   
    
    Loire                35 %  |    12 % |   3.5  |  43 % |  62 % |        hausse        | > 15.7   | 0.92 | 0.7 |             
    Rhône                28 %  |    11 % |   2.5  |  19 % |  64 % |        hausse        |  > 5.0   | 0.67 | 0.3 |             
    Guadeloupe           47 %  |     6 % |   2.8  | -25 % | -38 % |        baisse        |    0.8   | 0.92 | 0.9 |             
    Bouches-du-Rhône     28 %  |    10 % |   2.7  |   0 % |   9 % |        stable        |    2.7   | 0.0  | 0.7 |             
    Saône-et-Loire       15 %  |    19 % |   1.9  |  39 % | 208 % |        hausse        |          | 0.51 | 0.2 |      Recente
    Vaucluse             21 %  |    13 % |   1.9  |  17 % | 164 % |        hausse        |  > 3.1   | 0.16 | 0.2 |             
    Paris                27 %  |     9 % |   2.2  |  17 % |  21 % |        hausse        |    4.6   | 0.91 | 1.2 |             
    Cantal               27 %  |    11 % |   2.2  |  86 % | -16 % |  hausse_stabilisee   |          | 0.73 | 0.7 |             
    Val-de-Marne         28 %  |     8 % |   2.4  |  16 % |   6 % |        hausse        |    4.4   | 0.87 | 1.2 |             
    Nord                 21 %  |    13 % |   2.2  |  44 % |  47 % |        hausse        |   10.7   | 0.95 | 0.5 |             
    Seine-Saint-Denis    29 %  |     7 % |   2.1  |  10 % |  16 % |        stable        |    3.3   | 0.73 | 1.8 |             
    Allier               15 %  |    22 % |   1.9  |  70 % | 145 % |        hausse        | > 16.8   | 0.74 | 0.5 |             
    Hauts-de-Seine       26 %  |     9 % |   2.0  |  16 % |  12 % |        hausse        |    4.3   | 0.91 | 1.0 |             
    Isère                17 %  |    14 % |   1.8  |  36 % |  54 % |        hausse        |          | 0.8  | 0.6 |      Recente
    Hautes-Alpes         21 %  |    11 % |   1.8  |  41 % |  84 % |        hausse        |  > 8.8   | 0.77 | 1.8 |             
    Val-d'Oise           16 %  |    10 % |   1.5  |   7 % |  62 % |     debut_hausse     |          | 0.21 | 0.6 |             
    Seine-Maritime       17 %  |    11 % |   1.5  |  25 % |  28 % |        hausse        |    4.0   | 0.68 | 0.7 |      Recente
    Hérault              15 %  |    13 % |   1.7  |  51 % |  10 % |  hausse_stabilisee   |          | 0.9  | 0.9 |      Recente
    Tarn                 16 %  |    11 % |   1.5  |  21 % |  81 % |        hausse        |          | 0.38 | 0.5 |      Recente
    Essonne              17 %  |    10 % |   1.6  |  16 % |  40 % |        hausse        |  > 2.8   | 0.58 | 0.8 |             
    Ardèche               8 %  |    21 % |   1.0  | 129 % | 380 % |        hausse        |          | 0.81 | 0.8 |      Recente
    Haute-Loire           8 %  |    18 % |   1.3  |  97 % |  -5 % |  hausse_stabilisee   |          | 0.84 | 0.7 |      Recente
    Gers                 11 %  |    16 % |   1.2  |  92 % | 233 % |        hausse        |          | 0.86 | 0.8 |      Recente
    Jura                  7 %  |    18 % |   0.8  |  74 % | 107 % |        hausse        |          | 0.6  | 0.6 |      Recente
    Yvelines             18 %  |     7 % |   1.3  |  23 % |   4 % |  hausse_stabilisee   |          | 0.83 | 0.4 |             
    Landes               10 %  |    16 % |   1.2  | 110 % |  53 % |        hausse        | < 30.0   | 0.96 | 1.3 |             
    Yonne                 7 %  |    18 % |   1.0  |  46 % | 126 % |        hausse        |          | 0.84 | 1.3 |      Recente
    Martinique           15 %  |     8 % |   1.0  |  23 % |  -9 % |  hausse_stabilisee   |          | 0.55 | 1.0 |      Recente
    Haute-Savoie          6 %  |    16 % |   0.7  |  50 % | 105 % |        hausse        |          | 0.77 | 0.4 |      Recente
    Oise                 14 %  |     6 % |   0.8  |  14 % |  10 % |        stable        |    1.3   | 0.14 | 0.4 |      Recente
    Vendée                3 %  |    18 % |   0.3  |  19 % | 320 % |        hausse        |          | 0.2  | 0.5 |      Recente
    

    Taux d'hospitalisation moyen ou élevé
    
    Departement           Hosp | Treprod | Entree | Hebdo |   S-1 |      Evolution       | +1 mois  | R2   | DW  |    Alerte   
    
    Loire                35 %  |    12 % |   3.5  |  43 % |  62 % |        hausse        | > 15.7   | 0.92 | 0.7 |             
    Guadeloupe           47 %  |     6 % |   2.8  | -25 % | -38 % |        baisse        |    0.8   | 0.92 | 0.9 |             
    


![png](Surveillance_covid19_files/Surveillance_covid19_71_1.png)


    Augmentation régulière des entrées hospitalières
    
    Departement           Hosp | Treprod | Entree | Hebdo |   S-1 |      Evolution       | +1 mois  | R2   | DW  |    Alerte   
    
    Paris                27 %  |     9 % |   2.2  |  17 % |  21 % |        hausse        |    4.6   | 0.91 | 1.2 |             
    Val-de-Marne         28 %  |     8 % |   2.4  |  16 % |   6 % |        hausse        |    4.4   | 0.87 | 1.2 |             
    Nord                 21 %  |    13 % |   2.2  |  44 % |  47 % |        hausse        |   10.7   | 0.95 | 0.5 |             
    Hauts-de-Seine       26 %  |     9 % |   2.0  |  16 % |  12 % |        hausse        |    4.3   | 0.91 | 1.0 |             
    


![png](Surveillance_covid19_files/Surveillance_covid19_72_1.png)


    Augmentation irrégulière des entrées hospitalières
    
    Departement           Hosp | Treprod | Entree | Hebdo |   S-1 |      Evolution       | +1 mois  | R2   | DW  |    Alerte   
    
    Rhône                28 %  |    11 % |   2.5  |  19 % |  64 % |        hausse        |  > 5.0   | 0.67 | 0.3 |             
    Vaucluse             21 %  |    13 % |   1.9  |  17 % | 164 % |        hausse        |  > 3.1   | 0.16 | 0.2 |             
    Allier               15 %  |    22 % |   1.9  |  70 % | 145 % |        hausse        | > 16.8   | 0.74 | 0.5 |             
    Hautes-Alpes         21 %  |    11 % |   1.8  |  41 % |  84 % |        hausse        |  > 8.8   | 0.77 | 1.8 |             
    Essonne              17 %  |    10 % |   1.6  |  16 % |  40 % |        hausse        |  > 2.8   | 0.58 | 0.8 |             
    


![png](Surveillance_covid19_files/Surveillance_covid19_73_1.png)


    Reprise de la hausse des entrées hospitalières
    
    Departement           Hosp | Treprod | Entree | Hebdo |   S-1 |      Evolution       | +1 mois  | R2   | DW  |    Alerte   
    
    Val-d'Oise           16 %  |    10 % |   1.5  |   7 % |  62 % |     debut_hausse     |          | 0.21 | 0.6 |             
    


![png](Surveillance_covid19_files/Surveillance_covid19_74_1.png)


    Stabilisation des entrées hospitalières
    
    Departement           Hosp | Treprod | Entree | Hebdo |   S-1 |      Evolution       | +1 mois  | R2   | DW  |    Alerte   
    
    Bouches-du-Rhône     28 %  |    10 % |   2.7  |   0 % |   9 % |        stable        |    2.7   | 0.0  | 0.7 |             
    Seine-Saint-Denis    29 %  |     7 % |   2.1  |  10 % |  16 % |        stable        |    3.3   | 0.73 | 1.8 |             
    


![png](Surveillance_covid19_files/Surveillance_covid19_75_1.png)


    Début de baisse des entrées hospitalières
    
    Departement           Hosp | Treprod | Entree | Hebdo |   S-1 |      Evolution       | +1 mois  | R2   | DW  |    Alerte   
    
    RAS
    

    Baisse légère des entrées hospitalières
    
    Departement           Hosp | Treprod | Entree | Hebdo |   S-1 |      Evolution       | +1 mois  | R2   | DW  |    Alerte   
    
    RAS
    

    Baisse des entrées hospitalières
    
    Departement           Hosp | Treprod | Entree | Hebdo |   S-1 |      Evolution       | +1 mois  | R2   | DW  |    Alerte   
    
    RAS
    

##### Commentaires :

Les **Hauts-de-Seine** et **Paris** ont un taux d'hospitalisation bas (bleu à gauche) mais une tendance régulière à la hausse des entrées hospitalières (bleu à droite) depuis plusieurs semaines.

L'extrapolation des courbes sur 1 mois indique que le niveau d'entrée à l'hôpital (< 3 entrées pour 100 000 hab.) n'atteindra pas le niveau du pic d'Avril (environs 4 entrées pour 100 000 hab.).

Sachant que le temps de réaction de mesures strictes (confinement local ou limitation des interactions sociales) est d'environs deux semaines, il est encore possible d'inverser la tendance en améliorant l'efficacité de mesures moins contraignantes (gestes barrières, isolement par tests de dépistage).

##### Commentaires :

En extrapolant la progression régulière et à la hausse des entrées hospitalières de la **Loire**,  le niveau du pic d'Avril est atteint dans 1 mois. Les mesures actuelles doivent inverser la tendance pour éviter des mesures plus strictes.

Le taux d'hospitalisations **des Pyrénées-Atlantiques** (bleu à gauche) a doublé en 1 semaine mais reste à un niveau très bas : une confirmation de cette tendance est nécessaire avant d'envisager des mesures plus strictes.

**Les Bouches-du-Rhône, le Val-de-Marne, le Rhône, la Seine-Saint-Denis et les Yvelines** ont un taux d'hospitalisation encore bas avec une stabilisation des entrées hospitalières (bleu à droite) : une amélioration de l'efficacité des mesures actuelles peut suffire à faire baisser les hospitalisations.

Après une tendance à la baisse depuis plusieurs semaines, **La Guyane** a eu une hausse récente mais très ponctuelle des entrées hospitalières (bleu à droite). Les prochaines semaines permettront de s'assurer que la tendance à la baisse se poursuit.

Après une hausse de 5 semaines, les entrées hospitalières **du Vaucluse**  sont à la baisse depuis 10 jours.

    Alerte récente des entrées hospitalières avec taux d'hospitalisation bas
    
    Departement           Hosp | Treprod | Entree | Hebdo |   S-1 |      Evolution       | +1 mois  | R2   | DW  |    Alerte   
    
    Saône-et-Loire       15 %  |    19 % |   1.9  |  39 % | 208 % |        hausse        |          | 0.51 | 0.2 |      Recente
    Isère                17 %  |    14 % |   1.8  |  36 % |  54 % |        hausse        |          | 0.8  | 0.6 |      Recente
    Seine-Maritime       17 %  |    11 % |   1.5  |  25 % |  28 % |        hausse        |    4.0   | 0.68 | 0.7 |      Recente
    Hérault              15 %  |    13 % |   1.7  |  51 % |  10 % |  hausse_stabilisee   |          | 0.9  | 0.9 |      Recente
    Tarn                 16 %  |    11 % |   1.5  |  21 % |  81 % |        hausse        |          | 0.38 | 0.5 |      Recente
    Martinique           15 %  |     8 % |   1.0  |  23 % |  -9 % |  hausse_stabilisee   |          | 0.55 | 1.0 |      Recente
    Oise                 14 %  |     6 % |   0.8  |  14 % |  10 % |        stable        |    1.3   | 0.14 | 0.4 |      Recente
    


![png](Surveillance_covid19_files/Surveillance_covid19_82_1.png)


    Alerte récente des entrées hospitalières avec taux d'hospitalisation très bas
    
    Departement           Hosp | Treprod | Entree | Hebdo |   S-1 |      Evolution       | +1 mois  | R2   | DW  |    Alerte   
    
    Ardèche               8 %  |    21 % |   1.0  | 129 % | 380 % |        hausse        |          | 0.81 | 0.8 |      Recente
    Haute-Loire           8 %  |    18 % |   1.3  |  97 % |  -5 % |  hausse_stabilisee   |          | 0.84 | 0.7 |      Recente
    Gers                 11 %  |    16 % |   1.2  |  92 % | 233 % |        hausse        |          | 0.86 | 0.8 |      Recente
    Jura                  7 %  |    18 % |   0.8  |  74 % | 107 % |        hausse        |          | 0.6  | 0.6 |      Recente
    Yonne                 7 %  |    18 % |   1.0  |  46 % | 126 % |        hausse        |          | 0.84 | 1.3 |      Recente
    Haute-Savoie          6 %  |    16 % |   0.7  |  50 % | 105 % |        hausse        |          | 0.77 | 0.4 |      Recente
    Vendée                3 %  |    18 % |   0.3  |  19 % | 320 % |        hausse        |          | 0.2  | 0.5 |      Recente
    


![png](Surveillance_covid19_files/Surveillance_covid19_83_1.png)


##### Commentaires :

Le taux d'hospitalisation de **l'Essonne** repart à la hausse mais reste très bas et la progression des entrées hospitalières est quasi-stable. 

**Les Hautes-Alpes** et **l'Orne** ont une augmentation récente des entrées hospitalières avec une niveau très bas d'hospitalisation.

**Le Val-d'Oise** a une tendance incertaines avec :
- un niveau d'hospitalisation encore très bas qui augmente légèrement,
- et des entrées hospitalièress qui baissent légèrement.


La tendance à la hausse de ces départements est donc récente et n'est pas critique actuellement.

### B-3 - Alerte sur les entrées à l'hôpital sans tests de dépistage massif
##### Description :
L'objectif est de vérifier que les départements dont les taux d'entrée à l'hôpital sont élevés pratiquent des tests massifs de dépistage.

    RAS
    

##### Commentaires :

Contrairement au début du déconfinement où des entrées élevées à l'hôpital ne se traduisaient pas systématiquement par une hausse des tests positifs, les tests de dépistage sont généralisés à l'ensemble des départements.

### C.1 - Taux de tests virologiques positifs

#### Description :

Il s'agit de surveiller l'évolution du taux de tests virologiques positifs pour identifier une éventuelle reprise de l'épidémie.


![png](Surveillance_covid19_files/Surveillance_covid19_89_0.png)


#### Commentaires :
Depuis de 2 mois, la moyenne nationale (NOIR) a un nombre de tests positifs supérieur au seuil d'alerte (pointillé rouge) calculé au  début du déconfinement (début mai). 

Cette hausse se traduit de plus en plus par une hausse élevée des entrées à l'hôpital.
Mais l'exemple de la Mayenne (courbe jaune élevée mi juillet) montre qu'une hausse très importante des tests positifs ne génère pas systématiquement une hausse des entrées à l'hôpital si des mesures sont mises place.

C'est pourquoi actuellement, il est difficile d'utiliser cette indicateur comme une anticipation de l'évolution des cas graves mais plus comme une alerte incitant à suivre en détail la tendance d'un département.

    
    

    
    

## V. Bilan sur la circulation du virus au 5 octobre 2020


![png](Surveillance_covid19_files/Surveillance_covid19_95_0.png)


La hausse généralisée depuis mi-juillet des tests virologiques positifs ne se traduit pas systématiquement par une augmentation aussi élevée des hospitalisations (c'est-à-dire des cas graves). Il est donc nécessaire d'analyser chaque département pour décider des mesures à appliquer.

Les mesures strictes de **la Guadeloupe** doivent être maintenues pour ralentir l'épidémie.

**Les Hauts-de-Seine, Paris, la Loire, les Bouches-du-Rhône, le Val-de-Marne, le Rhône, la Seine-Saint-Denis et les Yvelines** nécessitent une plus grande efficacité des mesures actuelles (geste barrières ou isolement à partir d'un dépistage massif) pour éviter des mesures complémentaires plus strictes (reconfinement local ou limitation des interactions sociales).

La progression récente **des Pyrénées-Atlantiques, de l'Essonne, les Hautes-Alpes, l'Orne et le Val-d'Oise** est à confirmer avant de statuer sur des mesures complémentaires.

Les tendances de **la Guyane** et du **Vaucluse** sont à la baisse depuis plusieurs semaines.

    Merci pour votre attention.
    


    interactive(children=(Dropdown(description='DEPcible', index=102, options=('Tous', 'Ain', 'Aisne', 'Allier', '…





    <function __main__.croissance_exp(DEPcible)>




    interactive(children=(Dropdown(description='departement', index=63, options=('Ain', 'Aisne', 'Allier', 'Alpes-…





    <function __main__.Synthese_departement(departement)>


