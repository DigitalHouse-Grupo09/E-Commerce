# ================================================================================================
# DUMMY DATA
# ================================================================================================

USE `heroku_33299a48260ae4d`;

# ================================================

#
# Clean database
#
# DELETE FROM product_authors;
# TRUNCATE product_authors;
# DELETE FROM product_images;
# TRUNCATE product_images;
# DELETE FROM product_prices;
# TRUNCATE product_prices;
# DELETE FROM product_attributes;
# TRUNCATE product_attributes;
# DELETE FROM products;
# DELETE FROM authors;
#

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
    (NULL, 15, '/assets/img/books/book-15.jpg', 1, NOW(), NULL),
    (NULL, 16, '/assets/img/books/book-16.jpg', 1, NOW(), NULL),
    (NULL, 17, '/assets/img/books/book-17.jpg', 1, NOW(), NULL),
    (NULL, 18, '/assets/img/books/book-18.jpg', 1, NOW(), NULL),
    (NULL, 19, '/assets/img/books/book-19.jpg', 1, NOW(), NULL),
    (NULL, 20, '/assets/img/books/book-20.jpg', 1, NOW(), NULL),
    (NULL, 21, '/assets/img/books/book-21.jpg', 1, NOW(), NULL),
    (NULL, 22, '/assets/img/books/book-22.jpg', 1, NOW(), NULL),
    (NULL, 23, '/assets/img/books/book-23.jpg', 1, NOW(), NULL),
    (NULL, 24, '/assets/img/books/book-24.jpg', 1, NOW(), NULL),
    (NULL, 25, '/assets/img/books/book-25.jpg', 1, NOW(), NULL),
    (NULL, 26, '/assets/img/books/book-26.jpg', 1, NOW(), NULL),
    (NULL, 27, '/assets/img/books/book-27.jpg', 1, NOW(), NULL),
    (NULL, 28, '/assets/img/books/book-28.jpg', 1, NOW(), NULL),
    (NULL, 29, '/assets/img/books/book-29.jpg', 1, NOW(), NULL),
    (NULL, 30, '/assets/img/books/book-30.jpg', 1, NOW(), NULL),
    (NULL, 31, '/assets/img/books/book-31.jpg', 1, NOW(), NULL),
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
    (NULL, 1, 2, 'Esta biograf??a ilustrada del mejor futbolista de todos los tiempos es la biograf??a de Dios, sin duda.<br/><br/>Miguel Rep da a luz a su Diego desde las entra??as mismas de un argentino fan??tico del f??tbol, la pol??tica, la literatura y el arte: desde ese coraz??n mixto de artista.<br/><br/>\'En este trabajo, Miguel usa todas las herramientas que adquiri?? en todos estos a??os de oficio. Y dibuja m??s al Maradona que camin?? sobre las aguas que al que termin?? en la cruz de la que varias veces se pudo bajar. Diego siempre busc?? la manera de volver a pisar una cancha. Miguel hace todo para seguir dibujando. As?? es la gente que no deja de hacer lo que siempre hizo de chico: jugar a la pelota o dibujar. Toda una carrera tratando de seguir siendo un nene\'.<br/><br/>DEL PR??LOGO DE PEDRO SABORIDO', NOW(), NULL),
    (NULL, 1, 3, '10/2021', NOW(), NULL),
    (NULL, 1, 4, '192', NOW(), NULL),
    (NULL, 1, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 1, 6, 'Planeta', NOW(), NULL),
    (NULL, 1, 7, 'R??stica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 2, 1, 'La Bestia', NOW(), NULL),
    (NULL, 2, 2, 'Corre el a??o 1834 y Madrid; una peque??a ciudad que trata de abrirse paso m??s all?? de las murallas que la rodean; sufre una terrible epidemia de c??lera. Pero la peste no es lo ??nico que aterroriza a sus habitantes: en los arrabales aparecen cad??veres desmembrados de ni??as que nadie reclama. Todos los rumores apuntan a la Bestia; un ser a quien nadie ha visto pero al que todos temen..<br/><br/>\'Cuando la peque??a Clara desaparece; su hermana Luc??a; junto con Donoso; un polic??a tuerto; y Diego; un periodista buscavidas; inician una fren??tica cuenta atr??s para encontrar a la ni??a con vida. En su camino tropiezan con fray Braulio; un monje guerrillero; y con un misterioso anillo de oro con dos mazas cruzadas que todo el mundo codicia y por el que algunos est??n dispuestos a matar.\'.<br/><br/>De manera magistral; Carmen Mola teje; con los hilos del mejor thriller; esta novela impactante; fren??tica e implacable; de infierno y oscuridad.', NOW(), NULL),
    (NULL, 2, 3, '10/2021', NOW(), NULL),
    (NULL, 2, 4, '544', NOW(), NULL),
    (NULL, 2, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 2, 6, 'Planeta', NOW(), NULL),
    (NULL, 2, 7, 'R??stica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 3, 1, 'La Reina', NOW(), NULL),
    (NULL, 3, 2, 'Una monarqu??a incaica en Am??rica Latina y una adolescente virgen que despierta deseos prohibidos en un hombre que ha sufrido derrotas y victorias. Cusco; Per??; octubre de 1818. Un general porte??o visita a Irenea; una monja de clausura que vive con sus hijas en el convento de Santa Clara. El general viene con la misi??n secreta de coronar a la menor de las hermanas. Shiamara y Nuna descienden de una pareja revolucionaria; Micaela Bastidas y Tupac Amaru; y por sus venas corre sangre real y mestizada. Una es negra y la otra es blanca. En el Congreso de Tucum??n de 1816; ha triunfado la propuesta de Manuel Belgrano de establecer; como sistema de gobierno; una monarqu??a incaica en Am??rica Latina; con sede en esa ciudad peruana; entonces considerada ombligo del mundo. Mientras espera a su pr??ncipe; Nuna; la adolescente virgen; despierta deseos prohibidos en el hombre que ha sufrido derrotas y victorias; amores y p??rdidas. El hecho puede cambiar el rumbo de los acontecimientos. Gabriela Saidon narra una historia apasionante. Con el trasfondo de la ciudad colonial; de iglesias erigidas sobre las ruinas de un imperio dorado; su gran personaje; Nuna; confronta a Belgrano en el ocaso de su vida; y tambi??n a su madre; en lo que por momentos se convierte en una comedia de enredos; desaf??a las estrategias de un poder inclaudicable y la moral hip??crita de la ??poca.', NOW(), NULL),
    (NULL, 3, 3, '09/2020', NOW(), NULL),
    (NULL, 3, 4, '328', NOW(), NULL),
    (NULL, 3, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 3, 6, 'Planeta', NOW(), NULL),
    (NULL, 3, 7, 'R??stica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 4, 1, 'Don quijote de la mancha', NOW(), NULL),
    (NULL, 4, 2, 'Contra cuerdos y contra locos est?? obligado cualquier caballero andante a volver por la honra de las mujeres.\' Un ??xito desde el momento de su publicaci??n en dos partes (1605 y 1615); Don Quijote de la Mancha es probablemente la mayor novela jam??s escrita. Cuenta la historia de un hidalgo que; enloquecido por la lectura excesiva; recorre Espa??a en busca de aventura; justicia y gloria. Las m??ltiples interpretaciones de la obra reflejan su riqueza de significados y contenidos: una cr??tica de las novelas de caballer??a; la contraposici??n entre realismo e idealismo; o una s??tira de las ilusiones cortesanas. Con las divertidas andanzas de su ingenioso protagonista; Cervantes retrat?? la complejidad de lo humano y dio al arte literario su m??s alta expresi??n. Esta edici??n incluye una introducci??n que contextualiza la obra; un aparato de notas; una cronolog??a y una bibliograf??a esencial; as?? como tambi??n varias propuestas de discusi??n y debate en torno a la lectura. Est?? al cuidado de Florencio Sevilla Arroyo; catedr??tico de literatura espa??ola de la Universidad Aut??noma de Madrid.', NOW(), NULL),
    (NULL, 4, 3, '01/2016', NOW(), NULL),
    (NULL, 4, 4, '1216', NOW(), NULL),
    (NULL, 4, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 4, 6, 'Penguin Clasicos', NOW(), NULL),
    (NULL, 4, 7, 'R??stica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 5, 1, 'El camino del libertario', NOW(), NULL),
    (NULL, 5, 2, 'Aqu?? est??; esta es la Enciclopedia Milei definitiva: un libro en tres actos en los que el protagonista de la aparici??n m??s fulgurante que se produjo en la pol??tica argentina en a??os cuenta el camino que lo llev?? hasta su banca de diputado nacional; a captar y calibrar como nadie el descontento de la sociedad con la casta pol??tica.<br/><br/>\'Javier Milei seleccion?? para este libro sus textos m??s preciados en el terreno de la discusi??n de las ideas econ??micas; puli?? los discursos e intervenciones de su primer a??o en la pol??tica; y en medio de meses muy agitados logr?? sentarse a pensar en su vida; en su infancia; sus afectos; sus pasiones y el modo en que sus ideas fueron evolucionando hacia la causa m??s importante de todas. Como ??l mismo dice: ??Me termin?? haciendo popular por mi defensa de la libertad?', NOW(), NULL),
    (NULL, 5, 3, '02/2022', NOW(), NULL),
    (NULL, 5, 4, '352', NOW(), NULL),
    (NULL, 5, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 5, 6, 'Planeta', NOW(), NULL),
    (NULL, 5, 7, 'R??stica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 6, 1, 'Lo que calla la sangre', NOW(), NULL),
    (NULL, 6, 2, 'En la ??ltima d??cada del siglo XIX, muerto Leandro Alem, la convulsi??n pol??tica abre paso a la discusi??n sobre el futuro de la Argentina. En este contexto, el romance entre Elena y Antonio crece en medio de una mara??a de relaciones filiales y misterios por develar. Ella pertenece a la alta aristocracia porte??a, pero por problemas econ??micos en su familia, se enfrenta al descubrimiento de un nuevo mundo en el que los entreveros sociales, la solidaridad y la pasi??n forjan su destino. ??l, en cambio, es campesino que lucha por mejorar su posici??n social y sobreponerse a las circunstancias cada d??a. Esta novela nos emociona con la historia de dos mundos diferentes, una trama plagada de secretos y un amor que crece frente a todo.', NOW(), NULL),
    (NULL, 6, 3, '02/2022', NOW(), NULL),
    (NULL, 6, 4, '420', NOW(), NULL),
    (NULL, 6, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 6, 6, 'El Emporio libros', NOW(), NULL),
    (NULL, 6, 7, 'R??stica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 7, 1, 'El reino de los malditos', NOW(), NULL),
    (NULL, 7, 2, 'Dos hermanas. Un despiadado asesinato. Una bUsqueda de venganza que desatarA el mismIsimo infierno. Y un romance embriagador. Emilia y su hermana gemela Vittoria son streghe: brujas que viven en secreto entre los humanos; evitando llamar la atenciOn y ser perseguidas. Pero una noche; Vittoria se pierde el turno de la cena en el famoso restaurante siciliano que regenta la familia. Y Emilia pronto encuentra el cuerpo de su querida gemela... profanado mAs allA de lo imaginable. Devastada; se propone encontrar al asesino de su hermana y conseguir venganza a cualquier precio; incluso si eso significa usar magia oscura; que lleva mucho tiempo prohibida. ??CuAl es el precio de la venganza? No te pierdas la nueva saga de la autora de A la caza de Jack el Destripador.', NOW(), NULL),
    (NULL, 7, 3, '02/2022', NOW(), NULL),
    (NULL, 7, 4, '416', NOW(), NULL),
    (NULL, 7, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 7, 6, 'Puck', NOW(), NULL),
    (NULL, 7, 7, 'R??stica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 8, 1, 'La tia Cosima', NOW(), NULL),
    (NULL, 8, 2, '??Puede el amor regalar una segunda oportunidad? C??sima es una mujer en la plenitud de la vida. Psic??loga de profesi??n y especializada en el tratamiento del autismo infantil; posee una fundaci??n de enorme prestigio; donde se respira un ambiente cuidado y buen humor. All?? trabaja con perros especialmente adiestrados para ayudar a los ni??os con alguna condici??n del espectro autista. Es feliz con su trabajo; con sus amigos y sus sobrinos; a quienes dedica los pocos ratos libres de que dispone. En su adolescencia; sin embargo; padeci?? la crueldad de algunos compa??eros de escuela; experiencia que la marc?? profundamente; al tiempo que le sirvi?? para convertirse en la mujer comprometida que es hoy. Si bien esa etapa de sufrimiento qued?? atr??s; un d??a irrumpe de nuevo para ofrecerle algo que quiz?? deseaba: un amor inesperado; una pasi??n que la desborda; un abismo de sorpresa e incertidumbre. ??Podr?? ese amor reparar el da??o que no se olvida? ??Podr?? deshacer la verg??enza; la frustraci??n y el enojo? Con su nueva novela; Florencia Bonelli logra otra vez el misterio de la devoci??n lectora con una historia que perdura m??s all?? de la ??ltima p??gina.', NOW(), NULL),
    (NULL, 8, 3, '09/2020', NOW(), NULL),
    (NULL, 8, 4, '576', NOW(), NULL),
    (NULL, 8, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 8, 6, 'Suma de Letras', NOW(), NULL),
    (NULL, 8, 7, 'R??stica con solapas', NOW(), NULL);

 INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 9, 1, 'Harry Potter y la Piedra Filosofal', NOW(), NULL),
    (NULL, 9, 2, 'Harry Potter se ha quedado hu??rfano y vive en casa de sus abominables t??os y del insoportable primo Dudley. Se siente muy triste y solo; hasta que un buen d??a recibe una carta que cambiar?? su vida para siempre. En ella le comunican que ha sido aceptado como alumno en el colegio interno Hogwarts de magia y hechicer??a. A partir de ese momento; la suerte de Harry da un vuelco espectacular. En esa escuela tan especial aprender?? encantamientos; trucos fabulosos y t??cticas de defensa contra las malas artes. Se convertir?? en el campe??n escolar de quidditch; especie de f??tbol a??reo que se juega montado sobre escobas; y har?? un pu??ado de buenos amigos... aunque tambi??n algunos temibles enemigos. Pero; sobre todo; conocer?? los secretos que le permitir??n cumplir con su destino. Pues; aunque no lo parezca a primera vista; Harry no es un chico com??n y corriente. ??Es un verdadero mago!', NOW(), NULL),
    (NULL, 9, 3, '06/2020', NOW(), NULL),
    (NULL, 9, 4, '288', NOW(), NULL),
    (NULL, 9, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 9, 6, 'Salamandra Bolsito', NOW(), NULL),
    (NULL, 9, 7, 'R??stica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 10, 1, 'El club de los Psicopatas', NOW(), NULL),
    (NULL, 10, 2, 'Alpha; Bravo; Charlie; Delta y Easy se hacen llamar los Muchachos de Jack; en honor a Jack el Destripador. Entre ellos no se conocen m??s que por un chat en la Dark Web donde comparten su verdadera pasi??n: ser artistas del asesinato. Cuando Connor y Niki irrumpen en la intimidad de su chat; la furia de estos psic??patas comienza a crecer y no se detendr??n ante nada. Con una inteligencia feroz; los Muchachos de Jack planean como venganza la muerte de los dos adolescentes y sus familias. Sin embargo; Connor y Niki no son como el resto de las v??ctimas de estos asesinos seriales. La pesadilla comienza y solo hay dos opciones: dejarse cazar o sobrevivir.', NOW(), NULL),
    (NULL, 10, 3, '10/2021', NOW(), NULL),
    (NULL, 10, 4, '632', NOW(), NULL),
    (NULL, 10, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 10, 6, 'Grupo Zeta', NOW(), NULL),
    (NULL, 10, 7, 'R??stica con solapas', NOW(), NULL);       

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 11, 1, 'El Italiano', NOW(), NULL),
    (NULL, 11, 2, 'Nada traiciona; tanto tiempo despu??s; la mujer que desde hace dos a??os vive sola junto al mar con un perro y unos libros. Qu?? otra cosa; decide; ser??a el impulso;o el deseo; de permanecer abrazada a ese hombre para siempre. Ignora qu?? habr?? en su cabeza dentro de un par de horas; cuando la claridad del d??a la despeje del todo e ilumine con m??s crudeza su conciencia. Lo cierto es que en este momento; sin duda alguna; desear??a morir si ??l muriera.?? El italiano relata una asombrosa historia de amor; mar y guerra. En los a??os 1942 y 1943; durante la Segunda Guerra Mundial; buzos de combate italianos hundieron o da??aron catorce barcos aliados en Gibraltar y la bah??a de Algeciras. En esta novela; inspirada en hechos reales; s??lo algunos personajes y situaciones son imaginarios. Elena Arbu??s; una librera de veintisiete a??os; encuentrauna madrugada mientras pasea por la playa a uno de esos buzos; desvanecido entre la arena y el agua. Al socorrerlo; la joven ignora que esa determinaci??n cambiar?? su vida y que el amor ser?? s??lo parte de una peligrosa aventura.', NOW(), NULL),
    (NULL, 11, 3, '09/2021', NOW(), NULL),
    (NULL, 11, 4, '400', NOW(), NULL),
    (NULL, 11, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 11, 6, 'Alfaguara', NOW(), NULL),
    (NULL, 11, 7, 'R??stica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 12, 1, 'La ultima vez', NOW(), NULL),
    (NULL, 12, 2, 'Barcelona; a??os 90. Un notorio escritor argentino; recluido por una enfermedad degenerativa; escribe su ??ltima novela y teme no llegar a verla publicada. Convencido de que su fama se debe a un malentendido con respecto a su obra; que todos leen de forma equivocada; decide convocar a trav??s de su poderosa agente literaria a un joven cr??tico; con la esperanza de que esta ????ltima vez?? alguien acierte a leerlo en la clave correcta. Merton; de intachable honestidad intelectual; viaja desde Buenos Aires; pero no est?? a salvo de una doble atracci??n amorosa. Aun as?? avanza lo suficiente en el manuscrito para entrever una develaci??n extraordinaria. ??Llegar?? a dar con esa clave elusiva? ??O las pistas son s??lo un espejismo del encargo; de la cercan??a de la muerte y de la atm??sfera envolvente de la casa?<br/><br/>\'En este trabajo, Miguel usa todas las herramientas que adquiri?? en todos estos a??os de oficio. Y dibuja m??s al Maradona que camin?? sobre las aguas que al que termin?? en la cruz de la que varias veces se pudo bajar. Diego siempre busc?? la manera de volver a pisar una cancha. Miguel hace todo para seguir dibujando. As?? es la gente que no deja de hacer lo que siempre hizo de chico: jugar a la pelota o dibujar. Toda una carrera tratando de seguir siendo un neneGuillermo Mart??nez nos cautiva con una intriga literaria sobre la ambig??edad de la verdad. El tormento de A por ser comprendido; el sexo en modo filos??fico y los gui??os sobre el sistema de consagraciones de la escena editorial se filtran de manera magistral a trav??s de un fino humor negro. La ??ltima vez; una deslumbrante novela tragic??mica en registro f??ustico; confirma a su autor como uno de los grandes escritores iberoamericanos', NOW(), NULL),
    (NULL, 12, 3, '02/2022', NOW(), NULL),
    (NULL, 12, 4, '224', NOW(), NULL),
    (NULL, 12, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 12, 6, 'Planeta', NOW(), NULL),
    (NULL, 12, 7, 'R??stica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 13, 1, 'Un trato con el Rey de los Elfos', NOW(), NULL),
    (NULL, 13, 2, 'Los elfos vienen por dos motivos: Por la guerra y par encontrar esposa. Y en los dos casos; traen consigo la muerte.?? Hace tres mil a??os; los humanos eran cazados por poderosas razas poseedoras de una magia salvaje; hasta que se hizo un pacto; ahora; y desde hace siglos; los elfos toman a una joven del pueblo de Luella para convertirla en su Reina Humana. Ser la elegida?? es interpretado como una sentencia de muerte por la gente del pueblo. Una marca de la que Luella; de diecinueve a??os; esta agradecida de haber escapado en su infancia. En cambio; ha dedicado su vida a estudiar herbologia con el objetivo de convertirse en la Unica curandera del pueblo. Hasta que el Rey Elfo llega inesperadamente ??a buscarla? Todo cuanto Luella pensaba que sabia sobre su vida y sobre si misma era; en realidad; una mentira. Llevada a una tierra rebosante de magia salvaje; se ve obligada a ser la nueva reina de un Rey Elfo frio; pero tremendamente atractivo. Una vez alli; aprendera sobre un mundo agonizante que solo ella podra salvar. La tierra magica de Midscape tira de una parte de su corazon; su hogar y su gente tira de otra... pero lo que realmente la puede destruir es una pasion ??que nunca busco?', NOW(), NULL),
    (NULL, 13, 3, '02/2022', NOW(), NULL),
    (NULL, 13, 4, '416', NOW(), NULL),
    (NULL, 13, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 13, 6, 'Umbriel Editores', NOW(), NULL),
    (NULL, 13, 7, 'R??stica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 14, 1, 'El libro mas lindo del Mundo', NOW(), NULL),
    (NULL, 14, 2, 'Elisa est?? por casarse con el novio ideal; hasta que la lectura de una novela la devuelve como un im??n a otros tiempos. Muy a su pesar recuerda -una y otra vez- a un amor que todav??a est?? vivo en ella: Sebastian; aquel cliente enigm??tico que conoci?? en Three Loves; la peque??a librer??a neoyorquina donde ella trabajaba. ??Cu??nto tiempo debe pasar para que las viejas heridas cierren? ??Olvidamos a una persona en brazos de otra? Elisa cree que la lectura y la pasi??n la pueden salvar de la tristeza; pero el pasado vuelve a hacerse presente; como un perfume que nos lleva sin escalas al momento justo que cre??amos ya superado. El libro m??s lindo del mundo es una bella historia de amor a trav??s del tiempo; que demuestra que todo lo que amamos se convierte en ficci??n. Rosario Oyhanarte nos transporta a la ciudad de Nueva York tras el rastro de una trama sorprendente y enamora en cada esquina.', NOW(), NULL),
    (NULL, 14, 3, '10/1999', NOW(), NULL),
    (NULL, 14, 4, '192', NOW(), NULL),
    (NULL, 14, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 14, 6, 'Vergara', NOW(), NULL),
    (NULL, 14, 7, 'R??stica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 15, 1, 'Moby Dick', NOW(), NULL),
    (NULL, 15, 2, 'A trav??s de este cl??sico; Melville logra convertir la historia de la caza de un cachalote en toda una met??fora sobre la condici??n humana y sus conflictos. Moby Dick; la novela que William Faulkner hubiera querido escribir; va siempre acompa??ada del reconocimiento y el elogio que merece toda construcci??n narrativa impecable. La lucha del capit??n Ahab; su terrible obsesi??n y la m??tica persecuci??n de la enorme ballena ha traspasado fronteras; consiguiendo as?? la indiscutible categor??a de obra maestra de la literatura universal. Esta edici??n cuenta con la introducci??n del especialista y director del Departamento de Estudios Americanos; Andrew Delbanco; autor de Melville (2005); la biograf??a de referencia del autor de Moby Dick. Asimismo; incorpora una serie de ilustraciones tales como el mapa de la traves??a; un plano del ballenero Pequod y otras curiosidades que enriquecen la experiencia de la lectura y proyectan la imaginaci??n del lector. Pero t??; oh ballena; nadas con esa calma hechicera ante quien te ve por primera vez; despu??s de haber enga??ado y destruido a tantos hombres...?? ', NOW(), NULL),
    (NULL, 15, 3, '10/2015', NOW(), NULL),
    (NULL, 15, 4, '752', NOW(), NULL),
    (NULL, 15, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 15, 6, 'Penguin Clasicos', NOW(), NULL),
    (NULL, 15, 7, 'R??stica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 16, 1, 'Notas al pie', NOW(), NULL),
    (NULL, 16, 2, 'Luego de la muerte del escritor Sergei Vidal Morozov; su casa editorial le encarga a Franco de Robertis una edici??n anotada de cuentos p??stumos. La elecci??n no es casual: De Robertis ha sido; a lo largo de gran parte de la carrera del reconocido autor; su colaborador m??s estrecho; un subordinado intelectual ??tambi??n emocional?? en una relaci??n que; como sostiene el propio anotador; tiene ??la edad de su memoria?<br/><br/>Sin embargo; una vez lanzado a su m??tier; las cosas parecen salirse de cauce; y aquello que de entrada estaba planeado como una tarea paneg??rica cede el paso a una inesperada incontinencia textual. De Robertis destila en sus notas una historia otra que poco parece tener que ver con el libro madre. Una trama subterr??nea poblada de situaciones in??ditas y personajes de lo m??s variopintos: el mism??simo Morozov y un documental hecho con un grupo de ni??os actores; amores cruzados; un diamante maldito; traiciones; secretos; celos; luces y sombras.\'.<br/><br/>Literaria; teatral; policial; infinita; alucinada; profunda y a la vez divertida: as?? es Notas al pie; la nueva novela de Alejandro Dolina. Un universo con sus propias reglas que se despliega frente al lector como un juego de cajas chinas. Una arquitectura exquisita que solo la maestr??a y la sensibilidad del autor de cl??sicos como Cr??nicas del ??ngel Gris y Cartas marcadas son capaces de sostener.', NOW(), NULL),
    (NULL, 16, 3, '10/2021', NOW(), NULL),
    (NULL, 16, 4, '480', NOW(), NULL),
    (NULL, 16, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 16, 6, 'Planeta', NOW(), NULL),
    (NULL, 16, 7, 'R??stica con solapas', NOW(), NULL);
    
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 17, 1, 'Mitos de la Historia Argentina 1', NOW(), NULL),
    (NULL, 17, 2, 'Este libro intenta acercar la historia argentina a nuestra gente. Para que la quieran; para que la reconquisten; para que disfruten de una maravillosa herencia com??n; que como todos los bienes de nuestro querido pa??s est?? mal repartida y apropiada indebidamente. Esta edici??n corregida y aumentada del primer volumen que forma la serie Los mitos de la historia argentina se propone cumplir de manera m??s integral esa tarea: acercar la historia nacional a los lectores; haciendo la historia de todos. Con Mitos 1; Felipe Pigna renueva la convocatoria a discutir e interesarnos por saber de d??nde venimos y qui??nes somos; ya que \'la historia de un pa??s es su identidad; es todo lo que nos pas?? como sociedad desde que nacimos hasta el presente', NOW(), NULL),
    (NULL, 17, 3, '01/2019', NOW(), NULL),
    (NULL, 17, 4, '432', NOW(), NULL),
    (NULL, 17, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 17, 6, 'Booket', NOW(), NULL),
    (NULL, 17, 7, 'R??stica con solapas', NOW(), NULL);
    
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 18, 1, 'Mitos de la Historia Argentina 2', NOW(), NULL),
    (NULL, 18, 2, 'Felipe Pigna nos convoca para conocer nuestra historia; para saber de d??nde venimos; por qu?? estamos como estamos; qui??nes somos y qui??nes podemos ser. El estudio de vidas entregadas apasionadamente a una causa -Bouchard; G??emes; Dorrego; de personalidades pol??micas -Rosas; Sarmiento- y de temas con una asombrosa resonancia actual el genocidio de la \'conquista del desierto\'; la primera deuda externa argentina; las protestas sociales de hace un siglo le permitir?? al lector comprobar que la historia argentina no se repite; se contin??a.', NOW(), NULL),
    (NULL, 18, 3, '01/2019', NOW(), NULL),
    (NULL, 18, 4, '496', NOW(), NULL),
    (NULL, 18, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 18, 6, 'Booket', NOW(), NULL),
    (NULL, 18, 7, 'R??stica con solapas', NOW(), NULL);
    
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 19, 1, 'Mitos de la Historia Argentina 3', NOW(), NULL),
    (NULL, 19, 2, 'En este nuevo tomo de Los mitos de la historia argentina; el autor recorre una etapa marcada por hechos y procesos tan importantes como la llegada del radicalismo al gobierno; los conflidos sociales de la Semana Tr??gica; las huelgas patag??nicas y los fusilamientos de m??s de mil quinientos trabajadores; la divisi??n del radicalismo entre alvearistas e yrigoyenistas; los avatares de la nacionalizaci??n del petr??leo; el primer golpe de Estado de la Argentina en el siglo xx; la D??cada lnfame. Los negociados; la tortura; y tambi??n el anarquismo expropiador con personajes novelescos como Severino Di Giovanni; la ca??da del presidente Ortiz; la asunci??n de Castillo; la vuelta del fraude electoral y el triunfo de la llamada revoluci??n del 4 de junio de 1943; que marca el ingreso de Per??n a la pol??tica.', NOW(), NULL),
    (NULL, 19, 3, '04/2019', NOW(), NULL),
    (NULL, 19, 4, '350', NOW(), NULL),
    (NULL, 19, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 19, 6, 'Booket', NOW(), NULL),
    (NULL, 19, 7, 'R??stica con solapas', NOW(), NULL);
    
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 20, 1, 'Mitos de la Historia Argentina 4', NOW(), NULL),
    (NULL, 20, 2, 'Pocos procesos de la historia argentina despiertan tanto inter??s; local e internacional; como el que marca los or??genes; consolidaci??n y perdurabilidad del peronismo. Es seguramente uno de los fen??menos hist??ricos m??s particulares en Am??rica Latina y el mundo; y que despierta mayores pol??micas; rodeadas a??n por pasiones e interpretaciones cruzadas; a favor y en contra. Este libro recorre el apasionante per??odo de 1943 a 1955; para develar los aspectos controversiales del movimiento pol??tico fundado por Juan Domingo Per??n; las transformaciones que impuls?? en el pa??s durante sus primeros gobiernos; y la personalidad y la acci??n de su l??der y de la figura m??tica por excelencia de esta etapa: Evita; la mujer ??m??s amada y m??s odiada? de la historia argentina.', NOW(), NULL),
    (NULL, 20, 3, '04/2019', NOW(), NULL),
    (NULL, 20, 4, '376', NOW(), NULL),
    (NULL, 20, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 20, 6, 'Booket', NOW(), NULL),
    (NULL, 20, 7, 'R??stica con solapas', NOW(), NULL);
    
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 21, 1, 'Frozen 2 Bosque de Sombras', NOW(), NULL),
    (NULL, 21, 2, 'Anna de Arendelle no quiere m??s que ayudar a su hermana mayor Elsa. Sin embargo; desde su coronaci??n; todo parece indicar que ella no la necesita. Ahora Elsa est?? a punto de embarcarse en un viaje alrededor del mundo; dejando a Anna atr??s.</br></br>Sin embargo; una misteriosa enfermedad llega a Arendelle y Elsa debe retrasar su viaje; d??ndole la oportunidad perfecta a Anna de sentirse ??til finalmente. Cuando Anna descubre una habitaci??n secreta en el castillo; recita un hechizo que espera cumpla su deseo de curar la enfermedad de Arendelle. Pero; en vez de eso; en un sue??o siniestro cobra vida: el gigantesco lobo de las pesadillas de la infancia de Anna.</br></br>Acompa??ada por su hermana; Olaf; Kristoff y Sven; Anna debe aventurarse a lo desconocido para detener al temible lobo antes de que destruya todo aquello que ama. En su traves??a descubrir?? mitos y maravillas ??nicas; pero necesitar?? de mucha valent??a; sinceridad y; sobre todo; amor.</br></br>Esta novela original une las aventuras ??picas de Frozen y Frozen II.', NOW(), NULL),
    (NULL, 21, 3, '11/2019', NOW(), NULL),
    (NULL, 21, 4, '472', NOW(), NULL),
    (NULL, 21, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 21, 6, 'Planeta', NOW(), NULL),
    (NULL, 21, 7, 'R??stica con solapas', NOW(), NULL);
    
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 22, 1, 'Frozen 2 El Bosque Encantado', NOW(), NULL),
    (NULL, 22, 2, 'A pesar del peligro; Elsa se siente obligada a seguir la voz que la llama al Bosque Encantado. Pero no estar?? sola; su valiente hermana; Anna; y sus amigos Kristoff; Sven y Olaf; el mu??eco de nieve; la acompa??ar??n a una aventura llena de magia que definir?? el futuro del reino de Arendelle.', NOW(), NULL),
    (NULL, 22, 3, '10/2019', NOW(), NULL),
    (NULL, 22, 4, '144', NOW(), NULL),
    (NULL, 22, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 22, 6, 'Planeta', NOW(), NULL),
    (NULL, 22, 7, 'R??stica con solapas', NOW(), NULL);
    
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 23, 1, 'Palabras Cruzadas', NOW(), NULL),
    (NULL, 23, 2, 'Hace poco m??s de diez a??os; Gabriel Rol??n publicaba su segundo libro. Despu??s del ??xito rotundo y casi sin precedentes de Historias de div??n; Palabras cruzadas llegaba a las librer??as para reconfirmar el lugar central de su autor en la industria editorial de los ??ltimos veinte a??os en la Argentina. Pero tambi??n ??y en esto marca un verdadero hito??; terminaba de consolidar un v??nculo in??dito hasta ese momento entre el Psicoan??lisis y un p??blico lector cada vez m??s numeroso. Y no era para menos. En ese camino que el libro propon??a ??propone??; en ese tr??nsito desde el dolor hacia la verdad; los casos narrados dejaban honda su huella en quienes se atrev??an al desaf??o. La angustia; los miedos; la sexualidad; el amor y el desamor; las adicciones y la soledad se dan cita en un viaje que paciente y psicoanalista emprenden juntos. Una traves??a las m??s de las veces dolorosa; s??; pero que una vez cumplida se vive como transformadora; poderosa; irreductiblemente humana. En esta edici??n definitiva y revisada; que incluye un caso nuevo; Rol??n se lee a s?? mismo. Se anima a interpelar ese reflejo que le devuelve un espejo anclado hace m??s de una d??cada; en una sociedad otra en la que los debates por las pol??ticas de g??nero; la legalidad del consumo de marihuana y los usos disruptivos de la lengua ??de un idioma??; entre otras cosas; no ten??an ni la visibilidad ni el peso espec??fico que tienen hoy. Y es ah??; en ese gesto genuino; tan franco y veraz hacia los lectores (los de entonces; los de ahora); en donde el autor hace que Palabras cruzadas se vuelva; una vez m??s; un libro vital; org??nico; indispensable.', NOW(), NULL),
    (NULL, 23, 3, '09/2021', NOW(), NULL),
    (NULL, 23, 4, '288', NOW(), NULL),
    (NULL, 23, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 23, 6, 'Planeta', NOW(), NULL),
    (NULL, 23, 7, 'R??stica con solapas', NOW(), NULL);
    
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 24, 1, 'El Precio de la Pasion', NOW(), NULL),
    (NULL, 24, 2, 'El nuevo libro de Gabriel Rol??n echa anclas en las aguas profundas de la pasi??n. Esa fuerza primitiva que grita en nosotros desde el principio de los tiempos; y nos lleva a un l??mite en el que la distancia entre el placer y el dolor es nada m??s que una respiraci??n. Un territorio habitado por dioses y demonios; por h??roes ??picos que han dado batallas antol??gicas; y esos otros cotidianos y de a pie; h??roes an??nimos que dan pelea poniendo en juego su piel con la misma intensidad; con el mismo arrebato. Mitos e historias: hombres y dioses que caminan de la mano por ese borde en el que la raz??n trastabilla y pierde sus herramientas para explicar el mundo.</br></br>Y es ah??; entonces; donde El precio de la pasi??n recurre a la mitolog??a; la literatura; la m??sica; el cine y; c??mo no; al consultorio del analista para llevar algo de luz a la penumbra de ese abismo que nos atrae de manera irresistible. El amor; el desamor; la soledad; la desesperaci??n; el deseo; la angustia; los celos; el duelo; el ??xito; el fracaso y la felicidad se dan cita en este ??breve ensayo nocturno?? en el que Gabriel Rol??n encuentra; una vez m??s; ese tono ajustado; preciso; siempre certero; para decirnos que cielo e infierno est??n muy cerca; pero que entre ellos hay toda una vida para sentir.', NOW(), NULL),
    (NULL, 24, 3, '09/2019', NOW(), NULL),
    (NULL, 24, 4, '190', NOW(), NULL),
    (NULL, 24, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 24, 6, 'Planeta', NOW(), NULL),
    (NULL, 24, 7, 'R??stica con solapas', NOW(), NULL);
    
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 25, 1, 'Sexo ATR', NOW(), NULL),
    (NULL, 25, 2, '??Sexo ATR trata de naturalizar y hablar de sexo con un lenguaje c??modo y accesible. Cuasi ATP. Se trata de liberarnos; desbloquearnos; y si es con ritmo y sustancia; mejor. Bueno; sin sustancia porque en la cama no ayuda ni un poco. Mi idea con este libro es acompa??arte en eso; d??ndote info clara; precisa y concisa. Habilitarte y empoderarte (porque el conocimiento es poder) para vivir tu sexualidad ATR?.</br></br>La Lic. Cecilia Ce nos ofrece en este libro-gu??a informaci??n sexual valios??sima de una manera gr??fica; divertida; emp??tica y respetuosa; con la intenci??n de que cada uno haga su propio recorrido de autodescubrimiento y reafirmaci??n; para disfrutar de la sexualidad en libertad. Este es el libro sobre sexo que todos siempre ansiamos tener. Esta es la educaci??n sexual que queremos.', NOW(), NULL),
    (NULL, 25, 3, '09/2019', NOW(), NULL),
    (NULL, 25, 4, '144', NOW(), NULL),
    (NULL, 25, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 25, 6, 'Planeta', NOW(), NULL),
    (NULL, 25, 7, 'R??stica con solapas', NOW(), NULL);
    
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 26, 1, 'Carnaval toda la vida', NOW(), NULL),
    (NULL, 26, 2, '??El sexo no es lo que te venden afuera; es lo que vos quieras construir desde adentro?</br></br>Luego de su primer libro; Sexo ATR. La educaci??n sexual que queremos; en el que exploramos la anatom??a genital humana; el deseo; la estimulaci??n; la masturbaci??n y las artes anales; entre tantos otros temas; con el simple y m??s maravilloso objetivo de entendernos mejor en el universo del placer; en esta nueva obra; la licenciada Cecilia Ce nos invita a participar de una fiesta de reconocimiento y aprendizaje mayor para librarnos de culpas y frustraciones sin sentido: ??c??mo funcionan la autoestima y las exigencias en la cama? ??De qu?? creencias y pensamientos sobre la sexualidad partimos? ??De d??nde salen tantos mitos sobre la sexualidad que nos alejan del placer y generan ansiedades? ??Qu?? sabemos sobre el orgasmo; sobre cu??l es la mejor manera de vinculearnos; del sexo de a muchos; del sexo en las embarazadas; del sexo posparto y de posiciones que nos ayuden a ampliar el goce? Carnaval toda la vida (o Sexo ATR volumen II) lleg?? para que todas las personas nos sintamos acompa??adas y empoderadas; y para que podamos construir una bella autoestima sexual que nos lleve a vivir experiencias placenteras.</br></br>Que empiece el carnaval.', NOW(), NULL),
    (NULL, 26, 3, '10/2020', NOW(), NULL),
    (NULL, 26, 4, '200', NOW(), NULL),
    (NULL, 26, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 26, 6, 'Planeta', NOW(), NULL),
    (NULL, 26, 7, 'R??stica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 27, 1, 'Hola Vegan', NOW(), NULL),
    (NULL, 27, 2, 'Un libro pensado para abrir y facilitar tu camino hacia el veganismo. Hola Vegan surgi?? imaginando el libro que nos hubiese gustado leer cuando reci??n nos hicimos veganas, por eso lo pensamos como un ABC, un manual de cocina. Pero ojo, no est?? pensado solamente para las personas que se adentran en el veganismo, tambi??n es ideal para quienes est??n en transici??n, para aquellas personas que ya no comen carnes pero les resulta imposible dejar los l??cteos y para quienes comen de todo, pero quieren empezar a ampliar la porci??n de vegetales que llevan a la mesa.', NOW(), NULL),
    (NULL, 27, 3, '11/2021', NOW(), NULL),
    (NULL, 27, 4, '296', NOW(), NULL),
    (NULL, 27, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 27, 6, 'Planeta', NOW(), NULL),
    (NULL, 27, 7, 'R??stica con solapas', NOW(), NULL);
    
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 28, 1, 'Panaderia Legado Natural', NOW(), NULL),
    (NULL, 28, 2, 'Legado... una palabra que revela la esencia de este libro. Claudio Olijavetzky nos brinda un recorrido por las apasionantes historias, recetas y procedimientos para hacer desde una simple masa madre hasta un magn??fico croissant. De su mano, descubriremos la magia de la transformaci??n de las harinas y levaduras en ese m??stico alimento que es el pan. Cl??sicos, integrales, sin gluten, con sabores especiales, viennoiserie...</br>Los invitamos a adentrarse en este mundo de sabores que hacen agua la boca y nos transportan a paisajes diferentes.</br>"Mi vida est?? ligada al pan desde mi infancia cuando, por un accidente de tr??nsito, termin?? dentro de una panader??a con mi primer maestro, Nino. Hoy, despu??s de 35 a??os de aquel momento, s?? que lo mejor que podemos dejar en una persona es un lindo recuerdo y una ense??anza, y tengo este privilegio en mis manos desde hace 20 a??os, gracias a mi profesi??n de docente".', NOW(), NULL),
    (NULL, 28, 3, '11/2021', NOW(), NULL),
    (NULL, 28, 4, '264', NOW(), NULL),
    (NULL, 28, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 28, 6, 'V&R', NOW(), NULL),
    (NULL, 28, 7, 'R??stica con solapas', NOW(), NULL);

INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 29, 1, 'Asi cocinan los Argentinos', NOW(), NULL),
    (NULL, 29, 2, '??Ideal para recrear los sabores argentinos en cualquier lugar del mundo! RECETAS TRADICIONALES Y ACTUALES: Empanadas; Asados y parrillas; Verduras y rellenos; Salsas y vinagretas; Milanesas y croquetas; Pucheros; locros y humitas; Guisos; cazuelas y escabeches; Tortillas y revueltos; Pasteles; tartas y budines; Pastas; Postres y dulces; El mate. // Enjoy the true Argentinian experience at home! TRADITIONAL AND CONTEMPORARY RECIPES: Turnovers; Roasts and Grills; Vegetables and Fillings; Sauces and Vinaigrettes; Breaded Steaks and Croquettes; Beef Pots; Locro Stews and Corn Puddings and Pies; Stews; Casseroles and Soused Meats; Spanish Omelettes and Scrambles; Pies; Tarts and Loaf Cakes; Pasta; Desserts and Sweet Spreads; The Mate Drink', NOW(), NULL),
    (NULL, 29, 3, '02/2022', NOW(), NULL),
    (NULL, 29, 4, '360', NOW(), NULL),
    (NULL, 29, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 29, 6, 'EL ATENEO', NOW(), NULL),
    (NULL, 29, 7, 'R??stica con solapas', NOW(), NULL);
    
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 30, 1, 'Pasteleria Urbana', NOW(), NULL),
    (NULL, 30, 2, 'Cu??n inagotable es la creatividad de los profesionales; como Nari; en concebir infinitas variantes de los cuatro jinetes de la pasteler??a: harina; az??car; huevos y manteca. (Osvaldo Gross)</br></br>8 partes con soluciones para cada momento del d??a; desde esos postres que siempre nos acompa??aron en nuestras vidas; hasta c??mo servir un t?? haciendo de nuestra casa un hotel de cinco estrellas. 60 recetas paso a paso; explicadas de forma simple; pero con t??cnica exacta; para obtener resultados perfectos. Alfajores; budines; cookies; tortas cl??sicas y modernas; trufas ??y much??smas delicias m??s!', NOW(), NULL),
    (NULL, 30, 3, '11/2019', NOW(), NULL),
    (NULL, 30, 4, '176', NOW(), NULL),
    (NULL, 30, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 30, 6, 'EL ATENEO', NOW(), NULL),
    (NULL, 30, 7, 'R??stica con solapas', NOW(), NULL);
    
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 31, 1, 'Vladimir Putin', NOW(), NULL),
    (NULL, 31, 2, 'Vladimir Putin es a??n un enigma. ??Cu??l es su objetivo? ??Afirmar su poder personal y el de su clan en la l??nea de los aut??cratas exitosos en el Kremlin durante siglos? ??Restaurar la grandeza de su pa??s y lograr una s??ntesis de la historia de Rusia; de los zares a los sovi??ticos? ??C??mo ascendi?? de teniente coronel de la KGB a l??der de una de las principales potencias del mundo? ??Qui??n es este hombre que parece usar una m??scara?</br>A trav??s de una investigaci??n rigurosa; con testimonios in??ditos; Fr??d??ric Pons responde a estas y otras preguntas. Sin ocultar nada; pinta un v??vido retrato del amo del Kremlin. Desde su infancia en un modesto barrio de Leningrado y sus sue??os de juventud hasta las etapas decisivas de su formidable ascenso; que incluyen el tramado de sus redes de poder. Con claridad y fundamento; demuestra hasta qu?? punto este hombre encarna las aspiraciones y los temores de Rusia desde la ca??da del comunismo.</br>En el contexto actual; este libro es una lectura esencial para descifrar la personalidad; los objetivos y la estrategia de este protagonista de la historia contempor??nea.', NOW(), NULL),
    (NULL, 31, 3, '04/2017', NOW(), NULL),
    (NULL, 31, 4, '368', NOW(), NULL),
    (NULL, 31, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 31, 6, 'EL ATENEO', NOW(), NULL),
    (NULL, 31, 7, 'R??stica con solapas', NOW(), NULL);
    
INSERT INTO `product_attributes` (`id`, `id_product`, `id_attribute`, `value`, `created_at`, `updated_at`) VALUES
    (NULL, 32, 1, 'Peaky Blinders: La verdadera historia.', NOW(), NULL),
    (NULL, 32, 2, 'La verdadera historia de la banda criminal mas famosa de Gran Breta??a. Billy Kimber era un delincuente astuto con una personalidad magnetica que se hizo con el liderazgo de la banda criminal mas celebre de Gran Breta??a: los Peaky Blinders; que dominaban los negocios ilegales de proteccion de comercios y las apuestas de las carreras de caballos. Hoy; gracias a la exitosa serie de television; los Peaky Blinders son sinonimo de arrogancia; glamour y violencia desenfrenada. Pero ??quienes fueron los verdaderos Peaky Blinders? Tras decadas de estudio; el historiador Carl Chinn; nieto de un miembro de los Peaky Blinders e hijo de un corredor de apuestas ilegales de Birmingham; se basa en material inedito y entrevistas con descendientes de los integrantes de la banda para ofrecer un relato fascinante sobre el auge y la caida de la infame mafia que sembro el caos en Inglaterra en un momento en que la clase obrera del Imperio britanico estaba en pie de guerra. Estos son los Peaky Blinders y esta es su verdadera historia.', NOW(), NULL),
    (NULL, 32, 3, '02/2022', NOW(), NULL),
    (NULL, 32, 4, '256', NOW(), NULL),
    (NULL, 32, 5, 'Espa??ol', NOW(), NULL),
    (NULL, 32, 6, 'PRINCIPAL DE LOS LIBROS', NOW(), NULL),
    (NULL, 32, 7, 'R??stica con solapas', NOW(), NULL);
