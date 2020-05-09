
<ol>
  <li>Écrasez délicatement les avocats avec une fourchette</li>
  <li>Placez la purée obtenue dans un plat et arrosez avec le jus de citron</li>
  <li>Mélangez pour que le jus de citron empêche la purée d'avocat de noircir</li>
  <li>Mélangez la tomate et le concombre coupés</li>
  <li>Gardez au frais et servir rapidement avec des tortillas</li>
</ol>

<FORM>
<SELECT name="nom" size="5">
  <OPTION>lundi
  
  <OPTION>mardi
  
  <OPTION>mercredi
  <OPTION>jeudi
  <OPTION>vendredi
</SELECT>
</FORM>

<form action="/ma-page-de-traitement" method="post">
    <div>
        <label for="name">Nom :</label>
        <input type="text" id="name" name="user_name">
    </div>
    <div>
        <label for="mail">e-mail :</label>
        <input type="email" id="mail" name="user_mail">
    </div>
    <div>
        <label for="msg">Message :</label>
        <textarea id="msg" name="user_message"></textarea>
    </div>
</form>


<form method="post" action="traitement.php">
   <p>
       <label for="pays">Dans quel pays habitez-vous ?</label><br />
       <select name="pays" id="pays">
           <optgroup label="Europe">
               <option value="france">France</option>
               <option value="espagne">Espagne</option>
               <option value="italie">Italie</option>
               <option value="royaume-uni">Royaume-Uni</option>
           </optgroup>
           <optgroup label="Amérique">
               <option value="canada">Canada</option>
               <option value="etats-unis">Etats-Unis</option>
           </optgroup>
           <optgroup label="Asie">
               <option value="chine">Chine</option>
               <option value="japon">Japon</option>
           </optgroup>
       </select>
   </p>
</form>
