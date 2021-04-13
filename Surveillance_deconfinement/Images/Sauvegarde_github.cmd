set Commentaire=%1
cd C:\Users\sylvain_2\Documents\Python Scripts\Beyond_basics\Covid_19\Covid_19\Surveillance_deconfinement\Images
git add .
if not defined Commentaire (git commit -m "Sauvegarde manuelle") else (git commit -m %Commentaire%)
git push -u origin master