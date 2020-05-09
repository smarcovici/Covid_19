
# Table of contents
1. [Introduction](#introduction)
2. [Some paragraph](#paragraph1)
    1. [Sub paragraph](#subparagraph1)
3. [Another paragraph](#paragraph2)

## This is the introduction <a name="introduction"></a>
Some introduction text, formatted in heading 2 style

## Some paragraph <a name="paragraph1"></a>
The first paragraph text

### Sub paragraph <a name="subparagraph1"></a>
This is a sub paragraph, formatted in heading 3 style

## Another paragraph <a name="paragraph2"></a>
The second paragraph text


## Selectionner un département
[France][Fr]
[Puy-de-Dôme][PdD]


[Fr]: https://github.com/smarcovici/Covid_19/blob/master/Analyse_confinement/Images/Evolution%20des%20hospitalisations%20par%20departement_France.png
[PdD]: https://github.com/smarcovici/Covid_19/blob/master/Analyse_confinement/Images/Evolution%20des%20hospitalisations%20par%20departement_Puy-de-Dôme.png

<select onchange="if(this.value!=''){ document.location.href=this.value }">
   <option value="">MENU</option>
   <option value="http://www.monsite.com/page1.html">Page 1</option>
   <option value="http://www.monsite.com/page2.html">Page 2</option>
   <option value="http://www.monsite.com/page3.html" selected="selected">Page 3</option>
   <option value="http://www.monsite.com/page4.html">Page 4</option>
</select>
