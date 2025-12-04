-- 1. INSERT - Création d'un nouvel utilisateur
INSERT INTO utilisateur (nom, email, mot_de_passe, utilisateur_role)
VALUES ("jdupont", "jean.dupont@email.com", "$2y$10$...", "éditeur");
-- 2. SELECT - Récupération d'articles
SELECT titre, date_de_creation, article_status
FROM article;
-- 3. UPDATE - Modification de statut
UPDATE article
SET article_status = "archivé"
WHERE article_status = "draft" AND date_de_creation < "2024-01-01";
-- 4. DELETE - Nettoyage des commentaires
DELETE FROM commentaire
WHERE commentaire_status = "spam"
AND commentaire_date < "2024-12-04";

