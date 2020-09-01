
# Surveillance du COVID-19 en France

Bonjour,

L'objectif est de calculer les indicateurs et les modèles qui permettent de surveiller l'évolution de l'épidémie de Covid-19 en France :
- les chapites I,II et III présentent les données utilisées et les principes des calculs.
- les chapitres IV et V (bilan) décrivent l'évolution de l'épidémie et identifient les départements à surveiller.

Une mise à jour hebdomadaire est réalisée à partir des nouvelles données hospitalières et de tests de dépistage.

## I. Origine des données
- nombre quotidien d'hospitalisation, retour à domicile et décès par département (site data.gouv.fr)
- résultat quotidien des tests de dépistage virologiques par département (site data.gouv.fr)
- nombre d'habitant par département

## II. Construction des indicateurs

### Calcul des indicateurs par département
- taux d'hospitalisation (Thosp) : nombre d'hospitalisation pour 100 000 habitants
- taux d'entrée à l'hôpital (Treprod) : nombre d'entrée quotidienne pour 100 hospitalisations
- taux d'entrée à l'hôpital lissé (Treprodmoy) : moyenne sur 3 jours

                                                                           lissage entree : Guadeloupe                              
    

### Classification quotidienne des départements

    Catégories pour le taux d'hospitalisation (/ 100 000 hab.) :
    très bas <  14  < bas <  34  < moyen <  62  < élevé <  104  < très élevé
    
    Catégories pour le taux d'entrée à l'hôpital (/ 100 hosp.)
    bas <  6  < élevé <  16  < très élevé 
    

### Calcul d'une alerte sur le taux d'entrée à l'hôpital
Les conditions :
- le taux d'hospitalisation n'est pas bas (> 14 hosp. / 100 000 hab.)
- le taux d'entrée à l'hôpital est élevé (> 6 entrées / 100 hosp.)

ou
- le taux d'hospitalisation est bas (< 14 hosp. / 100 000 hab.)
- le taux d'entrée à l'hôpital est très élevé (> 16 entrées / 100 hosp)

Cette alerte détecte une accélération de l'épidémie (cf. IV.B.1).

                                                                                         

### III. Relation entre les entrées à l'hôpital et les résultats des tests virologiques.

### Modélisation à partir d'une régression logistique PLS

Le modèle établit la relation entre les entrées à l'hôpital et les tests positifs pour :
- anticiper une hausse des entrées à l'hôpital,
- vérifier que les entrées à l'hôpital sont accompagnées de tests de dépistage.

La relation est établie pendant la phase 1 et 2 du déconfinement (jusqu'au 15 juin) où les tests de dépistage sont en place.

**Les données explicatives** sont les taux de test positif (/ 100 000 hab.) sur les 10 derniers jours précédent l'alerte.

**Les données à prédire** sont la présence d'une alerte sur le taux d'entrée à l'hôpital (> 6 entrées / 100 hosp.).

    
    

    
    

    
    

    
    


### Interprétation du modèle

La modélisation montre que les alertes sur le taux d'entrée à l'hôpital sont liées à 3 facteurs : 
- la moyenne du taux de tests positifs sur les 10 derniers jours,
- la pente pendant ces 10 jours,
- l'allure exponentielle de la croissance.


    
    

    
    

    
    

    
    

    
    

    
    

    
    
    
    

    
    

    
    

### Précision du modèle
- Les alertes sur le taux d'entrée à l'hôpital sont en lien avec les tests positifs sur les 10 derniers jours.
- Lorsque le modèle n'explique par ces alertes, les tests de depistage ont été insuffisants.
- Lorsque le modèle propose des alertes basées sur les tests positifs sans une hausse des entrées hospitalières, celles-ci anticipent une évolution à la hausse.

Ce modèle permettra de surveiller l'évolution de la circulation du virus en France à partir du 15 juin.


## IV. Surveillance des hospitalisations et des tests de dépistage

### A.1 - Taux d'hospitalisation
##### Description :
Le taux d'hospitalisation traduit l'importance de l'épidémie dans un département car il représente la proportion de cas grave en cours d'hospitalisation.


![png](Surveillance_deconfinement_2020_08_31_files/Surveillance_deconfinement_2020_08_31_54_0.png)


##### Commentaires :
- La majorité des départements ont des valeurs faibles par rapport au pic de l'épidémie de début avril,
- La plupart des départements (JAUNE) ont un nombre élevé de tests positifs mais un taux d'hospitalisation bas,
- Malgré des entrées encore élevées, la Guyane (ROSE) a un taux d'hospitalisation qui baisse.

### A.2 - Taux d'hospitalisation les plus élevés


![png](Surveillance_deconfinement_2020_08_31_files/Surveillance_deconfinement_2020_08_31_57_0.png)


##### Commentaires : 
Les départements avec des taux d'hospitalisation élevés sont à la baisse avec des valeurs très inférieures au pic de l'épidémie d'Avril.

### B.1 - Taux d'entrée à l'hôpital
##### Description :
Le taux d'entrée à l'hôpital traduit la dynamique de l'épidémie dans un département.

En effet, le nombre d'hospitalisation est proportionnel (décalé dans le temps) au nombre de contamination et les entrées à l'hôpital au nombre de nouveaux cas.
Plus le rapport entre les entrées à l'hôpital et les hospitalisations est élevé, plus le rapport équivalent entre les nouveaux cas et les contaminations est élevé et donc  plus importante est la transmission du virus.


![png](Surveillance_deconfinement_2020_08_31_files/Surveillance_deconfinement_2020_08_31_60_0.png)


##### Commentaires :
La comparaison du taux d'entrée à l'hôpital et l'évolution du taux d'hospitalisation (cf. A.1) montre que : 
- le taux d'entrée atteint 20 % au pic de l'épidémie (**limite Rouge**),
- il s'approche des 10 % lorsque l'épidémie repart ou commence à ralentir (**limite Rose**),
- il est inférieur à 5 % lorsque la vitesse de circulation du virus est faible.

Depuis le déconfinement (mai) et jusqu'à fin juillet, quelques départements ont ponctuellement un taux qui augmente.
Depuis mi-aout, la plupart des départements ont un taux d'entrée qui augmente, tout en restant bas.

Seuls La **Guyane** et l'**Hérault** (ROSE) ont un taux d'entrée élevé.

### B-2 - Alerte les entrées à l'hôpital
##### Description :
Le graphique de **gauche** permet de suivre **l'évolution hospitalière** :
- taux d'hospitalisation (BLEU) pour le département / (NOIR EPAIS) pour la France,
- taux d'entrée à l'hôpital (GRIS EPAIS) pour le département / (NOIR FIN) pour la France,
- le trait ROSE est la limite du taux d'entrée où l'épidémie s'accélère.

Le graphique de **droite** permet de suivre les **résultats des tests de dépistage** :
- nombre d'entrée à l'hôpital du département (BLEU) et de la France (NOIR EPAIS) pour 100 000 habitants,
- nombre tests positifs du département (GRIS) et de la la France (NOIR FIN) pour 100 000 habitants.

Les **POINTS ROUGES** représentent les jours où le modèle génère une alerte à partir des tests positifs.


![png](Surveillance_deconfinement_2020_08_31_files/Surveillance_deconfinement_2020_08_31_63_0.png)


##### Commentaires :
La **Guyane** a eu un taux d'entrée à l'hôpital (GRIS FONCE à gauche) élevé depuis fin mai qui s'est traduit par une forte augmentation du taux d'hospitalisation (BLEU à gauche) au delà du pic épidémique en France (mi-avril).

La baisse du taux d'entrée à l'hôpital depuis juillet (25 à 15 %) et plus fortement depuis début août (10 %) indique que l'épidémie ralentit.

L'**Hérault** a un taux d'entrée à l'hôpital qui augmente depuis 2 semaines (20 août)(Gris à gauche) qui se traduit par une multiplication par quatre des hospitalisations (Bleu à gauche).

### B-3 - Alerte sur les entrées à l'hôpital sans tests de dépistage massif
##### Description :
L'objectif est de vérifier que les départements dont les taux d'entrée à l'hôpital sont élevés pratiquent des tests massifs de dépistage.

    Aucun département a un taux d'entrée à l'hôpital élevé et un nombre de tests positifs faible.
    

##### Commentaires :

Contrairement au début du déconfinement où des entrées élevées à l'hôpital ne se traduisaient pas systématiquement par une hausse des tests positifs, les tests de dépistage sont généralisés à l'ensemble des départements.

### C.1 - Taux de tests virologiques positifs

#### Description :

Il s'agit de surveiller l'évolution du taux de tests virologiques positifs (pour 100 000 hab.) afin d'anticiper une éventuelle accélération de l'épidémie.


![png](Surveillance_deconfinement_2020_08_31_files/Surveillance_deconfinement_2020_08_31_69_0.png)


#### Commentaires :
Depuis 2 semaines, la moyenne nationale (NOIR) a un nombre de tests positifs supérieur au seuil d'alerte calculé au  début du déconfinement (début mai). 

Contrairement au début du déconfinement, cette hausse ne se traduit pas systématiquement par une hausse aussi élevée des entrées à l'hôpital.

De plus, l'exemple de la Mayenne (courbe jaune élevée mi juillet) montre qu'une hausse très importante des tests positifs n'a pas générée une hausse importante des entrées à l'hôpital.

C'est pourquoi actuellement, il est difficile d'utiliser cette indicateur comme une alerte qui anticiperait l'accélération des cas graves.

    
    

    
    

## V. Bilan sur la circulation du virus au 31 août 2020


![png](Surveillance_deconfinement_2020_08_31_files/Surveillance_deconfinement_2020_08_31_76_0.png)


Pour de nombreux départements, la hausse généralisée depuis mi-juillet des tests virologiques positifs  ne se traduit pas par une augmentation aussi élevée des hospitalisations (c'est-à-dire des cas graves).

La **Guyane** a eu une hausse des hospitalisations depuis fin mai. Des mesures plus strictes depuis juillet les font progressivement baisser. La baisse du nombre de tests positifs confirme cette tendance. L'épidémie ralentit.

L'**Hérault** a depuis 2 semaines une hausse très rapide des hospitalisations dont la confirmation sur les deux prochaines semaines nécessiterait des mesures plus stricts.

    Merci pour votre attention.
    
