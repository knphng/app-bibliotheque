# app-bibliotheque
Java EE small school project.


### prérequis
- connexion internet afin de pouvoir avoir les plugins JQuery et Bootstrap

### Configuration
1. lancer TomEE 7.0.2
2. ouvrir le manager "Apache Tomcat (TomEE)/8.5.6 (7.0.2)" via localhost:8080
3. configurer le fichier tomcat-users.xml se trouvant dans l’emplacement du répertoire d’installation de TomEE ([repertoire-racine]/conf/tomcat-users.xml)
    - y ajouter un role "USER"
    - attribuer ce role à un de vos users (en créer un si vous n'avez pas d'utilisateurs)
4. depuis le manager de Tomcat
    - choisir le fichier app_bibliotheque_kn_ds.war et le déployer
    - aller sur le lien suivant : http://localhost:8080/app_bibliotheque_kn_ds/
5. tester l'application


