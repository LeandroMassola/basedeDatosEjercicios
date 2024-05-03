USE cursos_playground_db;

/*Inserción tabla USUARIOS*/
INSERT INTO usuarios(nombre, apellido, email, contrasenia, categorias_id) VALUES('Leandro', 'Massola', 'leandromassola.lm@gmail.com', 'patito123', 6);
INSERT INTO usuarios (nombre, apellido, email, contrasenia, categorias_id) VALUES 
('Juan', 'Perez', 'juan.perez@example.com', 'password123', 5),
('María', 'García', 'maria.garcia@example.com', 'securepass', 6),
('Pedro', 'López', 'pedro.lopez@example.com', 'pass1234', 7),
('Ana', 'Martínez', 'ana.martinez@example.com', 'mysecurepassword', 8),
('Luis', 'Rodríguez', 'luis.rodriguez@example.com', 'password321', 5),
('Sofía', 'Hernández', 'sofia.hernandez@example.com', 'securepass123', 6),
('Carlos', 'Gómez', 'carlos.gomez@example.com', 'mysecurepass', 7),
('Laura', 'Díaz', 'laura.diaz@example.com', 'mypassword123', 8),
('Diego', 'Torres', 'diego.torres@example.com', 'password2022', 5),
('Elena', 'Fernández', 'elena.fernandez@example.com', 'securepass2022', 6),
('Miguel', 'Ruiz', 'miguel.ruiz@example.com', 'mysecurepass2022', 7),
('Ana', 'Gutiérrez', 'ana.gutierrez@example.com', 'mypassword2022', 8),
('Pablo', 'Sánchez', 'pablo.sanchez@example.com', 'password2023', 5),
('Lucía', 'Ramírez', 'lucia.ramirez@example.com', 'securepass2023', 6);
select * FROM usuarios;

/*Inserción tabla CATEGORIAS*/
INSERT INTO categorias (NOMBRE_CATEGORIA) VALUES ('Estudiante');
INSERT INTO categorias (NOMBRE_CATEGORIA) VALUES ('Docente');
INSERT INTO categorias (NOMBRE_CATEGORIA) VALUES ('Editor');
INSERT INTO categorias (NOMBRE_CATEGORIA) VALUES ('Administrador');
select * FROM categorias;


/*Inserción tabla USUARIOS_CURSOS*/

INSERT INTO USUARIOS_CURSOS(usuarios_id, cursos_id)
SELECT usuarios.id, cursos.id
FROM usuarios, cursos;

select * from usuarios_cursos;


/*Inserción tabla CURSOS*/
INSERT INTO cursos (titulo, descripcion, imagen, fecha_inicio, fecha_fin, cupo_max) VALUES
('Introducción a la Programación', 'Curso introductorio sobre programación en Python.', 'imagen1.jpg', '2024-05-01', '2024-06-30', 50),
('Diseño Gráfico Avanzado', 'Aprende técnicas avanzadas de diseño gráfico con herramientas profesionales.', 'imagen2.jpg', '2024-06-15', '2024-08-15', 40),
('Marketing Digital para Emprendedores', 'Descubre estrategias efectivas de marketing digital para hacer crecer tu negocio.', 'imagen3.jpg', '2024-07-01', '2024-09-30', 60),
('Introducción al Machine Learning', 'Curso introductorio sobre conceptos y aplicaciones del Machine Learning.', 'imagen4.jpg', '2024-08-01', '2024-10-31', 35),
('Desarrollo Web Full Stack', 'Aprende a desarrollar aplicaciones web completas con tecnologías frontend y backend.', 'imagen5.jpg', '2024-09-15', '2024-12-15', 45),
('Inglés Avanzado para Profesionales', 'Mejora tus habilidades en inglés con un enfoque especializado en el ámbito profesional.', 'imagen6.jpg', '2024-10-01', '2025-01-31', 30),
('Finanzas Personales: Gestión y Planificación', 'Aprende a gestionar tus finanzas personales y planificar tu futuro financiero.', 'imagen7.jpg', '2024-11-15', '2025-03-15', 55),
('Nutrición y Dietética', 'Descubre los fundamentos de la nutrición y aprende a llevar una dieta equilibrada.', 'imagen8.jpg', '2025-01-01', '2025-04-30', 50),
('Fotografía Digital Creativa', 'Desarrolla tu creatividad y habilidades fotográficas con técnicas avanzadas.', 'imagen9.jpg', '2025-02-15', '2025-06-15', 40),
('Gestión del Tiempo y Productividad', 'Domina técnicas de gestión del tiempo para aumentar tu productividad personal y profesional.', 'imagen10.jpg', '2025-03-01', '2025-07-31', 35);
select * FROM cursos;

/*Inserción tabla UNIDADES*/
INSERT INTO unidades (titulo, descripcion, fecha_inicio, cursos_ID) VALUES
('Introducción al Curso', 'Visión general del contenido y objetivos del curso.', '2024-05-01', 1),
('Módulo 1: Fundamentos de la Programación', 'Principios básicos de la programación y primeros pasos en Python.', '2024-05-05', 1),
('Módulo 2: Estructuras de Datos', 'Aprende sobre listas, tuplas, diccionarios y otros tipos de datos en Python.', '2024-05-10', 1),
('Módulo 3: Control de Flujo', 'Estructuras de control como if-else, bucles for y while en Python.', '2024-05-15', 1),
('Módulo 4: Funciones y Módulos', 'Definición y uso de funciones, importación de módulos en Python.', '2024-05-20', 1),
('Módulo 5: Proyecto Final', 'Desarrollo de un proyecto práctico para aplicar los conocimientos adquiridos.', '2024-05-25', 1),
('Unidad 1: Introducción al Diseño Gráfico', 'Conceptos básicos y principios del diseño gráfico.', '2024-06-15', 2),
('Unidad 2: Herramientas de Diseño', 'Uso de software profesional de diseño gráfico como Adobe Illustrator y Photoshop.', '2024-06-20', 2),
('Unidad 3: Composición y Tipografía', 'Técnicas de composición y elección de tipografías en el diseño gráfico.', '2024-06-25', 2),
('Unidad 4: Proyecto Práctico', 'Desarrollo de un proyecto práctico para aplicar los conceptos aprendidos.', '2024-07-01', 2),
('Inicio del Curso', 'Sesión inaugural y presentación del temario.', '2024-07-01', 3),
('Semana 1: Fundamentos del Marketing Digital', 'Conceptos básicos y estrategias iniciales en marketing digital.', '2024-07-05', 3),
('Semana 2: SEO y Marketing de Contenidos', 'Optimización para motores de búsqueda y creación de contenido.', '2024-07-10', 3),
('Semana 3: Publicidad en Redes Sociales', 'Anuncios pagados y estrategias de marketing en redes sociales.', '2024-07-15', 3),
('Semana 4: Analítica Web y ROI', 'Herramientas de análisis y medición del retorno de inversión.', '2024-07-20', 3),
('Semana 5: Proyecto Final', 'Desarrollo de un proyecto práctico de marketing digital.', '2024-07-25', 3),
('Inicio del Curso', 'Sesión inaugural y presentación del temario.', '2024-08-01', 4),
('Semana 1: Introducción al Machine Learning', 'Conceptos básicos y aplicaciones del machine learning.', '2024-08-05', 4),
('Semana 2: Aprendizaje Supervisado', 'Algoritmos de aprendizaje supervisado y casos de uso.', '2024-08-10', 4),
('Semana 3: Aprendizaje No Supervisado', 'Algoritmos de aprendizaje no supervisado y técnicas asociadas.', '2024-08-15', 4),
('Semana 4: Proyecto de Machine Learning', 'Desarrollo de un proyecto práctico de machine learning.', '2024-08-20', 4),
('Módulo 1: Frontend Development', 'Desarrollo de la interfaz de usuario utilizando HTML, CSS y JavaScript.', '2024-09-15', 5),
('Módulo 2: Backend Development', 'Implementación del backend utilizando tecnologías como Node.js y Express.', '2024-09-20', 5),
('Módulo 3: Bases de Datos y APIs', 'Integración de bases de datos y desarrollo de APIs RESTful.', '2024-09-25', 5),
('Módulo 4: Proyecto Full Stack', 'Desarrollo de un proyecto completo utilizando tecnologías frontend y backend.', '2024-09-30', 5),
('Inicio del Curso', 'Sesión inaugural y presentación del temario.', '2024-10-01', 6),
('Módulo 1: Gramática Avanzada', 'Revisión y práctica avanzada de la gramática inglesa.', '2024-10-05', 6),
('Módulo 2: Vocabulario Especializado', 'Expansión del vocabulario en áreas específicas como negocios y tecnología.', '2024-10-10', 6),
('Módulo 3: Conversación y Debate', 'Práctica de habilidades de conversación y debate en inglés.', '2024-10-15', 6),
('Módulo 4: Proyecto Final', 'Presentación y defensa de un proyecto práctico en inglés.', '2024-10-20', 6),
('Inicio del Curso', 'Sesión inaugural y presentación del temario.', '2024-11-15', 7),
('Semana 1: Presupuesto y Ahorro', 'Planificación financiera personal y técnicas de ahorro.', '2024-11-20', 7),
('Semana 2: Inversión y Mercados', 'Conceptos básicos de inversión y análisis de mercados financieros.', '2024-11-25', 7),
('Semana 3: Planificación a Largo Plazo', 'Gestión del patrimonio y planificación para el futuro.', '2024-11-30', 7),
('Semana 4: Proyecto de Finanzas Personales', 'Desarrollo de un plan financiero personalizado.', '2024-12-05', 7),
('Unidad 1: Nutrición y Salud', 'Principios básicos de la nutrición y su impacto en la salud.', '2025-01-01', 8),
('Unidad 2: Dietas Específicas', 'Dietas especiales como vegetarianismo, veganismo y paleo.', '2025-01-05', 8),
('Unidad 3: Alimentación y Rendimiento', 'Nutrición deportiva y alimentación para el rendimiento físico.', '2025-01-10', 8),
('Unidad 4: Proyecto Práctico', 'Desarrollo de un plan de alimentación personalizado.', '2025-01-15', 8),
('Inicio del Curso', 'Sesión inaugural y presentación del temario.', '2025-02-15', 9),
('Módulo 1: Fundamentos de la Fotografía', 'Conceptos básicos de composición, iluminación y enfoque fotográfico.', '2025-02-20', 9),
('Módulo 2: Fotografía Creativa', 'Técnicas avanzadas de composición y uso creativo de la luz.', '2025-02-25', 9),
('Módulo 3: Edición Digital', 'Uso de software de edición como Adobe Lightroom y Photoshop.', '2025-03-01', 9),
('Módulo 4: Proyecto Fotográfico', 'Desarrollo de un proyecto fotográfico creativo.', '2025-03-05', 9),
('Inicio del Curso', 'Sesión inaugural y presentación del temario.', '2025-03-01', 10),
('Semana 1: Identificación de Tareas Prioritarias', 'Técnicas para identificar y priorizar tareas importantes.', '2025-03-05', 10),
('Semana 2: Técnicas de Gestión del Tiempo', 'Métodos como la Técnica Pomodoro y la matriz de Eisenhower.', '2025-03-10', 10),
('Semana 3: Eliminación de Distracciones', 'Hábitos para reducir distracciones y mejorar la concentración.', '2025-03-15', 10),
('Semana 4: Implementación Práctica', 'Aplicación de técnicas de gestión del tiempo en la vida diaria.', '2025-03-20', 10);
select * FROM unidades;
/*Inserción tabla CLASES*/
INSERT INTO clases (titulo, descripcion, fecha_inicio, marca_visibilidad, unidades_ID) VALUES
('Introducción a la Programación', 'Conceptos básicos de programación y algoritmos.', '2024-05-05', 1, 1),
('Desarrollo Web Frontend', 'Fundamentos de HTML, CSS y JavaScript para el desarrollo web.', '2024-05-07', 1, 2),
('Programación Orientada a Objetos', 'Principios de la programación orientada a objetos con Java.', '2024-05-10', 0, 3),
('Introducción a las Bases de Datos', 'Conceptos básicos de bases de datos relacionales y SQL.', '2024-05-12', 1, 4),
('Desarrollo de Aplicaciones Móviles', 'Creación de aplicaciones móviles multiplataforma con React Native.', '2024-05-15', 0, 5),
('Seguridad Informática', 'Principios básicos de seguridad informática y protección de datos.', '2024-05-17', 1, 6),
('Introducción al Análisis de Datos', 'Conceptos básicos de análisis de datos y visualización con Python.', '2024-05-20', 1, 7),
('Desarrollo de Videojuegos', 'Creación de videojuegos 2D y 3D con Unity.', '2024-05-22', 0, 8),
('Inteligencia Artificial', 'Fundamentos de inteligencia artificial y machine learning.', '2024-05-25', 1, 9),
('Ciberseguridad', 'Principios básicos de ciberseguridad y protección contra amenazas informáticas.', '2024-05-27', 1, 10),
('Desarrollo de Aplicaciones Web Avanzado', 'Técnicas avanzadas de desarrollo web con frameworks modernos.', '2024-06-05', 0, 11),
('Análisis de Datos con SQL', 'Uso avanzado de SQL para el análisis y manipulación de datos.', '2024-06-07', 1, 12),
('Desarrollo de Aplicaciones Móviles con Flutter', 'Creación de aplicaciones móviles multiplataforma con Flutter.', '2024-06-10', 1, 13),
('Machine Learning', 'Aplicaciones prácticas de machine learning en problemas del mundo real.', '2024-06-12', 0, 14),
('Desarrollo de Software Ágil', 'Metodologías ágiles y prácticas de desarrollo de software.', '2024-06-15', 1, 15),
('Blockchain y Criptomonedas', 'Conceptos básicos de blockchain y criptomonedas.', '2024-06-17', 1, 16),
('Desarrollo de Aplicaciones Web con Django', 'Creación de aplicaciones web con el framework Django de Python.', '2024-06-20', 0, 17),
('Cloud Computing', 'Principios básicos de computación en la nube y servicios de AWS.', '2024-06-22', 1, 18),
('Desarrollo de Chatbots', 'Creación de chatbots con lenguajes de programación y plataformas populares.', '2024-06-25', 1, 19),
('Programación Funcional con Haskell', 'Introducción a la programación funcional con Haskell.', '2024-06-27', 0, 20),
('Desarrollo de Aplicaciones Web con React', 'Creación de aplicaciones web modernas con React.js.', '2024-07-05', 1, 21),
('Deep Learning', 'Fundamentos y aplicaciones avanzadas de deep learning.', '2024-07-07', 1, 22),
('E-commerce y Tiendas en Línea', 'Desarrollo de plataformas de comercio electrónico y tiendas en línea.', '2024-07-10', 0, 23),
('Automatización de Procesos con Python', 'Automatización de tareas y procesos utilizando Python.', '2024-07-12', 1, 24),
('Desarrollo de Aplicaciones Móviles con Kotlin', 'Creación de aplicaciones móviles para Android con Kotlin.', '2024-07-15', 1, 25),
('Análisis de Datos con Pandas', 'Manipulación y análisis de datos con la biblioteca Pandas de Python.', '2024-07-17', 0, 26),
('Desarrollo de Juegos en 2D con Unity', 'Creación de juegos 2D utilizando el motor de Unity.', '2024-07-20', 1, 27),
('Big Data y Procesamiento de Datos', 'Principios básicos y herramientas para el procesamiento de grandes volúmenes de datos.', '2024-07-22', 1, 28),
('Desarrollo de Aplicaciones Móviles con Swift', 'Creación de aplicaciones móviles para iOS con Swift.', '2024-07-25', 0, 29),
('Seguridad en Redes', 'Principios y mejores prácticas de seguridad en redes informáticas.', '2024-07-27', 1, 30);
select * FROM clases;

/*Inserción tabla BLOQUES*/
INSERT INTO bloques (titulo, marca_visibilidad, clases_ID) VALUES
('Introducción a React', 1, 1),
('Componentes Avanzados en React', 1, 1),
('Fundamentos de Deep Learning', 1, 2),
('Redes Neuronales Convolucionales', 1, 2),
('Configuración de Tiendas en Línea', 1, 3),
('Diseño y Experiencia de Usuario en E-commerce', 1, 3),
('Automatización Básica con Python', 1, 4),
('Automatización Avanzada con Python', 1, 4),
('Desarrollo de Aplicaciones Android', 1, 5),
('Introducción a Kotlin', 1, 5),
('Manipulación de Datos con Pandas', 1, 6),
('Análisis Exploratorio de Datos', 1, 6),
('Primeros Pasos en Unity', 1, 7),
('Programación de Juegos en Unity', 1, 7),
('Introducción a Big Data', 1, 8),
('Herramientas de Procesamiento de Datos', 1, 8),
('Desarrollo de Aplicaciones iOS', 1, 9),
('Swift para Desarrolladores iOS', 1, 9),
('Firewalls y Seguridad en Redes', 1, 10),
('Cifrado de Datos y Protocolos de Seguridad', 1, 10),
('React Hooks y State Management', 1, 1),
('TensorFlow y Keras en Deep Learning', 1, 2),
('Optimización de Tiendas en Línea', 1, 3),
('Scraping Web con Python', 1, 4),
('Desarrollo de Juegos 2D con Unity', 1, 7),
('Procesamiento Distribuido con Hadoop', 1, 8),
('Desarrollo de Aplicaciones Móviles Multplataforma', 1, 9),
('Seguridad en Redes Inalámbricas', 1, 10);
select * FROM bloques;


