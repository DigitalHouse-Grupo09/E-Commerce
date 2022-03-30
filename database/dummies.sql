# ================================================================================================
# DUMMY DATA
# ================================================================================================

USE `heroku_33299a48260ae4d`;

# ================================================

INSERT INTO `authors` (`id`, `full_name`, `created_at`, `updated_at`) VALUES
    (1, 'Miguel Rep', NOW(), NULL),
    (2, 'Carmen Mola', NOW(), NULL),
    (3, 'Gabriela Saidon', NOW(), NULL),
    (4, 'Miguel De Cervantes', NOW(), NULL),
    (5, 'Javier Milei', NOW(), NULL),
    (6, 'Nancy Bonillo', NOW(), NULL),
    (7, 'Kerri Maniscalco', NOW(), NULL),
    (8, 'Florencia Bonelli', NOW(), NULL),
    (9, 'J.K Rowling', NOW(), NULL),
    (10, 'John Katzenbach', NOW(), NULL),
    (11, 'Arturo Perez-Reverte', NOW(), NULL),
    (12, 'Guillermo Martinez', NOW(), NULL),
    (13, 'Elise Kova', NOW(), NULL),
    (14, 'Rosario Oyhanarte', NOW(), NULL),
    (15, 'Herman Melville', NOW(), NULL),

# ================================================

INSERT INTO `products` (`id`, `id_category`, `slug`, `created_at`, `updated_at`) VALUES
    (1, 1, 'diego-nacido-para-molestar-id-1', NOW(), NULL);
    (2, 1, 'la-bestia-id-2', NOW(), NULL);
    (3, 1, 'la-reina-id-3', NOW(), NULL);
    (4, 1, 'don-quijote-de-la-mancha-id-4', NOW(), NULL);
    (5, 1, 'el-camino-del-libertario-id-5', NOW(), NULL);
    (6, 1, 'lo-que-calla-la-sangre-id-6', NOW(), NULL);
    (7, 1, 'el-reino-de-los-malditos-id-7', NOW(), NULL);
    (8, 1, 'la-tia-cosima-id-8', NOW(), NULL);
    (9, 1, 'harry-potter-y-la-piedra-filosofal-id-9', NOW(), NULL);
    (10, 1, 'el-club-de-los-psicopatas-id-10', NOW(), NULL);
    (11, 1, 'el-italiano-id-11', NOW(), NULL);
    (12, 1, 'la-ultima-vez-id-12', NOW(), NULL);
    (13, 1, 'un-trato-con-el-rey-de-los-elfos-id-13', NOW(), NULL);
    (14, 1, 'el-libro-mas-lindo-del-mundo-id-14', NOW(), NULL);
    (15, 1, 'moby-dick-id-15', NOW(), NULL);

# ================================================

--consultar aca--

INSERT INTO `product_authors` (`id`, `id_product`, `id_author`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, NOW(), NULL),
    (NULL, 1, 2, NOW(), NULL);
    (NULL, 1, 3, NOW(), NULL);
    (NULL, 1, 4, NOW(), NULL);
    (NULL, 1, 5, NOW(), NULL);
    (NULL, 1, 6 NOW(), NULL);
    (NULL, 1, 7, NOW(), NULL);
    (NULL, 1, 8, NOW(), NULL);
    (NULL, 1, 9, NOW(), NULL);
    (NULL, 1, 10, NOW(), NULL);
    (NULL, 1, 11, NOW(), NULL);
    (NULL, 1, 12, NOW(), NULL);
    (NULL, 1, 13, NOW(), NULL);
    (NULL, 1, 14, NOW(), NULL);
    (NULL, 1, 15, NOW(), NULL);

# ================================================

INSERT INTO `product_images` (`id`, `id_product`, `src`, `priority`, `created_at`, `updated_at`) VALUES
    (NULL, 1, '/assets/img/books/book-01.jpg', 1, NOW(), NULL);
    (NULL, 1, '/assets/img/books/book-02.jpg', 1, NOW(), NULL);
    (NULL, 1, '/assets/img/books/book-03.jpg', 1, NOW(), NULL);
    (NULL, 1, '/assets/img/books/book-04.jpg', 1, NOW(), NULL);
    (NULL, 1, '/assets/img/books/book-05.jpg', 1, NOW(), NULL);
    (NULL, 1, '/assets/img/books/book-06.jpg', 1, NOW(), NULL);
    (NULL, 1, '/assets/img/books/book-07.jpg', 1, NOW(), NULL);
    (NULL, 1, '/assets/img/books/book-08.jpg', 1, NOW(), NULL);
    (NULL, 1, '/assets/img/books/book-09.jpg', 1, NOW(), NULL);
    (NULL, 1, '/assets/img/books/book-10.jpg', 1, NOW(), NULL);
    (NULL, 1, '/assets/img/books/book-11.jpg', 1, NOW(), NULL);
    (NULL, 1, '/assets/img/books/book-12.jpg', 1, NOW(), NULL);
    (NULL, 1, '/assets/img/books/book-13.jpg', 1, NOW(), NULL);
    (NULL, 1, '/assets/img/books/book-14.jpg', 1, NOW(), NULL);
    (NULL, 1, '/assets/img/books/book-15.jpg', 1, NOW(), NULL);


# ================================================

INSERT INTO `product_prices` (`id`, `id_product`, `amount`, `currency`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 3670.00, 'AR$', NOW(), NULL);
    (NULL, 2, 3150.00, 'AR$', NOW(), NULL);
    (NULL, 3, 2040.00, 'AR$', NOW(), NULL);
    (NULL, 4, 3599.00, 'AR$', NOW(), NULL);
    (NULL, 5, 2490.00, 'AR$', NOW(), NULL);
    (NULL, 6, 2590.00, 'AR$', NOW(), NULL);
    (NULL, 7, 2090.00, 'AR$', NOW(), NULL);
    (NULL, 8, 949.00, 'AR$', NOW(), NULL);
    (NULL, 9, 2249.00, 'AR$', NOW(), NULL);
    (NULL, 10, 3149.00, 'AR$', NOW(), NULL);
    (NULL, 11, 3199.00, 'AR$', NOW(), NULL);
    (NULL, 12, 1900.00, 'AR$', NOW(), NULL);
    (NULL, 13, 2150.00, 'AR$', NOW(), NULL);
    (NULL, 14, 1699.00, 'AR$', NOW(), NULL);
    (NULL, 15, 2549.00, 'AR$', NOW(), NULL);
# ================================================

--| yo eliminaria el formato y lo reemplazaria por la editorial|-- revisar los que estan rancios que quedaron en blanco

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
    (NULL, 1, 3, '10/2021', NOW(), NULL),
    (NULL, 1, 4, '192', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, '19,50 x 24,00 cm.', NOW(), NULL),
    (NULL, 1, 3, 'Rústica con solapas', NOW(), NULL);


INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'La Bestia', NOW(), NULL),
    (NULL, 1, 2, 'Corre el año 1834 y Madrid; una pequeña ciudad que trata de abrirse paso más allá de las murallas que la rodean; sufre una terrible epidemia de cólera. Pero la peste no es lo único que aterroriza a sus habitantes: en los arrabales aparecen cadáveres desmembrados de niñas que nadie reclama. Todos los rumores apuntan a la Bestia; un ser a quien nadie ha visto pero al que todos temen..<br/><br/>\'Cuando la pequeña Clara desaparece; su hermana Lucía; junto con Donoso; un policía tuerto; y Diego; un periodista buscavidas; inician una frenética cuenta atrás para encontrar a la niña con vida. En su camino tropiezan con fray Braulio; un monje guerrillero; y con un misterioso anillo de oro con dos mazas cruzadas que todo el mundo codicia y por el que algunos están dispuestos a matar.\'.<br/><br/>De manera magistral; Carmen Mola teje; con los hilos del mejor thriller; esta novela impactante; frenética e implacable; de infierno y oscuridad.', NOW(), NULL),
    (NULL, 1, 3, '10/2021', NOW(), NULL),
    (NULL, 1, 4, '544', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, '19,50 x 24,00 cm.', NOW(), NULL),
    (NULL, 1, 3, 'Rústica con solapas', NOW(), NULL);
    

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'La Reina', NOW(), NULL),
    (NULL, 1, 2, 'Una monarquía incaica en América Latina y una adolescente virgen que despierta deseos prohibidos en un hombre que ha sufrido derrotas y victorias. Cusco; Perú; octubre de 1818. Un general porteño visita a Irenea; una monja de clausura que vive con sus hijas en el convento de Santa Clara. El general viene con la misión secreta de coronar a la menor de las hermanas. Shiamara y Nuna descienden de una pareja revolucionaria; Micaela Bastidas y Tupac Amaru; y por sus venas corre sangre real y mestizada. Una es negra y la otra es blanca. En el Congreso de Tucumán de 1816; ha triunfado la propuesta de Manuel Belgrano de establecer; como sistema de gobierno; una monarquía incaica en América Latina; con sede en esa ciudad peruana; entonces considerada ombligo del mundo. Mientras espera a su príncipe; Nuna; la adolescente virgen; despierta deseos prohibidos en el hombre que ha sufrido derrotas y victorias; amores y pérdidas. El hecho puede cambiar el rumbo de los acontecimientos. Gabriela Saidon narra una historia apasionante. Con el trasfondo de la ciudad colonial; de iglesias erigidas sobre las ruinas de un imperio dorado; su gran personaje; Nuna; confronta a Belgrano en el ocaso de su vida; y también a su madre; en lo que por momentos se convierte en una comedia de enredos; desafía las estrategias de un poder inclaudicable y la moral hipócrita de la época.', NOW(), NULL),
    (NULL, 1, 3, '09/2020', NOW(), NULL),
    (NULL, 1, 4, '328', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, '19,50 x 24,00 cm.', NOW(), NULL),
    (NULL, 1, 3, 'Rústica con solapas', NOW(), NULL);


INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Don quijote de la mancha', NOW(), NULL),
    (NULL, 1, 2, 'Contra cuerdos y contra locos está obligado cualquier caballero andante a volver por la honra de las mujeres.' Un éxito desde el momento de su publicación en dos partes (1605 y 1615); Don Quijote de la Mancha es probablemente la mayor novela jamás escrita. Cuenta la historia de un hidalgo que; enloquecido por la lectura excesiva; recorre España en busca de aventura; justicia y gloria. Las múltiples interpretaciones de la obra reflejan su riqueza de significados y contenidos: una crítica de las novelas de caballería; la contraposición entre realismo e idealismo; o una sátira de las ilusiones cortesanas. Con las divertidas andanzas de su ingenioso protagonista; Cervantes retrató la complejidad de lo humano y dio al arte literario su más alta expresión. Esta edición incluye una introducción que contextualiza la obra; un aparato de notas; una cronología y una bibliografía esencial; así como también varias propuestas de discusión y debate en torno a la lectura. Está al cuidado de Florencio Sevilla Arroyo; catedrático de literatura española de la Universidad Autónoma de Madrid., NOW(), NULL),
    (NULL, 1, 3, '01/2016', NOW(), NULL),
    (NULL, 1, 4, '1216', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, '19,50 x 24,00 cm.', NOW(), NULL),
    (NULL, 1, 3, 'Rústica con solapas', NOW(), NULL);


INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'El camino del libertario', NOW(), NULL),
    (NULL, 1, 2, 'Aquí está; esta es la Enciclopedia Milei definitiva: un libro en tres actos en los que el protagonista de la aparición más fulgurante que se produjo en la política argentina en años cuenta el camino que lo llevó hasta su banca de diputado nacional; a captar y calibrar como nadie el descontento de la sociedad con la casta política.<br/><br/>\'Javier Milei seleccionó para este libro sus textos más preciados en el terreno de la discusión de las ideas económicas; pulió los discursos e intervenciones de su primer año en la política; y en medio de meses muy agitados logró sentarse a pensar en su vida; en su infancia; sus afectos; sus pasiones y el modo en que sus ideas fueron evolucionando hacia la causa más importante de todas. Como él mismo dice: ¿Me terminé haciendo popular por mi defensa de la libertad?', NOW(), NULL),
    (NULL, 1, 3, '02/2022', NOW(), NULL),
    (NULL, 1, 4, '352', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, '19,50 x 24,00 cm.', NOW(), NULL),
    (NULL, 1, 3, 'Rústica con solapas', NOW(), NULL);


INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Lo que calla la sangre', NOW(), NULL),
    (NULL, 1, 2, 'En la última década del siglo XIX, muerto Leandro Alem, la convulsión política abre paso a la discusión sobre el futuro de la Argentina. En este contexto, el romance entre Elena y Antonio crece en medio de una maraña de relaciones filiales y misterios por develar. Ella pertenece a la alta aristocracia porteña, pero por problemas económicos en su familia, se enfrenta al descubrimiento de un nuevo mundo en el que los entreveros sociales, la solidaridad y la pasión forjan su destino. Él, en cambio, es campesino que lucha por mejorar su posición social y sobreponerse a las circunstancias cada día. Esta novela nos emociona con la historia de dos mundos diferentes, una trama plagada de secretos y un amor que crece frente a todo.', NOW(), NULL),
    (NULL, 1, 3, '02/2022', NOW(), NULL),
    (NULL, 1, 4, '420', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, '19,50 x 24,00 cm.', NOW(), NULL),
    (NULL, 1, 3, 'Rústica con solapas', NOW(), NULL);


INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'El reino de los malditos', NOW(), NULL),
    (NULL, 1, 2, 'Dos hermanas. Un despiadado asesinato. Una bUsqueda de venganza que desatarA el mismIsimo infierno. Y un romance embriagador. Emilia y su hermana gemela Vittoria son streghe: brujas que viven en secreto entre los humanos; evitando llamar la atenciOn y ser perseguidas. Pero una noche; Vittoria se pierde el turno de la cena en el famoso restaurante siciliano que regenta la familia. Y Emilia pronto encuentra el cuerpo de su querida gemela... profanado mAs allA de lo imaginable. Devastada; se propone encontrar al asesino de su hermana y conseguir venganza a cualquier precio; incluso si eso significa usar magia oscura; que lleva mucho tiempo prohibida. ¿CuAl es el precio de la venganza? No te pierdas la nueva saga de la autora de A la caza de Jack el Destripador.', NOW(), NULL),
    (NULL, 1, 3, '02/2022', NOW(), NULL),
    (NULL, 1, 4, '416', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, '19,50 x 24,00 cm.', NOW(), NULL),
    (NULL, 1, 3, 'Rústica con solapas', NOW(), NULL);


INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'La tia Cosima', NOW(), NULL),
    (NULL, 1, 2, '¿Puede el amor regalar una segunda oportunidad? Cósima es una mujer en la plenitud de la vida. Psicóloga de profesión y especializada en el tratamiento del autismo infantil; posee una fundación de enorme prestigio; donde se respira un ambiente cuidado y buen humor. Allí trabaja con perros especialmente adiestrados para ayudar a los niños con alguna condición del espectro autista. Es feliz con su trabajo; con sus amigos y sus sobrinos; a quienes dedica los pocos ratos libres de que dispone. En su adolescencia; sin embargo; padeció la crueldad de algunos compañeros de escuela; experiencia que la marcó profundamente; al tiempo que le sirvió para convertirse en la mujer comprometida que es hoy. Si bien esa etapa de sufrimiento quedó atrás; un día irrumpe de nuevo para ofrecerle algo que quizá deseaba: un amor inesperado; una pasión que la desborda; un abismo de sorpresa e incertidumbre. ¿Podrá ese amor reparar el daño que no se olvida? ¿Podrá deshacer la vergüenza; la frustración y el enojo? Con su nueva novela; Florencia Bonelli logra otra vez el misterio de la devoción lectora con una historia que perdura más allá de la última página., NOW(), NULL),
    (NULL, 1, 3, '09/2020', NOW(), NULL),
    (NULL, 1, 4, '576', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, '19,50 x 24,00 cm.', NOW(), NULL),
    (NULL, 1, 3, 'Rústica con solapas', NOW(), NULL);


INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Diego. Nacido para molestar', NOW(), NULL),
    (NULL, 1, 2, 'Esta biografía ilustrada del mejor futbolista de todos los tiempos es la biografía de Dios, sin duda.<br/><br/>Miguel Rep da a luz a su Diego desde las entrañas mismas de un argentino fanático del fútbol, la política, la literatura y el arte: desde ese corazón mixto de artista.<br/><br/>\'En este trabajo, Miguel usa todas las herramientas que adquirió en todos estos años de oficio. Y dibuja más al Maradona que caminó sobre las aguas que al que terminó en la cruz de la que varias veces se pudo bajar. Diego siempre buscó la manera de volver a pisar una cancha. Miguel hace todo para seguir dibujando. Así es la gente que no deja de hacer lo que siempre hizo de chico: jugar a la pelota o dibujar. Toda una carrera tratando de seguir siendo un nene\'.<br/><br/>DEL PRÓLOGO DE PEDRO SABORIDO', NOW(), NULL),
    (NULL, 1, 3, '2021', NOW(), NULL),
    (NULL, 1, 4, '192', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, '19,50 x 24,00 cm.', NOW(), NULL),
    (NULL, 1, 3, 'Rústica con solapas', NOW(), NULL);


 INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Harry Potter y la Piedra Filosofal', NOW(), NULL),
    (NULL, 1, 2, 'Harry Potter se ha quedado huérfano y vive en casa de sus abominables tíos y del insoportable primo Dudley. Se siente muy triste y solo; hasta que un buen día recibe una carta que cambiará su vida para siempre. En ella le comunican que ha sido aceptado como alumno en el colegio interno Hogwarts de magia y hechicería. A partir de ese momento; la suerte de Harry da un vuelco espectacular. En esa escuela tan especial aprenderá encantamientos; trucos fabulosos y tácticas de defensa contra las malas artes. Se convertirá en el campeón escolar de quidditch; especie de fútbol aéreo que se juega montado sobre escobas; y hará un puñado de buenos amigos... aunque también algunos temibles enemigos. Pero; sobre todo; conocerá los secretos que le permitirán cumplir con su destino. Pues; aunque no lo parezca a primera vista; Harry no es un chico común y corriente. ¡Es un verdadero mago!', NOW(), NULL),
    (NULL, 1, 3, '06/2020', NOW(), NULL),
    (NULL, 1, 4, '288', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, '19,50 x 24,00 cm.', NOW(), NULL),
    (NULL, 1, 3, 'Rústica con solapas', NOW(), NULL);


INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'El club de los Psicopatas', NOW(), NULL),
    (NULL, 1, 2, 'Alpha; Bravo; Charlie; Delta y Easy se hacen llamar los Muchachos de Jack; en honor a Jack el Destripador. Entre ellos no se conocen más que por un chat en la Dark Web donde comparten su verdadera pasión: ser artistas del asesinato. Cuando Connor y Niki irrumpen en la intimidad de su chat; la furia de estos psicópatas comienza a crecer y no se detendrán ante nada. Con una inteligencia feroz; los Muchachos de Jack planean como venganza la muerte de los dos adolescentes y sus familias. Sin embargo; Connor y Niki no son como el resto de las víctimas de estos asesinos seriales. La pesadilla comienza y solo hay dos opciones: dejarse cazar o sobrevivir.', NOW(), NULL),
    (NULL, 1, 3, '10/2021', NOW(), NULL),
    (NULL, 1, 4, '632', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, '19,50 x 24,00 cm.', NOW(), NULL),
    (NULL, 1, 3, 'Rústica con solapas', NOW(), NULL);       


INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'El Italiano', NOW(), NULL),
    (NULL, 1, 2, '«Nada traiciona; tanto tiempo después; la mujer que desde hace dos años vive sola junto al mar con un perro y unos libros. Qué otra cosa; decide; sería el impulso;o el deseo; de permanecer abrazada a ese hombre para siempre. Ignora qué habrá en su cabeza dentro de un par de horas; cuando la claridad del día la despeje del todo e ilumine con más crudeza su conciencia. Lo cierto es que en este momento; sin duda alguna; desearía morir si él muriera.» El italiano relata una asombrosa historia de amor; mar y guerra. En los años 1942 y 1943; durante la Segunda Guerra Mundial; buzos de combate italianos hundieron o dañaron catorce barcos aliados en Gibraltar y la bahía de Algeciras. En esta novela; inspirada en hechos reales; sólo algunos personajes y situaciones son imaginarios. Elena Arbués; una librera de veintisiete años; encuentrauna madrugada mientras pasea por la playa a uno de esos buzos; desvanecido entre la arena y el agua. Al socorrerlo; la joven ignora que esa determinación cambiará su vida y que el amor será sólo parte de una peligrosa aventura.', NOW(), NULL),
    (NULL, 1, 3, '09/2021', NOW(), NULL),
    (NULL, 1, 4, '400', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, '19,50 x 24,00 cm.', NOW(), NULL),
    (NULL, 1, 3, 'Rústica con solapas', NOW(), NULL); 


INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'La ultima vez', NOW(), NULL),
    (NULL, 1, 2, 'Barcelona; años 90. Un notorio escritor argentino; recluido por una enfermedad degenerativa; escribe su última novela y teme no llegar a verla publicada. Convencido de que su fama se debe a un malentendido con respecto a su obra; que todos leen de forma equivocada; decide convocar a través de su poderosa agente literaria a un joven crítico; con la esperanza de que esta ¿última vez¿ alguien acierte a leerlo en la clave correcta. Merton; de intachable honestidad intelectual; viaja desde Buenos Aires; pero no está a salvo de una doble atracción amorosa. Aun así avanza lo suficiente en el manuscrito para entrever una develación extraordinaria. ¿Llegará a dar con esa clave elusiva? ¿O las pistas son sólo un espejismo del encargo; de la cercanía de la muerte y de la atmósfera envolvente de la casa?<br/><br/>\'En este trabajo, Miguel usa todas las herramientas que adquirió en todos estos años de oficio. Y dibuja más al Maradona que caminó sobre las aguas que al que terminó en la cruz de la que varias veces se pudo bajar. Diego siempre buscó la manera de volver a pisar una cancha. Miguel hace todo para seguir dibujando. Así es la gente que no deja de hacer lo que siempre hizo de chico: jugar a la pelota o dibujar. Toda una carrera tratando de seguir siendo un neneGuillermo Martínez nos cautiva con una intriga literaria sobre la ambigüedad de la verdad. El tormento de A por ser comprendido; el sexo en modo filosófico y los guiños sobre el sistema de consagraciones de la escena editorial se filtran de manera magistral a través de un fino humor negro. La última vez; una deslumbrante novela tragicómica en registro fáustico; confirma a su autor como uno de los grandes escritores iberoamericanos\, NOW(), NULL),
    (NULL, 1, 3, '02/2022', NOW(), NULL),
    (NULL, 1, 4, '224', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, '19,50 x 24,00 cm.', NOW(), NULL),
    (NULL, 1, 3, 'Rústica con solapas', NOW(), NULL); 


INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Un trato con el Rey de los Elfos', NOW(), NULL),
    (NULL, 1, 2, '«Los elfos vienen por dos motivos: Por la guerra y par encontrar esposa. Y en los dos casos; traen consigo la muerte.» Hace tres mil años; los humanos eran cazados por poderosas razas poseedoras de una magia salvaje; hasta que se hizo un pacto; ahora; y desde hace siglos; los elfos toman a una joven del pueblo de Luella para convertirla en su Reina Humana. Ser «la elegida» es interpretado como una sentencia de muerte por la gente del pueblo. Una marca de la que Luella; de diecinueve años; esta agradecida de haber escapado en su infancia. En cambio; ha dedicado su vida a estudiar herbologia con el objetivo de convertirse en la Unica curandera del pueblo. Hasta que el Rey Elfo llega inesperadamente ¿a buscarla? Todo cuanto Luella pensaba que sabia sobre su vida y sobre si misma era; en realidad; una mentira. Llevada a una tierra rebosante de magia salvaje; se ve obligada a ser la nueva reina de un Rey Elfo frio; pero tremendamente atractivo. Una vez alli; aprendera sobre un mundo agonizante que solo ella podra salvar. La tierra magica de Midscape tira de una parte de su corazon; su hogar y su gente tira de otra... pero lo que realmente la puede destruir es una pasion ¿que nunca busco?', NOW(), NULL),
    (NULL, 1, 3, '02/2022', NOW(), NULL),
    (NULL, 1, 4, '416', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, '19,50 x 24,00 cm.', NOW(), NULL),
    (NULL, 1, 3, 'Rústica con solapas', NOW(), NULL); 


INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'El libro mas lindo del Mundo', NOW(), NULL),
    (NULL, 1, 2, 'Elisa está por casarse con el novio ideal; hasta que la lectura de una novela la devuelve como un imán a otros tiempos. Muy a su pesar recuerda -una y otra vez- a un amor que todavía está vivo en ella: Sebastian; aquel cliente enigmático que conoció en Three Loves; la pequeña librería neoyorquina donde ella trabajaba. ¿Cuánto tiempo debe pasar para que las viejas heridas cierren? ¿Olvidamos a una persona en brazos de otra? Elisa cree que la lectura y la pasión la pueden salvar de la tristeza; pero el pasado vuelve a hacerse presente; como un perfume que nos lleva sin escalas al momento justo que creíamos ya superado. El libro más lindo del mundo es una bella historia de amor a través del tiempo; que demuestra que todo lo que amamos se convierte en ficción. Rosario Oyhanarte nos transporta a la ciudad de Nueva York tras el rastro de una trama sorprendente y enamora en cada esquina.', NOW(), NULL),
    (NULL, 1, 3, '10/1999', NOW(), NULL),
    (NULL, 1, 4, '192', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, '19,50 x 24,00 cm.', NOW(), NULL),
    (NULL, 1, 3, 'Rústica con solapas', NOW(), NULL); 


INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Moby Dick', NOW(), NULL),
    (NULL, 1, 2, 'A través de este clásico; Melville logra convertir la historia de la caza de un cachalote en toda una metáfora sobre la condición humana y sus conflictos. Moby Dick; la novela que William Faulkner hubiera querido escribir; va siempre acompañada del reconocimiento y el elogio que merece toda construcción narrativa impecable. La lucha del capitán Ahab; su terrible obsesión y la mítica persecución de la enorme ballena ha traspasado fronteras; consiguiendo así la indiscutible categoría de obra maestra de la literatura universal. Esta edición cuenta con la introducción del especialista y director del Departamento de Estudios Americanos; Andrew Delbanco; autor de Melville (2005); la biografía de referencia del autor de Moby Dick. Asimismo; incorpora una serie de ilustraciones tales como el mapa de la travesía; un plano del ballenero Pequod y otras curiosidades que enriquecen la experiencia de la lectura y proyectan la imaginación del lector. «Pero tú; oh ballena; nadas con esa calma hechicera ante quien te ve por primera vez; después de haber engañado y destruido a tantos hombres...» ', NOW(), NULL),
    (NULL, 1, 3, '10/2015', NOW(), NULL),
    (NULL, 1, 4, '752', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, '19,50 x 24,00 cm.', NOW(), NULL),
    (NULL, 1, 3, 'Rústica con solapas', NOW(), NULL); 
