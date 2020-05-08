
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

    This application is used to convert notebook files (*.ipynb) to various other
    formats.
    
    WARNING: THE COMMANDLINE INTERFACE MAY CHANGE IN FUTURE RELEASES.
    
    Options
    
    -------
    
    
    
    Arguments that take values are actually convenience aliases to full
    Configurables, whose aliases are listed on the help line. For more information
    on full configurables, see '--help-all'.
    
    
    --debug
    
        set log level to logging.DEBUG (maximize logging output)
    
    --generate-config
    
        generate default config file
    
    -y
    
        Answer yes to any questions instead of prompting.
    
    --execute
    
        Execute the notebook prior to export.
    
    --allow-errors
    
        Continue notebook execution even if one of the cells throws an error and include the error message in the cell output (the default behaviour is to abort conversion). This flag is only relevant if '--execute' was specified, too.
    
    --stdin
    
        read a single notebook file from stdin. Write the resulting notebook with default basename 'notebook.*'
    
    --stdout
    
        Write notebook output to stdout instead of files.
    
    --inplace
    
        Run nbconvert in place, overwriting the existing notebook (only 
        relevant when converting to notebook format)
    
    --clear-output
    
        Clear output of current file and save in place, 
        overwriting the existing notebook.
    
    --no-prompt
    
        Exclude input and output prompts from converted document.
    
    --no-input
    
        Exclude input cells and output prompts from converted document. 
        This mode is ideal for generating code-free reports.
    --log-level=<Enum> (Application.log_level)
    
        Default: 30
    
        Choices: (0, 10, 20, 30, 40, 50, 'DEBUG', 'INFO', 'WARN', 'ERROR', 'CRITICAL')
    
        Set the log level by value or name.
    
    --config=<Unicode> (JupyterApp.config_file)
    
        Default: ''
    
        Full path of a config file.
    
    --to=<Unicode> (NbConvertApp.export_format)
    
        Default: 'html'
    
        The export format to be used, either one of the built-in formats
    
        ['asciidoc', 'custom', 'html', 'latex', 'markdown', 'notebook', 'pdf',
    
        'python', 'rst', 'script', 'slides'] or a dotted object name that represents
    
        the import path for an `Exporter` class
    
    --template=<Unicode> (TemplateExporter.template_file)
    
        Default: ''
    
        Name of the template file to use
    
    --writer=<DottedObjectName> (NbConvertApp.writer_class)
    
        Default: 'FilesWriter'
    
        Writer class used to write the  results of the conversion
    
    --post=<DottedOrNone> (NbConvertApp.postprocessor_class)
    
        Default: ''
    
        PostProcessor class used to write the results of the conversion
    
    --output=<Unicode> (NbConvertApp.output_base)
    
        Default: ''
    
        overwrite base name use for output files. can only be used when converting
    
        one notebook at a time.
    
    --output-dir=<Unicode> (FilesWriter.build_directory)
    
        Default: ''
    
        Directory to write output(s) to. Defaults to output to the directory of each
    
        notebook. To recover previous default behaviour (outputting to the current
    
        working directory) use . as the flag value.
    
    --reveal-prefix=<Unicode> (SlidesExporter.reveal_url_prefix)
    
        Default: ''
    
        The URL prefix for reveal.js (version 3.x). This defaults to the reveal CDN,
    
        but can be any url pointing to a copy  of reveal.js.
    
        For speaker notes to work, this must be a relative path to a local  copy of
    
        reveal.js: e.g., "reveal.js".
    
        If a relative path is given, it must be a subdirectory of the current
    
        directory (from which the server is run).
    
        See the usage documentation
    
        (https://nbconvert.readthedocs.io/en/latest/usage.html#reveal-js-html-
    
        slideshow) for more details.
    
    --nbformat=<Enum> (NotebookExporter.nbformat_version)
    
        Default: 4
    
        Choices: [1, 2, 3, 4]
    
        The nbformat version to write. Use this to downgrade notebooks.
    
    To see all available configurables, use `--help-all`
    
    Examples
    --------
    
        The simplest way to use nbconvert is
        
        > jupyter nbconvert mynotebook.ipynb
        
        which will convert mynotebook.ipynb to the default format (probably HTML).
        
        You can specify the export format with `--to`.
        Options include ['asciidoc', 'custom', 'html', 'latex', 'markdown', 'notebook', 'pdf', 'python', 'rst', 'script', 'slides'].
        
        > jupyter nbconvert --to latex mynotebook.ipynb
        
        Both HTML and LaTeX support multiple output templates. LaTeX includes
        'base', 'article' and 'report'.  HTML includes 'basic' and 'full'. You
        can specify the flavor of the format used.
        
        > jupyter nbconvert --to html --template basic mynotebook.ipynb
        
        You can also pipe the output to stdout, rather than a file
        
        > jupyter nbconvert mynotebook.ipynb --stdout
        
        PDF is generated via latex
        
        > jupyter nbconvert mynotebook.ipynb --to pdf
        
        You can get (and serve) a Reveal.js-powered slideshow
        
        > jupyter nbconvert myslides.ipynb --to slides --post serve
        
        Multiple notebooks can be given at the command line in a couple of 
        different ways:
        
        > jupyter nbconvert notebook*.ipynb
        > jupyter nbconvert notebook1.ipynb notebook2.ipynb
        
        or you can specify the notebooks list in a config file, containing::
        
            c.NbConvertApp.notebooks = ["my_notebook.ipynb"]
        
        > jupyter nbconvert --config mycfg.py
    
    

    [NbConvertApp] WARNING | pattern 'Progression_Covid19_20200508.ipynb' matched no files
    

### Sous HTML
