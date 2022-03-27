# ================================================================================================
# DUMMY DATA
# ================================================================================================

USE `heroku_33299a48260ae4d`;

# ================================================

INSERT INTO `authors` (`id`, `full_name`, `created_at`, `updated_at`) VALUES
    (1, 'Cristian Besada', NOW(), NULL),
    (2, 'Paloma Investiga', NOW(), NULL);

# ================================================

INSERT INTO `products` (`id`, `id_category`, `slug`, `created_at`, `updated_at`) VALUES
    (1, 1, 'diego-nacido-para-molestar-id-1', NOW(), NULL);

# ================================================

INSERT INTO `product_authors` (`id`, `id_product`, `id_author`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, NOW(), NULL),
    (NULL, 1, 2, NOW(), NULL);

# ================================================

INSERT INTO `product_images` (`id`, `id_product`, `src`, `priority`, `created_at`, `updated_at`) VALUES
    (NULL, 1, '/assets/img/books/book-01.jpg', 1, NOW(), NULL);

# ================================================

#
# Attributes
#
# 1 - title
# 2 - description
# 3 - published_at
# 4 - pages
# 5 - language
# 6 - format
# 7 - presentation
#

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Diego. Nacido para molestar', NOW(), NULL),
    (NULL, 1, 2, 'Esta biografía ilustrada del mejor futbolista de todos los tiempos es la biografía de Dios, sin duda.<br/><br/>Miguel Rep da a luz a su Diego desde las entrañas mismas de un argentino fanático del fútbol, la política, la literatura y el arte: desde ese corazón mixto de artista.<br/><br/>\'En este trabajo, Miguel usa todas las herramientas que adquirió en todos estos años de oficio. Y dibuja más al Maradona que caminó sobre las aguas que al que terminó en la cruz de la que varias veces se pudo bajar. Diego siempre buscó la manera de volver a pisar una cancha. Miguel hace todo para seguir dibujando. Así es la gente que no deja de hacer lo que siempre hizo de chico: jugar a la pelota o dibujar. Toda una carrera tratando de seguir siendo un nene\'.<br/><br/>DEL PRÓLOGO DE PEDRO SABORIDO', NOW(), NULL),
    (NULL, 1, 3, '2021', NOW(), NULL),
    (NULL, 1, 4, '192', NOW(), NULL),
    (NULL, 1, 5, 'Occidental', NOW(), NULL),
    (NULL, 1, 6, '19,50 x 24,00 cm.', NOW(), NULL),
    (NULL, 1, 3, 'Rústica con solapas', NOW(), NULL);
