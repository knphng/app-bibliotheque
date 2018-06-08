# app-bibliotheque
Java EE small school project.


### prérequis
- connexion internet afin de pouvoir avoir les plugins JQuery et Bootstrap

### Configuration
1. configurer le fichier tomcat-users.xml se trouvant dans l’emplacement du répertoire d’installation de TomEE ([repertoire-racine]/conf/tomcat-users.xml)
    - y ajouter un role "USER" 
      - ```<role rolename="USER" />```
    - attribuer ce role à un de vos utilisateurs (en créer un si vous n'avez pas d'utilisateurs)
      - ```<user username="test" password="test" roles="USER" />```
2. lancer TomEE 7.0.2
3. ouvrir le manager "Apache Tomcat (TomEE)/8.5.6 (7.0.2)" via localhost:8080
    - cliquez sur "Manager App"
    - choisir le fichier app_bibliotheque_kn_ds.war et le déployer
    - aller sur le lien suivant : http://localhost:8080/app_bibliotheque_kn_ds/
4. tester l'application


