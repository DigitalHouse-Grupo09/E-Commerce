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
    (16, 'Alejandro Dolina', NOW(), NULL),
	(17, 'Felipe Pigna', NOW(), NULL),
	(18, 'Disney', NOW(), NULL),
	(19, 'Gabriel Rolon', NOW(), NULL),
	(20, 'Cecilia Ce', NOW(), NULL),
    (21, 'Sabrina Raffaelli', NOW(), NULL),
	(22, 'Claudio Olijavetzky', NOW(), NULL),
	(23, 'Alberto Vazquez-Prego', NOW(), NULL),
	(24, 'Gustavo Nari', NOW(), NULL),
	(25, 'Frederic Pons', NOW(), NULL),
    (26, 'Carl Chinn', NOW(), NULL);



# ================================================

INSERT INTO `products` (`id`, `id_category`, `slug`, `created_at`, `updated_at`) VALUES
    (1, 7, 'diego-nacido-para-molestar-id-1', NOW(), NULL),
    (2, 1, 'la-bestia-id-2', NOW(), NULL),
    (3, 1, 'la-reina-id-3', NOW(), NULL),
    (4, 1, 'don-quijote-de-la-mancha-id-4', NOW(), NULL),
    (5, 6, 'el-camino-del-libertario-id-5', NOW(), NULL),
    (6, 1, 'lo-que-calla-la-sangre-id-6', NOW(), NULL),
    (7, 5, 'el-reino-de-los-malditos-id-7', NOW(), NULL),
    (8, 1, 'la-tia-cosima-id-8', NOW(), NULL),
    (9, 5, 'harry-potter-y-la-piedra-filosofal-id-9', NOW(), NULL),
    (10, 1, 'el-club-de-los-psicopatas-id-10', NOW(), NULL),
    (11, 1, 'el-italiano-id-11', NOW(), NULL),
    (12, 1, 'la-ultima-vez-id-12', NOW(), NULL),
    (13, 1, 'un-trato-con-el-rey-de-los-elfos-id-13', NOW(), NULL),
    (14, 1, 'el-libro-mas-lindo-del-mundo-id-14', NOW(), NULL),
    (15, 1, 'moby-dick-id-15', NOW(), NULL),
    (16, 1, 'notas-al-pie-id-16', NOW(), NULL),
    (17, 3, 'mitos-de-la-argentina-01-id-17', NOW(), NULL),
    (18, 3, 'mitos-de-la-argentina-02-id-18', NOW(), NULL),
    (19, 3, 'mitos-de-la-argentina-03-id-19', NOW(), NULL),
    (20, 3, 'mitos-de-la-argentina-04-id-20', NOW(), NULL),
    (21, 5, 'bosque-de-sombras-id-21', NOW(), NULL),
    (22, 5, 'el-bosque-encantado-id-22', NOW(), NULL),
    (23, 2, 'palabras-cruzadas-id-23', NOW(), NULL),
    (24, 2, 'el-precio-de-la-pasion-id-24', NOW(), NULL),
    (25, 8, 'sexo-atr-id-25', NOW(), NULL),
	(26, 8, 'carnaval-toda-la-vida-id-26', NOW(), NULL),
    (27, 4, 'hola-vegan-id-27', NOW(), NULL),
    (28, 4, 'panaderia-legado-natural-id-28', NOW(), NULL),
    (29, 4, 'asi-cocinan-los-argentinos-id-29', NOW(), NULL),
	(30, 4, 'pasteleria-urbana-id-30', NOW(), NULL),
    (31, 7, 'vladimir-putin-id-31', NOW(), NULL),
	(32, 7, 'peaky-blinders-id-32', NOW(), NULL);

# ================================================  

INSERT INTO `product_authors` (`id`, `id_product`, `id_author`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, NOW(), NULL),
    (NULL, 2, 2, NOW(), NULL),
    (NULL, 3, 3, NOW(), NULL),
    (NULL, 4, 4, NOW(), NULL),
    (NULL, 5, 5, NOW(), NULL),
    (NULL, 6, 6, NOW(), NULL),
    (NULL, 7, 7, NOW(), NULL),
    (NULL, 8, 8, NOW(), NULL),
    (NULL, 9, 9, NOW(), NULL),
    (NULL, 10, 10, NOW(), NULL),
    (NULL, 11, 11, NOW(), NULL),
    (NULL, 12, 12, NOW(), NULL),
    (NULL, 13, 13, NOW(), NULL),
    (NULL, 14, 14, NOW(), NULL),
    (NULL, 15, 15, NOW(), NULL),
    (NULL, 16, 16, NOW(), NULL),
    (NULL, 17, 17, NOW(), NULL),
    (NULL, 18, 17, NOW(), NULL),
    (NULL, 19, 17, NOW(), NULL),
    (NULL, 20, 17, NOW(), NULL),
    (NULL, 21, 18, NOW(), NULL),
    (NULL, 22, 18, NOW(), NULL),
    (NULL, 23, 19, NOW(), NULL),
    (NULL, 24, 19, NOW(), NULL),
    (NULL, 25, 20, NOW(), NULL),
    (NULL, 26, 20, NOW(), NULL),
    (NULL, 27, 21, NOW(), NULL),
    (NULL, 28, 22, NOW(), NULL),
    (NULL, 29, 23, NOW(), NULL),
    (NULL, 30, 24, NOW(), NULL),
    (NULL, 31, 25, NOW(), NULL),
    (NULL, 32, 26, NOW(), NULL);


# ================================================

INSERT INTO `product_images` (`id`, `id_product`, `src`, `priority`, `created_at`, `updated_at`) VALUES
    (NULL, 1, '/assets/img/books/book-01.jpg', 1, NOW(), NULL),
    (NULL, 2, '/assets/img/books/book-02.jpg', 1, NOW(), NULL),
    (NULL, 3, '/assets/img/books/book-03.jpg', 1, NOW(), NULL),
    (NULL, 4, '/assets/img/books/book-04.jpg', 1, NOW(), NULL),
    (NULL, 5, '/assets/img/books/book-05.jpg', 1, NOW(), NULL),
    (NULL, 6, '/assets/img/books/book-06.jpg', 1, NOW(), NULL),
    (NULL, 7, '/assets/img/books/book-07.jpg', 1, NOW(), NULL),
    (NULL, 8, '/assets/img/books/book-08.jpg', 1, NOW(), NULL),
    (NULL, 9, '/assets/img/books/book-09.jpg', 1, NOW(), NULL),
    (NULL, 10, '/assets/img/books/book-10.jpg', 1, NOW(), NULL),
    (NULL, 11, '/assets/img/books/book-11.jpg', 1, NOW(), NULL),
    (NULL, 12, '/assets/img/books/book-12.jpg', 1, NOW(), NULL),
    (NULL, 13, '/assets/img/books/book-13.jpg', 1, NOW(), NULL),
    (NULL, 14, '/assets/img/books/book-14.jpg', 1, NOW(), NULL),
    (NULL, 15, '/assets/img/books/book-15.jpg', 1, NOW(), NULL);
    (NULL, 16, '/assets/img/books/book-16.jpg', 1, NOW(), NULL);
    (NULL, 17, '/assets/img/books/book-17.jpg', 1, NOW(), NULL);
    (NULL, 18, '/assets/img/books/book-18.jpg', 1, NOW(), NULL);
    (NULL, 19, '/assets/img/books/book-19.jpg', 1, NOW(), NULL);
    (NULL, 20, '/assets/img/books/book-20.jpg', 1, NOW(), NULL);
    (NULL, 21, '/assets/img/books/book-21.jpg', 1, NOW(), NULL);
    (NULL, 22, '/assets/img/books/book-22.jpg', 1, NOW(), NULL);
    (NULL, 23, '/assets/img/books/book-23.jpg', 1, NOW(), NULL);
    (NULL, 24, '/assets/img/books/book-24.jpg', 1, NOW(), NULL);
    (NULL, 25, '/assets/img/books/book-25.jpg', 1, NOW(), NULL);
    (NULL, 26, '/assets/img/books/book-26.jpg', 1, NOW(), NULL);
    (NULL, 27, '/assets/img/books/book-27.jpg', 1, NOW(), NULL);
    (NULL, 28, '/assets/img/books/book-28.jpg', 1, NOW(), NULL);
    (NULL, 29, '/assets/img/books/book-29.jpg', 1, NOW(), NULL);
    (NULL, 30, '/assets/img/books/book-30.jpg', 1, NOW(), NULL);
    (NULL, 31, '/assets/img/books/book-31.jpg', 1, NOW(), NULL);
    (NULL, 32, '/assets/img/books/book-32.jpg', 1, NOW(), NULL);

# ================================================

INSERT INTO `product_prices` (`id`, `id_product`, `amount`, `currency`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 3670.00, 'AR$', NOW(), NULL),
    (NULL, 2, 3150.00, 'AR$', NOW(), NULL),
    (NULL, 3, 2040.00, 'AR$', NOW(), NULL),
    (NULL, 4, 3599.00, 'AR$', NOW(), NULL),
    (NULL, 5, 2490.00, 'AR$', NOW(), NULL),
    (NULL, 6, 2590.00, 'AR$', NOW(), NULL),
    (NULL, 7, 2090.00, 'AR$', NOW(), NULL),
    (NULL, 8, 949.00, 'AR$', NOW(), NULL),
    (NULL, 9, 2249.00, 'AR$', NOW(), NULL),
    (NULL, 10, 3149.00, 'AR$', NOW(), NULL),
    (NULL, 11, 3199.00, 'AR$', NOW(), NULL),
    (NULL, 12, 1900.00, 'AR$', NOW(), NULL),
    (NULL, 13, 2150.00, 'AR$', NOW(), NULL),
    (NULL, 14, 1699.00, 'AR$', NOW(), NULL),
    (NULL, 15, 2549.00, 'AR$', NOW(), NULL),
    (NULL, 16, 2890.00, 'AR$', NOW(), NULL),
    (NULL, 17, 1850.00, 'AR$', NOW(), NULL),
    (NULL, 18, 1850.00, 'AR$', NOW(), NULL),
    (NULL, 19, 1850.00, 'AR$', NOW(), NULL),
    (NULL, 20, 1850.00, 'AR$', NOW(), NULL),
    (NULL, 21, 1300.00, 'AR$', NOW(), NULL),
    (NULL, 22, 720.00, 'AR$', NOW(), NULL),
    (NULL, 23, 2520.00, 'AR$', NOW(), NULL),
    (NULL, 24, 2350.00, 'AR$', NOW(), NULL),
    (NULL, 25, 2720.00, 'AR$', NOW(), NULL),
    (NULL, 26, 2480.00, 'AR$', NOW(), NULL),
    (NULL, 27, 3930.00, 'AR$', NOW(), NULL),
    (NULL, 28, 4949.00, 'AR$', NOW(), NULL),
    (NULL, 29, 6200.00, 'AR$', NOW(), NULL),
    (NULL, 30, 3620.00, 'AR$', NOW(), NULL),
    (NULL, 31, 2290.00, 'AR$', NOW(), NULL),
    (NULL, 32, 3250.00, 'AR$', NOW(), NULL);
# ================================================

#
# Attributes
#
# 1 - title
# 2 - description
# 3 - published_at
# 4 - pages
# 5 - language
# 6 - editorial
# 7 - presentation
#

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Diego. Nacido para molestar', NOW(), NULL),
    (NULL, 1, 2, 'Esta biografía ilustrada del mejor futbolista de todos los tiempos es la biografía de Dios, sin duda.<br/><br/>Miguel Rep da a luz a su Diego desde las entrañas mismas de un argentino fanático del fútbol, la política, la literatura y el arte: desde ese corazón mixto de artista.<br/><br/>\'En este trabajo, Miguel usa todas las herramientas que adquirió en todos estos años de oficio. Y dibuja más al Maradona que caminó sobre las aguas que al que terminó en la cruz de la que varias veces se pudo bajar. Diego siempre buscó la manera de volver a pisar una cancha. Miguel hace todo para seguir dibujando. Así es la gente que no deja de hacer lo que siempre hizo de chico: jugar a la pelota o dibujar. Toda una carrera tratando de seguir siendo un nene\'.<br/><br/>DEL PRÓLOGO DE PEDRO SABORIDO', NOW(), NULL),
    (NULL, 1, 3, '10/2021', NOW(), NULL),
    (NULL, 1, 4, '192', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'Planeta', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 2, 1, 'La Bestia', NOW(), NULL),
    (NULL, 2, 2, 'Corre el año 1834 y Madrid; una pequeña ciudad que trata de abrirse paso más allá de las murallas que la rodean; sufre una terrible epidemia de cólera. Pero la peste no es lo único que aterroriza a sus habitantes: en los arrabales aparecen cadáveres desmembrados de niñas que nadie reclama. Todos los rumores apuntan a la Bestia; un ser a quien nadie ha visto pero al que todos temen..<br/><br/>\'Cuando la pequeña Clara desaparece; su hermana Lucía; junto con Donoso; un policía tuerto; y Diego; un periodista buscavidas; inician una frenética cuenta atrás para encontrar a la niña con vida. En su camino tropiezan con fray Braulio; un monje guerrillero; y con un misterioso anillo de oro con dos mazas cruzadas que todo el mundo codicia y por el que algunos están dispuestos a matar.\'.<br/><br/>De manera magistral; Carmen Mola teje; con los hilos del mejor thriller; esta novela impactante; frenética e implacable; de infierno y oscuridad.', NOW(), NULL),
    (NULL, 2, 3, '10/2021', NOW(), NULL),
    (NULL, 2, 4, '544', NOW(), NULL),
    (NULL, 2, 5, 'Español', NOW(), NULL),
    (NULL, 2, 6, 'Planeta', NOW(), NULL),
    (NULL, 2, 7, 'Rústica con solapas', NOW(), NULL);
    

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 3, 1, 'La Reina', NOW(), NULL),
    (NULL, 3, 2, 'Una monarquía incaica en América Latina y una adolescente virgen que despierta deseos prohibidos en un hombre que ha sufrido derrotas y victorias. Cusco; Perú; octubre de 1818. Un general porteño visita a Irenea; una monja de clausura que vive con sus hijas en el convento de Santa Clara. El general viene con la misión secreta de coronar a la menor de las hermanas. Shiamara y Nuna descienden de una pareja revolucionaria; Micaela Bastidas y Tupac Amaru; y por sus venas corre sangre real y mestizada. Una es negra y la otra es blanca. En el Congreso de Tucumán de 1816; ha triunfado la propuesta de Manuel Belgrano de establecer; como sistema de gobierno; una monarquía incaica en América Latina; con sede en esa ciudad peruana; entonces considerada ombligo del mundo. Mientras espera a su príncipe; Nuna; la adolescente virgen; despierta deseos prohibidos en el hombre que ha sufrido derrotas y victorias; amores y pérdidas. El hecho puede cambiar el rumbo de los acontecimientos. Gabriela Saidon narra una historia apasionante. Con el trasfondo de la ciudad colonial; de iglesias erigidas sobre las ruinas de un imperio dorado; su gran personaje; Nuna; confronta a Belgrano en el ocaso de su vida; y también a su madre; en lo que por momentos se convierte en una comedia de enredos; desafía las estrategias de un poder inclaudicable y la moral hipócrita de la época.', NOW(), NULL),
    (NULL, 3, 3, '09/2020', NOW(), NULL),
    (NULL, 3, 4, '328', NOW(), NULL),
    (NULL, 3, 5, 'Español', NOW(), NULL),
    (NULL, 3, 6, 'Planeta', NOW(), NULL),
    (NULL, 3, 7, 'Rústica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 4, 1, 'Don quijote de la mancha', NOW(), NULL),
    (NULL, 4, 2, 'Contra cuerdos y contra locos está obligado cualquier caballero andante a volver por la honra de las mujeres.\' Un éxito desde el momento de su publicación en dos partes (1605 y 1615); Don Quijote de la Mancha es probablemente la mayor novela jamás escrita. Cuenta la historia de un hidalgo que; enloquecido por la lectura excesiva; recorre España en busca de aventura; justicia y gloria. Las múltiples interpretaciones de la obra reflejan su riqueza de significados y contenidos: una crítica de las novelas de caballería; la contraposición entre realismo e idealismo; o una sátira de las ilusiones cortesanas. Con las divertidas andanzas de su ingenioso protagonista; Cervantes retrató la complejidad de lo humano y dio al arte literario su más alta expresión. Esta edición incluye una introducción que contextualiza la obra; un aparato de notas; una cronología y una bibliografía esencial; así como también varias propuestas de discusión y debate en torno a la lectura. Está al cuidado de Florencio Sevilla Arroyo; catedrático de literatura española de la Universidad Autónoma de Madrid.', NOW(), NULL),
    (NULL, 4, 3, '01/2016', NOW(), NULL),
    (NULL, 4, 4, '1216', NOW(), NULL),
    (NULL, 4, 5, 'Español', NOW(), NULL),
    (NULL, 4, 6, 'Penguin Clasicos', NOW(), NULL),
    (NULL, 4, 7, 'Rústica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 5, 1, 'El camino del libertario', NOW(), NULL),
    (NULL, 5, 2, 'Aquí está; esta es la Enciclopedia Milei definitiva: un libro en tres actos en los que el protagonista de la aparición más fulgurante que se produjo en la política argentina en años cuenta el camino que lo llevó hasta su banca de diputado nacional; a captar y calibrar como nadie el descontento de la sociedad con la casta política.<br/><br/>\'Javier Milei seleccionó para este libro sus textos más preciados en el terreno de la discusión de las ideas económicas; pulió los discursos e intervenciones de su primer año en la política; y en medio de meses muy agitados logró sentarse a pensar en su vida; en su infancia; sus afectos; sus pasiones y el modo en que sus ideas fueron evolucionando hacia la causa más importante de todas. Como él mismo dice: ¿Me terminé haciendo popular por mi defensa de la libertad?', NOW(), NULL),
    (NULL, 5, 3, '02/2022', NOW(), NULL),
    (NULL, 5, 4, '352', NOW(), NULL),
    (NULL, 5, 5, 'Español', NOW(), NULL),
    (NULL, 5, 6, 'Planeta', NOW(), NULL),
    (NULL, 5, 7, 'Rústica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 6, 1, 'Lo que calla la sangre', NOW(), NULL),
    (NULL, 6, 2, 'En la última década del siglo XIX, muerto Leandro Alem, la convulsión política abre paso a la discusión sobre el futuro de la Argentina. En este contexto, el romance entre Elena y Antonio crece en medio de una maraña de relaciones filiales y misterios por develar. Ella pertenece a la alta aristocracia porteña, pero por problemas económicos en su familia, se enfrenta al descubrimiento de un nuevo mundo en el que los entreveros sociales, la solidaridad y la pasión forjan su destino. Él, en cambio, es campesino que lucha por mejorar su posición social y sobreponerse a las circunstancias cada día. Esta novela nos emociona con la historia de dos mundos diferentes, una trama plagada de secretos y un amor que crece frente a todo.', NOW(), NULL),
    (NULL, 6, 3, '02/2022', NOW(), NULL),
    (NULL, 6, 4, '420', NOW(), NULL),
    (NULL, 6, 5, 'Español', NOW(), NULL),
    (NULL, 6, 6, 'El Emporio libros', NOW(), NULL),
    (NULL, 6, 7, 'Rústica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 7, 1, 'El reino de los malditos', NOW(), NULL),
    (NULL, 7, 2, 'Dos hermanas. Un despiadado asesinato. Una bUsqueda de venganza que desatarA el mismIsimo infierno. Y un romance embriagador. Emilia y su hermana gemela Vittoria son streghe: brujas que viven en secreto entre los humanos; evitando llamar la atenciOn y ser perseguidas. Pero una noche; Vittoria se pierde el turno de la cena en el famoso restaurante siciliano que regenta la familia. Y Emilia pronto encuentra el cuerpo de su querida gemela... profanado mAs allA de lo imaginable. Devastada; se propone encontrar al asesino de su hermana y conseguir venganza a cualquier precio; incluso si eso significa usar magia oscura; que lleva mucho tiempo prohibida. ¿CuAl es el precio de la venganza? No te pierdas la nueva saga de la autora de A la caza de Jack el Destripador.', NOW(), NULL),
    (NULL, 7, 3, '02/2022', NOW(), NULL),
    (NULL, 7, 4, '416', NOW(), NULL),
    (NULL, 7, 5, 'Español', NOW(), NULL),
    (NULL, 7, 6, 'Puck', NOW(), NULL),
    (NULL, 7, 7, 'Rústica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 8, 1, 'La tia Cosima', NOW(), NULL),
    (NULL, 8, 2, '¿Puede el amor regalar una segunda oportunidad? Cósima es una mujer en la plenitud de la vida. Psicóloga de profesión y especializada en el tratamiento del autismo infantil; posee una fundación de enorme prestigio; donde se respira un ambiente cuidado y buen humor. Allí trabaja con perros especialmente adiestrados para ayudar a los niños con alguna condición del espectro autista. Es feliz con su trabajo; con sus amigos y sus sobrinos; a quienes dedica los pocos ratos libres de que dispone. En su adolescencia; sin embargo; padeció la crueldad de algunos compañeros de escuela; experiencia que la marcó profundamente; al tiempo que le sirvió para convertirse en la mujer comprometida que es hoy. Si bien esa etapa de sufrimiento quedó atrás; un día irrumpe de nuevo para ofrecerle algo que quizá deseaba: un amor inesperado; una pasión que la desborda; un abismo de sorpresa e incertidumbre. ¿Podrá ese amor reparar el daño que no se olvida? ¿Podrá deshacer la vergüenza; la frustración y el enojo? Con su nueva novela; Florencia Bonelli logra otra vez el misterio de la devoción lectora con una historia que perdura más allá de la última página.', NOW(), NULL),
    (NULL, 8, 3, '09/2020', NOW(), NULL),
    (NULL, 8, 4, '576', NOW(), NULL),
    (NULL, 8, 5, 'Español', NOW(), NULL),
    (NULL, 8, 6, 'Suma de Letras', NOW(), NULL),
    (NULL, 8, 7, 'Rústica con solapas', NOW(), NULL);

 INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 9, 1, 'Harry Potter y la Piedra Filosofal', NOW(), NULL),
    (NULL, 9, 2, 'Harry Potter se ha quedado huérfano y vive en casa de sus abominables tíos y del insoportable primo Dudley. Se siente muy triste y solo; hasta que un buen día recibe una carta que cambiará su vida para siempre. En ella le comunican que ha sido aceptado como alumno en el colegio interno Hogwarts de magia y hechicería. A partir de ese momento; la suerte de Harry da un vuelco espectacular. En esa escuela tan especial aprenderá encantamientos; trucos fabulosos y tácticas de defensa contra las malas artes. Se convertirá en el campeón escolar de quidditch; especie de fútbol aéreo que se juega montado sobre escobas; y hará un puñado de buenos amigos... aunque también algunos temibles enemigos. Pero; sobre todo; conocerá los secretos que le permitirán cumplir con su destino. Pues; aunque no lo parezca a primera vista; Harry no es un chico común y corriente. ¡Es un verdadero mago!', NOW(), NULL),
    (NULL, 9, 3, '06/2020', NOW(), NULL),
    (NULL, 9, 4, '288', NOW(), NULL),
    (NULL, 9, 5, 'Español', NOW(), NULL),
    (NULL, 9, 6, 'Salamandra Bolsito', NOW(), NULL),
    (NULL, 9, 7, 'Rústica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 10, 1, 'El club de los Psicopatas', NOW(), NULL),
    (NULL, 10, 2, 'Alpha; Bravo; Charlie; Delta y Easy se hacen llamar los Muchachos de Jack; en honor a Jack el Destripador. Entre ellos no se conocen más que por un chat en la Dark Web donde comparten su verdadera pasión: ser artistas del asesinato. Cuando Connor y Niki irrumpen en la intimidad de su chat; la furia de estos psicópatas comienza a crecer y no se detendrán ante nada. Con una inteligencia feroz; los Muchachos de Jack planean como venganza la muerte de los dos adolescentes y sus familias. Sin embargo; Connor y Niki no son como el resto de las víctimas de estos asesinos seriales. La pesadilla comienza y solo hay dos opciones: dejarse cazar o sobrevivir.', NOW(), NULL),
    (NULL, 10, 3, '10/2021', NOW(), NULL),
    (NULL, 10, 4, '632', NOW(), NULL),
    (NULL, 10, 5, 'Español', NOW(), NULL),
    (NULL, 10, 6, 'Grupo Zeta', NOW(), NULL),
    (NULL, 10, 7, 'Rústica con solapas', NOW(), NULL);       

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 11, 1, 'El Italiano', NOW(), NULL),
    (NULL, 11, 2, 'Nada traiciona; tanto tiempo después; la mujer que desde hace dos años vive sola junto al mar con un perro y unos libros. Qué otra cosa; decide; sería el impulso;o el deseo; de permanecer abrazada a ese hombre para siempre. Ignora qué habrá en su cabeza dentro de un par de horas; cuando la claridad del día la despeje del todo e ilumine con más crudeza su conciencia. Lo cierto es que en este momento; sin duda alguna; desearía morir si él muriera.» El italiano relata una asombrosa historia de amor; mar y guerra. En los años 1942 y 1943; durante la Segunda Guerra Mundial; buzos de combate italianos hundieron o dañaron catorce barcos aliados en Gibraltar y la bahía de Algeciras. En esta novela; inspirada en hechos reales; sólo algunos personajes y situaciones son imaginarios. Elena Arbués; una librera de veintisiete años; encuentrauna madrugada mientras pasea por la playa a uno de esos buzos; desvanecido entre la arena y el agua. Al socorrerlo; la joven ignora que esa determinación cambiará su vida y que el amor será sólo parte de una peligrosa aventura.', NOW(), NULL),
    (NULL, 11, 3, '09/2021', NOW(), NULL),
    (NULL, 11, 4, '400', NOW(), NULL),
    (NULL, 11, 5, 'Español', NOW(), NULL),
    (NULL, 11, 6, 'Alfaguara', NOW(), NULL),
    (NULL, 11, 7, 'Rústica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 12, 1, 'La ultima vez', NOW(), NULL),
    (NULL, 12, 2, 'Barcelona; años 90. Un notorio escritor argentino; recluido por una enfermedad degenerativa; escribe su última novela y teme no llegar a verla publicada. Convencido de que su fama se debe a un malentendido con respecto a su obra; que todos leen de forma equivocada; decide convocar a través de su poderosa agente literaria a un joven crítico; con la esperanza de que esta ¿última vez¿ alguien acierte a leerlo en la clave correcta. Merton; de intachable honestidad intelectual; viaja desde Buenos Aires; pero no está a salvo de una doble atracción amorosa. Aun así avanza lo suficiente en el manuscrito para entrever una develación extraordinaria. ¿Llegará a dar con esa clave elusiva? ¿O las pistas son sólo un espejismo del encargo; de la cercanía de la muerte y de la atmósfera envolvente de la casa?<br/><br/>\'En este trabajo, Miguel usa todas las herramientas que adquirió en todos estos años de oficio. Y dibuja más al Maradona que caminó sobre las aguas que al que terminó en la cruz de la que varias veces se pudo bajar. Diego siempre buscó la manera de volver a pisar una cancha. Miguel hace todo para seguir dibujando. Así es la gente que no deja de hacer lo que siempre hizo de chico: jugar a la pelota o dibujar. Toda una carrera tratando de seguir siendo un neneGuillermo Martínez nos cautiva con una intriga literaria sobre la ambigüedad de la verdad. El tormento de A por ser comprendido; el sexo en modo filosófico y los guiños sobre el sistema de consagraciones de la escena editorial se filtran de manera magistral a través de un fino humor negro. La última vez; una deslumbrante novela tragicómica en registro fáustico; confirma a su autor como uno de los grandes escritores iberoamericanos', NOW(), NULL),
    (NULL, 12, 3, '02/2022', NOW(), NULL),
    (NULL, 12, 4, '224', NOW(), NULL),
    (NULL, 12, 5, 'Español', NOW(), NULL),
    (NULL, 12, 6, 'Planeta', NOW(), NULL),
    (NULL, 12, 7, 'Rústica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 13, 1, 'Un trato con el Rey de los Elfos', NOW(), NULL),
    (NULL, 13, 2, 'Los elfos vienen por dos motivos: Por la guerra y par encontrar esposa. Y en los dos casos; traen consigo la muerte.» Hace tres mil años; los humanos eran cazados por poderosas razas poseedoras de una magia salvaje; hasta que se hizo un pacto; ahora; y desde hace siglos; los elfos toman a una joven del pueblo de Luella para convertirla en su Reina Humana. Ser la elegida» es interpretado como una sentencia de muerte por la gente del pueblo. Una marca de la que Luella; de diecinueve años; esta agradecida de haber escapado en su infancia. En cambio; ha dedicado su vida a estudiar herbologia con el objetivo de convertirse en la Unica curandera del pueblo. Hasta que el Rey Elfo llega inesperadamente ¿a buscarla? Todo cuanto Luella pensaba que sabia sobre su vida y sobre si misma era; en realidad; una mentira. Llevada a una tierra rebosante de magia salvaje; se ve obligada a ser la nueva reina de un Rey Elfo frio; pero tremendamente atractivo. Una vez alli; aprendera sobre un mundo agonizante que solo ella podra salvar. La tierra magica de Midscape tira de una parte de su corazon; su hogar y su gente tira de otra... pero lo que realmente la puede destruir es una pasion ¿que nunca busco?', NOW(), NULL),
    (NULL, 13, 3, '02/2022', NOW(), NULL),
    (NULL, 13, 4, '416', NOW(), NULL),
    (NULL, 13, 5, 'Español', NOW(), NULL),
    (NULL, 13, 6, 'Umbriel Editores', NOW(), NULL),
    (NULL, 13, 7, 'Rústica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 14, 1, 'El libro mas lindo del Mundo', NOW(), NULL),
    (NULL, 14, 2, 'Elisa está por casarse con el novio ideal; hasta que la lectura de una novela la devuelve como un imán a otros tiempos. Muy a su pesar recuerda -una y otra vez- a un amor que todavía está vivo en ella: Sebastian; aquel cliente enigmático que conoció en Three Loves; la pequeña librería neoyorquina donde ella trabajaba. ¿Cuánto tiempo debe pasar para que las viejas heridas cierren? ¿Olvidamos a una persona en brazos de otra? Elisa cree que la lectura y la pasión la pueden salvar de la tristeza; pero el pasado vuelve a hacerse presente; como un perfume que nos lleva sin escalas al momento justo que creíamos ya superado. El libro más lindo del mundo es una bella historia de amor a través del tiempo; que demuestra que todo lo que amamos se convierte en ficción. Rosario Oyhanarte nos transporta a la ciudad de Nueva York tras el rastro de una trama sorprendente y enamora en cada esquina.', NOW(), NULL),
    (NULL, 14, 3, '10/1999', NOW(), NULL),
    (NULL, 14, 4, '192', NOW(), NULL),
    (NULL, 14, 5, 'Español', NOW(), NULL),
    (NULL, 14, 6, 'Vergara', NOW(), NULL),
    (NULL, 14, 7, 'Rústica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 15, 1, 'Moby Dick', NOW(), NULL),
    (NULL, 15, 2, 'A través de este clásico; Melville logra convertir la historia de la caza de un cachalote en toda una metáfora sobre la condición humana y sus conflictos. Moby Dick; la novela que William Faulkner hubiera querido escribir; va siempre acompañada del reconocimiento y el elogio que merece toda construcción narrativa impecable. La lucha del capitán Ahab; su terrible obsesión y la mítica persecución de la enorme ballena ha traspasado fronteras; consiguiendo así la indiscutible categoría de obra maestra de la literatura universal. Esta edición cuenta con la introducción del especialista y director del Departamento de Estudios Americanos; Andrew Delbanco; autor de Melville (2005); la biografía de referencia del autor de Moby Dick. Asimismo; incorpora una serie de ilustraciones tales como el mapa de la travesía; un plano del ballenero Pequod y otras curiosidades que enriquecen la experiencia de la lectura y proyectan la imaginación del lector. Pero tú; oh ballena; nadas con esa calma hechicera ante quien te ve por primera vez; después de haber engañado y destruido a tantos hombres...» ', NOW(), NULL),
    (NULL, 15, 3, '10/2015', NOW(), NULL),
    (NULL, 15, 4, '752', NOW(), NULL),
    (NULL, 15, 5, 'Español', NOW(), NULL),
    (NULL, 15, 6, 'Penguin Clasicos', NOW(), NULL),
    (NULL, 15, 7, 'Rústica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Notas al pie', NOW(), NULL),
    (NULL, 1, 2, 'Luego de la muerte del escritor Sergei Vidal Morozov; su casa editorial le encarga a Franco de Robertis una edición anotada de cuentos póstumos. La elección no es casual: De Robertis ha sido; a lo largo de gran parte de la carrera del reconocido autor; su colaborador más estrecho; un subordinado intelectual ¿también emocional¿ en una relación que; como sostiene el propio anotador; tiene ¿la edad de su memoria?<br/><br/>Sin embargo; una vez lanzado a su métier; las cosas parecen salirse de cauce; y aquello que de entrada estaba planeado como una tarea panegírica cede el paso a una inesperada incontinencia textual. De Robertis destila en sus notas una historia otra que poco parece tener que ver con el libro madre. Una trama subterránea poblada de situaciones inéditas y personajes de lo más variopintos: el mismísimo Morozov y un documental hecho con un grupo de niños actores; amores cruzados; un diamante maldito; traiciones; secretos; celos; luces y sombras.\'.<br/><br/>Literaria; teatral; policial; infinita; alucinada; profunda y a la vez divertida: así es Notas al pie; la nueva novela de Alejandro Dolina. Un universo con sus propias reglas que se despliega frente al lector como un juego de cajas chinas. Una arquitectura exquisita que solo la maestría y la sensibilidad del autor de clásicos como Crónicas del Ángel Gris y Cartas marcadas son capaces de sostener.', NOW(), NULL),
    (NULL, 1, 3, '10/2021', NOW(), NULL),
    (NULL, 1, 4, '480', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'Planeta', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);
	
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Mitos de la Historia Argentina 1', NOW(), NULL),
    (NULL, 1, 2, 'Este libro intenta acercar la historia argentina a nuestra gente. Para que la quieran; para que la reconquisten; para que disfruten de una maravillosa herencia común; que como todos los bienes de nuestro querido país está mal repartida y apropiada indebidamente. Esta edición corregida y aumentada del primer volumen que forma la serie Los mitos de la historia argentina se propone cumplir de manera más integral esa tarea: acercar la historia nacional a los lectores; haciendo la historia de todos. Con Mitos 1; Felipe Pigna renueva la convocatoria a discutir e interesarnos por saber de dónde venimos y quiénes somos; ya que 'la historia de un país es su identidad; es todo lo que nos pasó como sociedad desde que nacimos hasta el presente', NOW(), NULL),
    (NULL, 1, 3, '01/2019', NOW(), NULL),
    (NULL, 1, 4, '432', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'Booket', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);
	
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Mitos de la Historia Argentina 2', NOW(), NULL),
    (NULL, 1, 2, 'Felipe Pigna nos convoca para conocer nuestra historia; para saber de dónde venimos; por qué estamos como estamos; quiénes somos y quiénes podemos ser. El estudio de vidas entregadas apasionadamente a una causa -Bouchard; Güemes; Dorrego; de personalidades polémicas -Rosas; Sarmiento- y de temas con una asombrosa resonancia actual el genocidio de la 'conquista del desierto'; la primera deuda externa argentina; las protestas sociales de hace un siglo le permitirá al lector comprobar que la historia argentina no se repite; se continúa.', NOW(), NULL),
    (NULL, 1, 3, '01/2019', NOW(), NULL),
    (NULL, 1, 4, '496', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'Booket', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);
	
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Mitos de la Historia Argentina 3', NOW(), NULL),
    (NULL, 1, 2, 'En este nuevo tomo de Los mitos de la historia argentina; el autor recorre una etapa marcada por hechos y procesos tan importantes como la llegada del radicalismo al gobierno; los conflidos sociales de la Semana Trágica; las huelgas patagónicas y los fusilamientos de más de mil quinientos trabajadores; la división del radicalismo entre alvearistas e yrigoyenistas; los avatares de la nacionalización del petróleo; el primer golpe de Estado de la Argentina en el siglo xx; la Década lnfame. Los negociados; la tortura; y también el anarquismo expropiador con personajes novelescos como Severino Di Giovanni; la caída del presidente Ortiz; la asunción de Castillo; la vuelta del fraude electoral y el triunfo de la llamada revolución del 4 de junio de 1943; que marca el ingreso de Perón a la política.', NOW(), NULL),
    (NULL, 1, 3, '04/2019', NOW(), NULL),
    (NULL, 1, 4, '350', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'Booket', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);
	
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Mitos de la Historia Argentina 4', NOW(), NULL),
    (NULL, 1, 2, 'Pocos procesos de la historia argentina despiertan tanto interés; local e internacional; como el que marca los orígenes; consolidación y perdurabilidad del peronismo. Es seguramente uno de los fenómenos históricos más particulares en América Latina y el mundo; y que despierta mayores polémicas; rodeadas aún por pasiones e interpretaciones cruzadas; a favor y en contra. Este libro recorre el apasionante período de 1943 a 1955; para develar los aspectos controversiales del movimiento político fundado por Juan Domingo Perón; las transformaciones que impulsó en el país durante sus primeros gobiernos; y la personalidad y la acción de su líder y de la figura mítica por excelencia de esta etapa: Evita; la mujer ¿más amada y más odiada? de la historia argentina.', NOW(), NULL),
    (NULL, 1, 3, '04/2019', NOW(), NULL),
    (NULL, 1, 4, '376', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'Booket', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);
	
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Frozen 2 Bosque de Sombras', NOW(), NULL),
    (NULL, 1, 2, 'Anna de Arendelle no quiere más que ayudar a su hermana mayor Elsa. Sin embargo; desde su coronación; todo parece indicar que ella no la necesita. Ahora Elsa está a punto de embarcarse en un viaje alrededor del mundo; dejando a Anna atrás.</br></br>Sin embargo; una misteriosa enfermedad llega a Arendelle y Elsa debe retrasar su viaje; dándole la oportunidad perfecta a Anna de sentirse útil finalmente. Cuando Anna descubre una habitación secreta en el castillo; recita un hechizo que espera cumpla su deseo de curar la enfermedad de Arendelle. Pero; en vez de eso; en un sueño siniestro cobra vida: el gigantesco lobo de las pesadillas de la infancia de Anna.</br></br>Acompañada por su hermana; Olaf; Kristoff y Sven; Anna debe aventurarse a lo desconocido para detener al temible lobo antes de que destruya todo aquello que ama. En su travesía descubrirá mitos y maravillas únicas; pero necesitará de mucha valentía; sinceridad y; sobre todo; amor.</br></br>Esta novela original une las aventuras épicas de Frozen y Frozen II.', NOW(), NULL),
    (NULL, 1, 3, '11/2019', NOW(), NULL),
    (NULL, 1, 4, '472', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'Planeta', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);
	
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Frozen 2 El Bosque Encantado', NOW(), NULL),
    (NULL, 1, 2, 'A pesar del peligro; Elsa se siente obligada a seguir la voz que la llama al Bosque Encantado. Pero no estará sola; su valiente hermana; Anna; y sus amigos Kristoff; Sven y Olaf; el muñeco de nieve; la acompañarán a una aventura llena de magia que definirá el futuro del reino de Arendelle.', NOW(), NULL),
    (NULL, 1, 3, '10/2019', NOW(), NULL),
    (NULL, 1, 4, '144', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'Planeta', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);
	
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Palabras Cruzadas', NOW(), NULL),
    (NULL, 1, 2, 'Hace poco más de diez años; Gabriel Rolón publicaba su segundo libro. Después del éxito rotundo y casi sin precedentes de Historias de diván; Palabras cruzadas llegaba a las librerías para reconfirmar el lugar central de su autor en la industria editorial de los últimos veinte años en la Argentina. Pero también ¿y en esto marca un verdadero hito¿; terminaba de consolidar un vínculo inédito hasta ese momento entre el Psicoanálisis y un público lector cada vez más numeroso. Y no era para menos. En ese camino que el libro proponía ¿propone¿; en ese tránsito desde el dolor hacia la verdad; los casos narrados dejaban honda su huella en quienes se atrevían al desafío. La angustia; los miedos; la sexualidad; el amor y el desamor; las adicciones y la soledad se dan cita en un viaje que paciente y psicoanalista emprenden juntos. Una travesía las más de las veces dolorosa; sí; pero que una vez cumplida se vive como transformadora; poderosa; irreductiblemente humana. En esta edición definitiva y revisada; que incluye un caso nuevo; Rolón se lee a sí mismo. Se anima a interpelar ese reflejo que le devuelve un espejo anclado hace más de una década; en una sociedad otra en la que los debates por las políticas de género; la legalidad del consumo de marihuana y los usos disruptivos de la lengua ¿de un idioma¿; entre otras cosas; no tenían ni la visibilidad ni el peso específico que tienen hoy. Y es ahí; en ese gesto genuino; tan franco y veraz hacia los lectores (los de entonces; los de ahora); en donde el autor hace que Palabras cruzadas se vuelva; una vez más; un libro vital; orgánico; indispensable.', NOW(), NULL),
    (NULL, 1, 3, '09/2021', NOW(), NULL),
    (NULL, 1, 4, '288', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'Planeta', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);
	
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'El Precio de la Pasion', NOW(), NULL),
    (NULL, 1, 2, 'El nuevo libro de Gabriel Rolón echa anclas en las aguas profundas de la pasión. Esa fuerza primitiva que grita en nosotros desde el principio de los tiempos; y nos lleva a un límite en el que la distancia entre el placer y el dolor es nada más que una respiración. Un territorio habitado por dioses y demonios; por héroes épicos que han dado batallas antológicas; y esos otros cotidianos y de a pie; héroes anónimos que dan pelea poniendo en juego su piel con la misma intensidad; con el mismo arrebato. Mitos e historias: hombres y dioses que caminan de la mano por ese borde en el que la razón trastabilla y pierde sus herramientas para explicar el mundo.</br></br>Y es ahí; entonces; donde El precio de la pasión recurre a la mitología; la literatura; la música; el cine y; cómo no; al consultorio del analista para llevar algo de luz a la penumbra de ese abismo que nos atrae de manera irresistible. El amor; el desamor; la soledad; la desesperación; el deseo; la angustia; los celos; el duelo; el éxito; el fracaso y la felicidad se dan cita en este ¿breve ensayo nocturno¿ en el que Gabriel Rolón encuentra; una vez más; ese tono ajustado; preciso; siempre certero; para decirnos que cielo e infierno están muy cerca; pero que entre ellos hay toda una vida para sentir.', NOW(), NULL),
    (NULL, 1, 3, '09/2019', NOW(), NULL),
    (NULL, 1, 4, '190', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'Planeta', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);
	
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Sexo ATR', NOW(), NULL),
    (NULL, 1, 2, '¿Sexo ATR trata de naturalizar y hablar de sexo con un lenguaje cómodo y accesible. Cuasi ATP. Se trata de liberarnos; desbloquearnos; y si es con ritmo y sustancia; mejor. Bueno; sin sustancia porque en la cama no ayuda ni un poco. Mi idea con este libro es acompañarte en eso; dándote info clara; precisa y concisa. Habilitarte y empoderarte (porque el conocimiento es poder) para vivir tu sexualidad ATR?.</br></br>La Lic. Cecilia Ce nos ofrece en este libro-guía información sexual valiosísima de una manera gráfica; divertida; empática y respetuosa; con la intención de que cada uno haga su propio recorrido de autodescubrimiento y reafirmación; para disfrutar de la sexualidad en libertad. Este es el libro sobre sexo que todos siempre ansiamos tener. Esta es la educación sexual que queremos.', NOW(), NULL),
    (NULL, 1, 3, '09/2019', NOW(), NULL),
    (NULL, 1, 4, '144', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'Planeta', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);
	
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Carnaval toda la vida', NOW(), NULL),
    (NULL, 1, 2, '¿El sexo no es lo que te venden afuera; es lo que vos quieras construir desde adentro?</br></br>Luego de su primer libro; Sexo ATR. La educación sexual que queremos; en el que exploramos la anatomía genital humana; el deseo; la estimulación; la masturbación y las artes anales; entre tantos otros temas; con el simple y más maravilloso objetivo de entendernos mejor en el universo del placer; en esta nueva obra; la licenciada Cecilia Ce nos invita a participar de una fiesta de reconocimiento y aprendizaje mayor para librarnos de culpas y frustraciones sin sentido: ¿cómo funcionan la autoestima y las exigencias en la cama? ¿De qué creencias y pensamientos sobre la sexualidad partimos? ¿De dónde salen tantos mitos sobre la sexualidad que nos alejan del placer y generan ansiedades? ¿Qué sabemos sobre el orgasmo; sobre cuál es la mejor manera de vinculearnos; del sexo de a muchos; del sexo en las embarazadas; del sexo posparto y de posiciones que nos ayuden a ampliar el goce? Carnaval toda la vida (o Sexo ATR volumen II) llegó para que todas las personas nos sintamos acompañadas y empoderadas; y para que podamos construir una bella autoestima sexual que nos lleve a vivir experiencias placenteras.</br></br>Que empiece el carnaval.', NOW(), NULL),
    (NULL, 1, 3, '10/2020', NOW(), NULL),
    (NULL, 1, 4, '200', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'Planeta', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Hola Vegan', NOW(), NULL),
    (NULL, 1, 2, 'Un libro pensado para abrir y facilitar tu camino hacia el veganismo. Hola Vegan surgió imaginando el libro que nos hubiese gustado leer cuando recién nos hicimos veganas, por eso lo pensamos como un ABC, un manual de cocina. Pero ojo, no está pensado solamente para las personas que se adentran en el veganismo, también es ideal para quienes están en transición, para aquellas personas que ya no comen carnes pero les resulta imposible dejar los lácteos y para quienes comen de todo, pero quieren empezar a ampliar la porción de vegetales que llevan a la mesa.', NOW(), NULL),
    (NULL, 1, 3, '11/2021', NOW(), NULL),
    (NULL, 1, 4, '296', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'Planeta', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);
	
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Panaderia Legado Natural', NOW(), NULL),
    (NULL, 1, 2, 'Legado... una palabra que revela la esencia de este libro. Claudio Olijavetzky nos brinda un recorrido por las apasionantes historias, recetas y procedimientos para hacer desde una simple masa madre hasta un magnífico croissant. De su mano, descubriremos la magia de la transformación de las harinas y levaduras en ese místico alimento que es el pan. Clásicos, integrales, sin gluten, con sabores especiales, viennoiserie...</br>Los invitamos a adentrarse en este mundo de sabores que hacen agua la boca y nos transportan a paisajes diferentes.</br>"Mi vida está ligada al pan desde mi infancia cuando, por un accidente de tránsito, terminé dentro de una panadería con mi primer maestro, Nino. Hoy, después de 35 años de aquel momento, sé que lo mejor que podemos dejar en una persona es un lindo recuerdo y una enseñanza, y tengo este privilegio en mis manos desde hace 20 años, gracias a mi profesión de docente".', NOW(), NULL),
    (NULL, 1, 3, '11/2021', NOW(), NULL),
    (NULL, 1, 4, '264', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'V&R', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Asi cocinan los Argentinos', NOW(), NULL),
    (NULL, 1, 2, '¡Ideal para recrear los sabores argentinos en cualquier lugar del mundo! RECETAS TRADICIONALES Y ACTUALES: Empanadas; Asados y parrillas; Verduras y rellenos; Salsas y vinagretas; Milanesas y croquetas; Pucheros; locros y humitas; Guisos; cazuelas y escabeches; Tortillas y revueltos; Pasteles; tartas y budines; Pastas; Postres y dulces; El mate. // Enjoy the true Argentinian experience at home! TRADITIONAL AND CONTEMPORARY RECIPES: Turnovers; Roasts and Grills; Vegetables and Fillings; Sauces and Vinaigrettes; Breaded Steaks and Croquettes; Beef Pots; Locro Stews and Corn Puddings and Pies; Stews; Casseroles and Soused Meats; Spanish Omelettes and Scrambles; Pies; Tarts and Loaf Cakes; Pasta; Desserts and Sweet Spreads; The Mate Drink', NOW(), NULL),
    (NULL, 1, 3, '02/2022', NOW(), NULL),
    (NULL, 1, 4, '360', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'EL ATENEO', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);
	
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Pasteleria Urbana', NOW(), NULL),
    (NULL, 1, 2, 'Cuán inagotable es la creatividad de los profesionales; como Nari; en concebir infinitas variantes de los cuatro jinetes de la pastelería: harina; azúcar; huevos y manteca'. (Osvaldo Gross)</br></br>8 partes con soluciones para cada momento del día; desde esos postres que siempre nos acompañaron en nuestras vidas; hasta cómo servir un té haciendo de nuestra casa un hotel de cinco estrellas. 60 recetas paso a paso; explicadas de forma simple; pero con técnica exacta; para obtener resultados perfectos. Alfajores; budines; cookies; tortas clásicas y modernas; trufas ¡y muchísmas delicias más!', NOW(), NULL),
    (NULL, 1, 3, '11/2019', NOW(), NULL),
    (NULL, 1, 4, '176', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'EL ATENEO', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);
	
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Vladimir Putin', NOW(), NULL),
    (NULL, 1, 2, 'Vladimir Putin es aún un enigma. ¿Cuál es su objetivo? ¿Afirmar su poder personal y el de su clan en la línea de los autócratas exitosos en el Kremlin durante siglos? ¿Restaurar la grandeza de su país y lograr una síntesis de la historia de Rusia; de los zares a los soviéticos? ¿Cómo ascendió de teniente coronel de la KGB a líder de una de las principales potencias del mundo? ¿Quién es este hombre que parece usar una máscara?</br>A través de una investigación rigurosa; con testimonios inéditos; Frédéric Pons responde a estas y otras preguntas. Sin ocultar nada; pinta un vívido retrato del amo del Kremlin. Desde su infancia en un modesto barrio de Leningrado y sus sueños de juventud hasta las etapas decisivas de su formidable ascenso; que incluyen el tramado de sus redes de poder. Con claridad y fundamento; demuestra hasta qué punto este hombre encarna las aspiraciones y los temores de Rusia desde la caída del comunismo.</br>En el contexto actual; este libro es una lectura esencial para descifrar la personalidad; los objetivos y la estrategia de este protagonista de la historia contemporánea.', NOW(), NULL),
    (NULL, 1, 3, '04/2017', NOW(), NULL),
    (NULL, 1, 4, '368', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'EL ATENEO', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);
	
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 1, 1, 'Peaky Blinders: La verdadera historia.', NOW(), NULL),
    (NULL, 1, 2, 'La verdadera historia de la banda criminal mas famosa de Gran Bretaña. Billy Kimber era un delincuente astuto con una personalidad magnetica que se hizo con el liderazgo de la banda criminal mas celebre de Gran Bretaña: los Peaky Blinders; que dominaban los negocios ilegales de proteccion de comercios y las apuestas de las carreras de caballos. Hoy; gracias a la exitosa serie de television; los Peaky Blinders son sinonimo de arrogancia; glamour y violencia desenfrenada. Pero ¿quienes fueron los verdaderos Peaky Blinders? Tras decadas de estudio; el historiador Carl Chinn; nieto de un miembro de los Peaky Blinders e hijo de un corredor de apuestas ilegales de Birmingham; se basa en material inedito y entrevistas con descendientes de los integrantes de la banda para ofrecer un relato fascinante sobre el auge y la caida de la infame mafia que sembro el caos en Inglaterra en un momento en que la clase obrera del Imperio britanico estaba en pie de guerra. Estos son los Peaky Blinders y esta es su verdadera historia.', NOW(), NULL),
    (NULL, 1, 3, '02/2022', NOW(), NULL),
    (NULL, 1, 4, '256', NOW(), NULL),
    (NULL, 1, 5, 'Español', NOW(), NULL),
    (NULL, 1, 6, 'PRINCIPAL DE LOS LIBROS', NOW(), NULL),
    (NULL, 1, 7, 'Rústica con solapas', NOW(), NULL);