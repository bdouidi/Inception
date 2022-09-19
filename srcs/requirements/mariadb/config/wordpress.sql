CREATE TABLE IF NOT EXISTS inception_WordPress_2022_09_18 (
    `rss` INT,
    `rss_version` NUMERIC(2, 1),
    `rss_xmlns_excerpt` VARCHAR(40) CHARACTER SET utf8,
    `rss_xmlns_content` VARCHAR(40) CHARACTER SET utf8,
    `rss_xmlns_wfw` VARCHAR(36) CHARACTER SET utf8,
    `rss_xmlns_dc` VARCHAR(32) CHARACTER SET utf8,
    `rss_xmlns_wp` VARCHAR(32) CHARACTER SET utf8,
    `rss_channel` INT,
    `rss_channel_title` VARCHAR(9) CHARACTER SET utf8,
    `rss_channel_link` VARCHAR(26) CHARACTER SET utf8,
    `rss_channel_description` VARCHAR(27) CHARACTER SET utf8,
    `rss_channel_pubDate` VARCHAR(31) CHARACTER SET utf8,
    `rss_channel_language` VARCHAR(5) CHARACTER SET utf8,
    `rss_channel_wp_wxr_version` NUMERIC(2, 1),
    `rss_channel_wp_base_site_url` VARCHAR(26) CHARACTER SET utf8,
    `rss_channel_wp_base_blog_url` VARCHAR(26) CHARACTER SET utf8,
    `rss_channel_wp_author` INT,
    `rss_channel_wp_author_wp_author_id` INT,
    `rss_channel_wp_author_wp_author_login` VARCHAR(9) CHARACTER SET utf8,
    `rss_channel_wp_author_wp_author_email` VARCHAR(19) CHARACTER SET utf8,
    `rss_channel_wp_author_wp_author_display_name` VARCHAR(9) CHARACTER SET utf8,
    `rss_channel_wp_author_wp_author_first_name` INT,
    `rss_channel_wp_author_wp_author_last_name` INT,
    `rss_channel_wp_category` INT,
    `rss_channel_wp_category_wp_term_id` INT,
    `rss_channel_wp_category_wp_category_nicename` VARCHAR(10) CHARACTER SET utf8,
    `rss_channel_wp_category_wp_category_parent` INT,
    `rss_channel_wp_category_wp_cat_name` VARCHAR(10) CHARACTER SET utf8,
    `rss_channel_wp_term` INT,
    `rss_channel_wp_term_wp_term_id` INT,
    `rss_channel_wp_term_wp_term_taxonomy` VARCHAR(8) CHARACTER SET utf8,
    `rss_channel_wp_term_wp_term_slug` VARCHAR(10) CHARACTER SET utf8,
    `rss_channel_wp_term_wp_term_parent` INT,
    `rss_channel_wp_term_wp_term_name` VARCHAR(10) CHARACTER SET utf8,
    `rss_channel_generator` VARCHAR(30) CHARACTER SET utf8,
    `rss_channel_item` INT,
    `rss_channel_item_title` VARCHAR(28) CHARACTER SET utf8,
    `rss_channel_item_link` VARCHAR(37) CHARACTER SET utf8,
    `rss_channel_item_pubDate` VARCHAR(31) CHARACTER SET utf8,
    `rss_channel_item_dc_creator` VARCHAR(9) CHARACTER SET utf8,
    `rss_channel_item_guid` VARCHAR(37) CHARACTER SET utf8,
    `rss_channel_item_guid_isPermaLink` VARCHAR(5) CHARACTER SET utf8,
    `rss_channel_item_description` INT,
    `rss_channel_item_content_encoded` VARCHAR(5947) CHARACTER SET utf8,
    `rss_channel_item_excerpt_encoded` INT,
    `rss_channel_item_wp_post_id` INT,
    `rss_channel_item_wp_post_date` DATETIME,
    `rss_channel_item_wp_post_date_gmt` DATETIME,
    `rss_channel_item_wp_post_modified` DATETIME,
    `rss_channel_item_wp_post_modified_gmt` DATETIME,
    `rss_channel_item_wp_comment_status` VARCHAR(6) CHARACTER SET utf8,
    `rss_channel_item_wp_ping_status` VARCHAR(4) CHARACTER SET utf8,
    `rss_channel_item_wp_post_name` VARCHAR(28) CHARACTER SET utf8,
    `rss_channel_item_wp_status` VARCHAR(7) CHARACTER SET utf8,
    `rss_channel_item_wp_post_parent` INT,
    `rss_channel_item_wp_menu_order` INT,
    `rss_channel_item_wp_post_type` VARCHAR(4) CHARACTER SET utf8,
    `rss_channel_item_wp_post_password` INT,
    `rss_channel_item_wp_is_sticky` INT,
    `rss_channel_item_category` VARCHAR(10) CHARACTER SET utf8,
    `rss_channel_item_category_domain` VARCHAR(8) CHARACTER SET utf8,
    `rss_channel_item_category_nicename` VARCHAR(10) CHARACTER SET utf8,
    `rss_channel_item_wp_comment` INT,
    `rss_channel_item_wp_comment_wp_comment_id` INT,
    `rss_channel_item_wp_comment_wp_comment_author` VARCHAR(42) CHARACTER SET utf8,
    `rss_channel_item_wp_comment_wp_comment_author_email` VARCHAR(23) CHARACTER SET utf8,
    `rss_channel_item_wp_comment_wp_comment_author_url` VARCHAR(25) CHARACTER SET utf8,
    `rss_channel_item_wp_comment_wp_comment_author_IP` INT,
    `rss_channel_item_wp_comment_wp_comment_date` DATETIME,
    `rss_channel_item_wp_comment_wp_comment_date_gmt` DATETIME,
    `rss_channel_item_wp_comment_wp_comment_content` VARCHAR(290) CHARACTER SET utf8,
    `rss_channel_item_wp_comment_wp_comment_approved` INT,
    `rss_channel_item_wp_comment_wp_comment_type` VARCHAR(7) CHARACTER SET utf8,
    `rss_channel_item_wp_comment_wp_comment_parent` INT,
    `rss_channel_item_wp_comment_wp_comment_user_id` INT,
    `rss_channel_item_wp_postmeta` INT,
    `rss_channel_item_wp_postmeta_wp_meta_key` VARCHAR(17) CHARACTER SET utf8,
    `rss_channel_item_wp_postmeta_wp_meta_value` VARCHAR(7) CHARACTER SET utf8
);
INSERT INTO inception_WordPress_2022_09_18 VALUES
    (NULL,2.0,'http://wordpress.org/export/1.2/excerpt/','http://purl.org/rss/1.0/modules/content/','http://wellformedweb.org/CommentAPI/','http://purl.org/dc/elements/1.1/','http://wordpress.org/export/1.2/',NULL,'Inception','http://localhost/wordpress','Un site utilisant WordPress','Sun, 18 Sep 2022 15:41:50 +0000','fr-FR',1.2,'http://localhost/wordpress','http://localhost/wordpress',NULL,1,'a_idouidi','idouidi.admin@42.fr','a_idouidi',NULL,NULL,NULL,1,'non-classe',NULL,'Non classé',NULL,1,'category','non-classe',NULL,'Non classé','https://wordpress.org/?v=6.0.2',NULL,'Bonjour tout le monde !','http://localhost/wordpress/?p=1','Sun, 18 Sep 2022 15:28:17 +0000','a_idouidi','http://localhost/wordpress/?p=1','false',NULL,'<!-- wp:paragraph -->
<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>
<!-- /wp:paragraph -->',NULL,1,'2022-09-18 17:28:17','2022-09-18 15:28:17','2022-09-18 17:28:17','2022-09-18 15:28:17','open','open','bonjour-tout-le-monde','publish',0,0,'post',NULL,0,'Non classé','category','non-classe',NULL,1,'Un commentateur ou commentatrice WordPress','wapuu@wordpress.example','https://fr.wordpress.org/',NULL,'2022-09-18 17:28:17','2022-09-18 15:28:17','Bonjour, ceci est un commentaire.
Pour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.
Les avatars des personnes qui commentent arrivent depuis <a href="https://fr.gravatar.com/">Gravatar</a>.',1,'comment',0,0,NULL,NULL,NULL),
    (NULL,2.0,'http://wordpress.org/export/1.2/excerpt/','http://purl.org/rss/1.0/modules/content/','http://wellformedweb.org/CommentAPI/','http://purl.org/dc/elements/1.1/','http://wordpress.org/export/1.2/',NULL,'Inception','http://localhost/wordpress','Un site utilisant WordPress','Sun, 18 Sep 2022 15:41:50 +0000','fr-FR',1.2,'http://localhost/wordpress','http://localhost/wordpress',NULL,1,'a_idouidi','idouidi.admin@42.fr','a_idouidi',NULL,NULL,NULL,1,'non-classe',NULL,'Non classé',NULL,1,'category','non-classe',NULL,'Non classé','https://wordpress.org/?v=6.0.2',NULL,'Page d’exemple','http://localhost/wordpress/?page_id=2','Sun, 18 Sep 2022 15:28:17 +0000','a_idouidi','http://localhost/wordpress/?page_id=2','false',NULL,'<!-- wp:paragraph -->
<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant le site. Cela pourrait ressembler à quelque chose comme cela :</p>
<!-- /wp:paragraph -->

<!-- wp:quote -->
<blockquote class="wp-block-quote"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>
<!-- /wp:quote -->

<!-- wp:paragraph -->
<p>…ou quelque chose comme cela :</p>
<!-- /wp:paragraph -->

<!-- wp:quote -->
<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>
<!-- /wp:quote -->

<!-- wp:paragraph -->
<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://localhost/wordpress/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>
<!-- /wp:paragraph -->',NULL,2,'2022-09-18 17:28:17','2022-09-18 15:28:17','2022-09-18 17:28:17','2022-09-18 15:28:17','closed','open','page-d-exemple','publish',0,0,'page',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'_wp_page_template','default'),
    (NULL,2.0,'http://wordpress.org/export/1.2/excerpt/','http://purl.org/rss/1.0/modules/content/','http://wellformedweb.org/CommentAPI/','http://purl.org/dc/elements/1.1/','http://wordpress.org/export/1.2/',NULL,'Inception','http://localhost/wordpress','Un site utilisant WordPress','Sun, 18 Sep 2022 15:41:50 +0000','fr-FR',1.2,'http://localhost/wordpress','http://localhost/wordpress',NULL,1,'a_idouidi','idouidi.admin@42.fr','a_idouidi',NULL,NULL,NULL,1,'non-classe',NULL,'Non classé',NULL,1,'category','non-classe',NULL,'Non classé','https://wordpress.org/?v=6.0.2',NULL,'Politique de confidentialité','http://localhost/wordpress/?page_id=3','Sun, 18 Sep 2022 15:28:17 +0000','a_idouidi','http://localhost/wordpress/?page_id=3','false',NULL,'<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>L’adresse de notre site est : http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commentaires</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, ainsi que votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Médias</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenu embarqué depuis d’autres sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Où vos données sont envoyées</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph -->',NULL,3,'2022-09-18 17:28:17','2022-09-18 15:28:17','2022-09-18 17:28:17','2022-09-18 15:28:17','closed','open','politique-de-confidentialite','draft',0,0,'page',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'_wp_page_template','default');
