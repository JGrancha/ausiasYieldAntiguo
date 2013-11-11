-- Base de datos incompleta para el proyecto

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `ausiasyield`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE IF NOT EXISTS `actividad` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `enunciado` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `evaluacion` int(1) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`id`, `enunciado`, `fecha`, `evaluacion`, `activo`) VALUES
(1, 'Actividad01', '2013-10-31', 1, 1),
(2, 'Actividad02', '2013-10-31', 1, 1),
(3, 'Actividad03', '2013-11-02', 1, 1),
(4, 'Actividad04', '2013-11-15', 1, 1),
(5, 'Actividad05', '2013-12-15', 1, 1),
(6, 'Actividad06', '2014-01-20', 2, 1),
(7, 'Actividad07', '2014-01-29', 2, 1),
(8, 'Actividad08', '2014-02-15', 2, 1),
(9, 'Actividad09', '2014-03-02', 2, 1),
(10, 'Actividad10', '2014-03-14', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividadoffline`
--

CREATE TABLE IF NOT EXISTS `actividadoffline` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `enunciado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `calificacion` double(5,2) DEFAULT NULL,
  `evaluacion` int(6) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `actividadoffline`
--

INSERT INTO `actividadoffline` (`id`, `enunciado`, `fecha`, `calificacion`, `evaluacion`, `activo`) VALUES
(1, 'enunciado uno', '2013-11-04', 5.30, 1, 0),
(2, 'enunciado dos', '2013-11-04', 6.50, 1, 1),
(3, 'enunciado tres', '2013-11-05', 4.50, 2, 1),
(4, 'enunciado cuatro', '2013-11-04', 8.50, 2, 1),
(5, 'enunciado seis', '2013-11-04', 9.90, 2, 1),
(6, 'enunciado siete', '2013-11-04', 10.00, 3, 1),
(7, 'enunciado ocho', '2013-11-04', 8.70, 2, 0),
(8, 'enunciado nueve', '2013-11-04', 5.00, 3, 0),
(9, 'enunciado diez', '2013-11-04', 9.60, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE IF NOT EXISTS `alumno` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(6) DEFAULT NULL,
  `dni` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numexpediente` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ape1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ape2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sexo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domicilio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codpostal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `poblacion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provincia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Realizada por: José Grancha' AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `id_usuario`, `dni`, `numexpediente`, `nombre`, `ape1`, `ape2`, `sexo`, `domicilio`, `codpostal`, `poblacion`, `provincia`, `telefono`, `email`, `validado`) VALUES
(1, 1, '12345678A', '000000001', 'Pepe', 'Benito', 'Rodri', 'Hombre', 'C/Valencia 1-5', '46000', 'Valencia', 'Valencia', '666111222', 'pepe@hotmail.com', 'si'),
(2, 2, '23456789B', '000000002', 'Juan', 'Senz', 'Pila', 'Hombre', 'C/Pep 5-3', '46020', 'Valencia', 'Valencia', '666122322', 'Juan@hotmail.com', 'si'),
(3, 3, '34567891C', '0000000003', 'Maria', 'Antonia', 'Gil', 'Mujer', 'C/Ausias March', '46020', 'Valencia', 'Valencia', '777654578', 'Maria@gmail.com', 'si'),
(4, 4, '21445789A', '000000004', 'Antonia', 'Juanita', 'Menganita', 'Mujer', 'C/La alcuida 50-7', '46020', 'Valencia', 'Valencia', '625532114', 'Antonia@gmail.com', 'no'),
(5, 5, '54783216Z', '000000005', 'Edu', 'Mem', 'Belingo', 'Hombre', 'C/Pepa Wili 8-7', '46020 ', 'Valencia', 'Valencia', '652123478', 'Ed@hotmail.com', 'si'),
(6, 6, '23144785G', '000000006', 'José', 'Grancha', 'Bonora', 'Hombre', 'C/Sin nombre', '46020', 'Valencia', 'Valencia', '650203333', 'Jose@hotmail.com', 'si'),
(7, 7, '23544789V', '000000007', 'Silvia', 'Trempa', 'Luvi', 'Mujer', 'C/Tranvia 56-7', '46020', 'Valencia', 'Valencia', '620147893', 'Silvia@gmail.com', 'si'),
(8, 8, '24563897J', '000000008', 'Pedro', 'Benito', 'Camela', 'Hombre', 'C/Autovia 52-4', '46020', 'Valencia', 'Valencia', '620147893', 'Pedro@hotmail.com', 'no'),
(9, 9, '23547711L', '000000009', 'Rafael', 'Lavara', 'Mintonga', 'Hombre', 'C/La alhambra 557-1', '46020', 'Valencia', 'Valencia', '623014785', 'Rafael@gmail.com', 'no'),
(10, 10, '22144457F', '00000010', 'Daniel', 'Bonti', 'Basta', 'Hombre', 'C/La higuera 45-1', '46211', 'Albacete', 'Albacete', '677845021', 'Daniel@hotmail.com', 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backlog`
--

CREATE TABLE IF NOT EXISTS `backlog` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `enunciado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripciondetallado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_requerimiento` int(6) DEFAULT NULL,
  `fechainicioprevista` date DEFAULT NULL,
  `fechafinprevista` date DEFAULT NULL,
  `fechainicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `id_usuario` int(6) DEFAULT NULL,
  `horasduracionprevista` int(6) DEFAULT NULL,
  `porcentajecompletado` int(6) DEFAULT NULL,
  `fechaalta` date DEFAULT NULL,
  `sprint` int(6) DEFAULT NULL,
  `release` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `backlog`
--

INSERT INTO `backlog` (`id`, `enunciado`, `descripciondetallado`, `id_requerimiento`, `fechainicioprevista`, `fechafinprevista`, `fechainicio`, `fechafin`, `id_usuario`, `horasduracionprevista`, `porcentajecompletado`, `fechaalta`, `sprint`, `release`) VALUES
(1, 'Mantenimiento de Usuarios: Alta', 'Dar de alta usuarios en la base de datos ', 1, '2013-10-31', '2013-12-31', '2013-11-04', '2013-11-30', 1, 40, 50, '2013-10-28', 1, 1),
(2, 'Mantenimiento de Usuarios: Modificar', 'Modificar usuarios en la base de datos ', 2, '2013-10-31', '2013-12-31', '2013-11-04', '2013-11-30', 2, 30, 40, '2013-10-29', 2, 2),
(3, 'Mantenimiento de Usuarios: Eliminar', 'Eliminar usuarios en la base de datos ', 3, '2013-10-31', '2013-12-31', '2013-11-04', '2013-11-30', 3, 35, 60, '2013-10-29', 3, 3),
(4, 'Diseño de Interfaz', 'Desarrollo en Entorno de Cliente: HTML y CSS', 4, '2013-10-01', '2014-01-31', '2013-11-10', '2014-02-28', 6, 90, 15, '2013-10-01', 4, 4),
(5, 'Listado de Usuarios', 'Crear aplicación de listados de clientes', 5, '2013-10-01', '2014-01-31', '2013-11-10', '2014-02-28', 3, 90, 15, '2013-10-01', 1, 1),
(6, 'Mantenimiento de Profesores', 'Dar de alta, modificar y eliminar profesores', 1, '2013-10-31', '2013-12-31', '2013-11-04', '2013-11-30', 6, 15, 10, '2013-10-29', 3, 3),
(7, 'Mantenimiento de Cuestionarios', 'Crear Cuestionarios, modificarlos y eliminarlos', 8, '2013-10-31', '2013-12-31', '2013-11-04', '2013-11-30', 8, 40, 25, '2013-10-29', 3, 3),
(8, 'Mantenimiento de Bolsa', 'Crear ofertas de trabajo y vincularlas con los usuarios', 1, '2013-10-01', '2014-01-31', '2013-11-10', '2014-02-28', 9, 85, 5, '2013-10-01', 4, 4),
(9, 'Trabajo de Campo', 'Realizar recopilacion de datos para añadir usuarios a la base de datos', 4, '2013-10-02', '2013-12-12', '2013-11-17', '2013-11-30', 5, 15, 0, '2013-10-01', 2, 2),
(10, 'Test de Proyecto', 'Comprobación de errores en el Proyexto', 1, '2013-10-01', '2013-11-09', '2013-10-07', '2013-11-16', 1, 20, 10, '2013-10-01', 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bolsa`
--

CREATE TABLE IF NOT EXISTS `bolsa` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_documento1` int(6) DEFAULT NULL,
  `id_documento2` int(6) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `bolsa`
--

INSERT INTO `bolsa` (`id`, `id_documento1`, `id_documento2`, `fecha`) VALUES
(1, 6, 1, '2013-10-31'),
(2, 5, 2, '2013-10-30'),
(3, 5, 3, '2013-10-29'),
(4, 1, 4, '2013-10-28'),
(5, 6, 5, '2013-10-27'),
(6, 5, 6, '2013-10-26'),
(7, 4, 7, '2013-10-25'),
(8, 3, 8, '2013-10-24'),
(9, 2, 9, '2013-10-23'),
(10, 1, 10, '2013-10-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(6) DEFAULT NULL COMMENT 'referencia usuario',
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cif` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localidad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provincia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pais` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actividad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombrecontacto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailcontacto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validada` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `id_usuario`, `nombre`, `cif`, `direccion`, `localidad`, `provincia`, `pais`, `telefono`, `fax`, `actividad`, `nombrecontacto`, `emailcontacto`, `validada`) VALUES
(1, 21, 'CapCom', 'B82101692', 'C/ ALBASANZ 65 - EDIFICIO AMERICA III', 'MADRID', 'MADRID', 'ESPAÑA', '901667337', '901667338', 'Explotación de actividades de telecomunicaciones y videojuegos', 'Marco', 'marco-tec@capcom.com', '1'),
(2, 22, 'Teleco', 'B82141692', 'C/Zapadores, 7', 'Valencia', 'Valencia', 'España', '962700151', '962700152', 'Explotación de actividades de telecomunicaciones', 'Fernando', 'fernando@teleco.com', '0'),
(3, 23, 'Mercadona S.A.', 'B82701692', 'C/Alguina, SN', 'Madrid', 'Madrid', '28083', '920120222', '920120222', 'Cadena de supermercados', 'Mauricio', 'mauricio@mercadona.com', '1'),
(4, 24, 'Vistaprint', 'B82700692', 'C/Sagunto, 55', 'Valladolid', '47071', 'España', '912001423', NULL, 'Material de publicidad', 'Carmen', 'carmen@vistaprint.com', '0'),
(5, 25, 'Google', 'B82700092', 'Plaza Pablo Ruiz Picasso, 1', 'Madrid', 'Madrid', 'España', '917486400', '917486402', 'Servicios de internet y busqueda', 'Ana', 'ana-spain@google.com', '0'),
(6, 26, 'Konami', 'B87801692', 'Paseo de la Castellana, 91. 5B', 'Madrid', 'Madrid', 'España', '902111573', '915155088', 'Desarrollo de videojuegos', 'Carlos', 'carlos-spain@konami.com', '1'),
(7, 28, 'Orange', 'B82101644', 'Calle de Menorca, 19', 'Valencia', 'Valencia', 'España', '963319976', NULL, 'Telecomunicaciones y telefonia', 'francisco', 'fran@orange.com', '0'),
(8, 29, 'Samsung', 'B82444692', 'C/Alabasta, 70', 'Barcelona', 'Barcelona', 'España', '910112335', '910112336', 'Fabricación de dispositivos moviles', 'carla', 'carla-spain@samsung.com', '1'),
(9, 27, 'Gigabyte', 'B82400192', 'Bau Chiang Road, 6', 'Hsin-Tien', 'Taipei', 'Taiwan', '+886289124000', '+886289124003', 'Fabricación de componentes informáticos.', 'sui', 'sui-taiwan@gigabyte.com', '0'),
(10, 30, 'Microsoft', 'B82101640', 'C/Sagunto, 4', 'Madrid', 'Madrid', 'España', '902197198', '917547010', 'Desarrollo sistema operativo y consola', 'sara', 'comercial-sara@microsoft.com', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrega`
--

CREATE TABLE IF NOT EXISTS `entrega` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `id_documento` int(50) DEFAULT NULL,
  `id_actividad` int(50) DEFAULT NULL,
  `nota` int(4) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `entrega`
--

INSERT INTO `entrega` (`id`, `id_documento`, `id_actividad`, `nota`, `fecha`) VALUES
(1, 1, 1, 5, '2013-10-16'),
(2, 2, 2, 5, '2013-10-16'),
(3, 3, 3, 6, '2013-10-17'),
(4, 4, 4, 5, '2013-10-19'),
(5, 5, 5, 7, '2013-10-20'),
(6, 6, 6, 6, '2013-10-21'),
(7, 7, 7, 4, '2013-10-22'),
(8, 8, 8, 5, '2013-10-23'),
(9, 9, 9, 8, '2013-10-24'),
(10, 10, 10, 7, '2013-10-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `nombre`) VALUES
(1, 'abierta'),
(2, 'en_estudio'),
(3, 'resuelta'),
(4, 'integrada'),
(5, 'fase_inicial'),
(6, 'fase_intermedia'),
(7, 'fase_final'),
(8, 'asignada'),
(9, 'no_asignada'),
(10, 'fase_test');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `follower`
--

CREATE TABLE IF NOT EXISTS `follower` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_usuario1` int(6) DEFAULT NULL,
  `id_usuario2` int(6) DEFAULT NULL COMMENT '1 usuario es seguido por uno o varios usuarios.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `follower`
--

INSERT INTO `follower` (`id`, `id_usuario1`, `id_usuario2`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 2, 4),
(4, 2, 5),
(5, 3, 1),
(6, 3, 2),
(7, 4, 3),
(8, 4, 5),
(9, 5, 3),
(10, 5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencias`
--

CREATE TABLE IF NOT EXISTS `incidencias` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `resumen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cambios` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_repositorio` int(6) DEFAULT NULL,
  `id_usuario` int(6) DEFAULT NULL,
  `fechaalta` date DEFAULT NULL,
  `fecharesolucion` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `incidencias`
--

INSERT INTO `incidencias` (`id`, `resumen`, `cambios`, `id_estado`, `id_repositorio`, `id_usuario`, `fechaalta`, `fecharesolucion`) VALUES
(1, 'Incidencia 1', 'Cambio 1', NULL, NULL, NULL, '2013-11-03', '2013-11-04'),
(2, 'Incidencia 2', 'Cambio 2', NULL, NULL, NULL, '2013-11-03', '2013-11-04'),
(3, 'Incidencia 3', 'Cambio 3', NULL, NULL, NULL, '2013-11-03', '2013-11-04'),
(4, 'Incidencia 4', 'Cambio 4', NULL, NULL, NULL, '2013-11-03', '2013-11-04'),
(5, 'Incidencia 5', 'Cambio 5', NULL, NULL, NULL, '2013-11-03', '2013-11-04'),
(6, 'Incidencia 6', 'Cambio 6', NULL, NULL, NULL, '2013-11-03', '2013-11-04'),
(7, 'Incidencia 7', 'Cambio 7', NULL, NULL, NULL, '2013-11-03', '2013-11-04'),
(8, 'Incidencia 8', 'Cambio 8', NULL, NULL, NULL, '2013-11-03', '2013-11-04'),
(9, 'Incidencia 9', 'Cambio 9', NULL, NULL, NULL, '2013-11-03', '2013-11-04'),
(10, 'Incidencia 10', 'Cambio 10', NULL, NULL, NULL, '2013-11-03', '2013-11-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repositorio`
--

CREATE TABLE IF NOT EXISTS `repositorio` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contenido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_usuario` int(6) DEFAULT NULL,
  `id_lenguaje` int(6) DEFAULT NULL,
  `id_documento` int(6) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `repositorio`
--

INSERT INTO `repositorio` (`id`, `titulo`, `contenido`, `id_usuario`, `id_lenguaje`, `id_documento`, `fecha`) VALUES
(1, 'permitir NULOS en todos los campos menos en el id y valor por defecto NULL', 'public String dateToMySQLDate(Date fecha)\r\n{\r\n  java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");\r\n  return sdf.format(fecha);\r\n}', 1, 1, 1, '2013-10-01'),
(2, 'permitir NULOS en todos los campos menos en el id y valor por defecto NULL', 'public String dateToMySQLDate(Date fecha)\r\n{\r\n  java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");\r\n  return sdf.format(fecha);\r\n}', 1, 1, 1, '2013-10-01'),
(3, 'Comunicación externa', 'response.sendRedirect("http://www.rafaelaznar.net");\r\nresponse.sendRedirect("/blog/login.jsp"); (el contenedor completa la redirección)', 2, 2, 2, '2013-10-02'),
(4, 'Como servlet y jsp comparten el mismo request no es necesario pasar los parametros a nivel de sesion.', 'public class ServletToJSP extends HttpServlet {\r\n  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {\r\n  \r\n    //comunicación de un string\r\n    String mensaje = "Ejemplo de comunicación de un', 3, 3, 3, '2013-10-03'),
(5, 'Nivel de request', '<%\r\nString userName = request.getParameter("name");\r\n%>\r\n<br />\r\nEl nombre del usuario es: <%=userName%>', 4, 4, 4, '2013-10-04'),
(6, 'Nivel session', '\r\n\r\n    <%session.setAttribute(“usuarioSesion”,userName);%>\r\n    <%pageContext.setAttribute(“usuarioApp”,userName,PageContext.SESSION_SCOPE);%>\r\n    <%=session.getAttribute(“usuarioSesion”);%>\r\n\r\n', 5, 5, 5, '2013-10-05'),
(7, 'Nivel application', '\r\n\r\n    <%application.setAttribute(“usuarioApp”,userName);%>\r\n    <%pageContext.setAttribute(“usuarioApp”,userName,PageContext.APPLICATION_SCOPE);%>\r\n    <%=application.getAttribute(“usuarioApp”);%>\r\n\r\n', 6, 6, 6, '2013-10-06'),
(8, 'Nivel page', ' <%pageContext.setAttribute(“usuarioPage”,userName);%>\r\n<%=pageContext.getAttribute(“usuarioPage”);%>\r\n', 7, 7, 7, '2013-10-07'),
(9, 'web.xml', '<servlet>\r\n  <servlet-name>init</servlet>\r\n  <jsp-file>/initpage.jsp</jsp-file>\r\n  <init-param>\r\n    <param-name>defaultUser</param-name>\r\n    <param-value>Usuario por defecto</param-value>\r\n  </init-param>\r\n</servlet>\r\n<servlet-mapping>\r\n  <servlet-name>', 8, 8, 8, '2013-10-08'),
(10, 'jspInit()', '<%!\r\npublic void jspInit(){\r\n  String defaultUser = getServletConfig().getInitParameter("defaultUser");\r\n  ServletContext context = getServletContext();\r\n  context.setAttribute("defaultUser",defaultUser);\r\n}\r\n%>\r\n<body>\r\nThe default user from the servlet ', 10, 10, 10, '2013-10-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requerimiento`
--

CREATE TABLE IF NOT EXISTS `requerimiento` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `enunciado` int(6) DEFAULT NULL,
  `fechaalta` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `requerimiento`
--

INSERT INTO `requerimiento` (`id`, `enunciado`, `fechaalta`) VALUES
(1, 0, '2013-11-04'),
(2, 1, '2013-10-04'),
(3, 3, '2013-11-04'),
(4, 2, '2013-11-04'),
(5, 10, '2013-11-04'),
(6, 4, '2013-11-04'),
(7, 5, '2013-11-04'),
(8, 7, '2013-11-04'),
(9, 9, '2013-11-04'),
(10, 6, '2013-11-04'),
(11, 8, '2013-11-04'),
(12, 8, '2013-11-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stream`
--

CREATE TABLE IF NOT EXISTS `stream` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(6) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `contenido` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `stream`
--

INSERT INTO `stream` (`id`, `id_usuario`, `fecha`, `contenido`) VALUES
(1, 1, '2013-11-01', 'Registro 1'),
(2, 2, '2013-11-02', 'Registro2'),
(3, 3, '2013-11-02', 'Resgistro3'),
(4, 4, '2013-11-01', 'Resgistro4'),
(5, 5, '2013-11-01', 'Registro5'),
(6, 6, '2013-11-01', 'Registro6'),
(7, 7, '2013-11-01', 'Registro7'),
(8, 8, '2013-11-01', 'Registro8'),
(9, 9, '2013-11-01', 'Registro9'),
(10, 10, '2013-11-01', 'Registro10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE IF NOT EXISTS `tipodocumento` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `privado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `tipodocumento`
--

INSERT INTO `tipodocumento` (`id`, `descripcion`, `privado`) VALUES
(1, 'oferta de trabajo', 1),
(2, 'currículum', 1),
(3, 'actividad', 1),
(4, 'experencia', 1),
(5, 'formación', 1),
(6, 'valía', 1),
(7, 'inscripción', 1),
(8, 'solicitud', 1),
(9, 'bolsa de trabajo', 1),
(10, 'idiomas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `password`) VALUES
(1, 'pepe', 'pepe'),
(2, 'juan', 'juan'),
(3, 'maria', 'maria'),
(4, 'antonia', 'antonia'),
(5, 'edu', 'edu'),
(6, 'jose', 'jose'),
(7, 'silvia', 'silvia'),
(8, 'pedro', 'pedro'),
(9, 'raquel', 'raquel'),
(10, 'daniel', 'daniel'),
(11, 'rafael', 'rafael'),
(12, 'juan', 'juan'),
(13, 'elena', 'elena'),
(14, 'luis', 'luis'),
(15, 'alba', 'alba'),
(16, 'amparo', 'amparo'),
(17, 'ambrosio', 'ambrosio'),
(18, 'luisa', 'luisa'),
(19, 'leon', 'leon'),
(20, 'rosa', 'rosa'),
(21, 'capcom', 'capcom'),
(22, 'teleco', 'teleco'),
(23, 'mercadona', 'mercadona'),
(24, 'vistaprint', 'vistaprint'),
(25, 'google', 'google'),
(26, 'konami', 'konami'),
(27, 'orange', 'orange'),
(28, 'samsung', 'samsung'),
(29, 'gigabyte', 'gigabyte'),
(30, 'microsoft', 'microsoft');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votocomentario`
--

CREATE TABLE IF NOT EXISTS `votocomentario` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_comentario` int(6) DEFAULT NULL COMMENT 'comentario al que se vota',
  `id_usuario` int(6) DEFAULT NULL COMMENT 'usuario que vota',
  `valor` int(6) DEFAULT NULL COMMENT 'es el valor que el usuario votó al comentario en ese momento',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `votocomentario`
--

INSERT INTO `votocomentario` (`id`, `id_comentario`, `id_usuario`, `valor`) VALUES
(1, 1, 2, 6),
(2, 1, 4, 7),
(3, 4, 2, 2),
(4, 1, 3, 8),
(5, 2, 4, 7),
(6, 3, 8, 5),
(7, 4, 9, 8),
(8, 7, 4, 6),
(9, 6, 3, 7),
(10, 2, 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votodocumento`
--

CREATE TABLE IF NOT EXISTS `votodocumento` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_documento` int(6) DEFAULT NULL COMMENT 'referencia documento al que se vota',
  `id_usuario` int(6) DEFAULT NULL COMMENT 'referencia usuario que vota',
  `valor` int(6) DEFAULT NULL COMMENT 'es el valor que el usuario votó al documento en ese momento',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `votodocumento`
--

INSERT INTO `votodocumento` (`id`, `id_documento`, `id_usuario`, `valor`) VALUES
(1, 4, 1, 6),
(2, 3, 2, 4),
(3, 4, 5, 6),
(4, 2, 4, 2),
(5, 1, 5, 7),
(6, 6, 4, 4),
(7, 6, 7, 4),
(8, 9, 4, 6),
(9, 3, 4, 7),
(10, 5, 5, 4);


-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `profesor`
-- Pedro Benito Soria
--

CREATE TABLE IF NOT EXISTS `profesor` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(6) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ape1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ape2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sexo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dni` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `id_usuario`, `nombre`, `ape1`, `ape2`, `sexo`, `telefono`, `email`, `dni`) VALUES
(1, 11, 'Rafael', 'Aznar', 'Aparici', 'Hombre', '600000001', 'raznar@gmail.com', '9876543'),
(2, 12, 'Juan', 'Martinez', 'Martinez', 'Hombre', '600000002', 'juanmartinez@gmail.com', '1234567'),
(3, 13, 'Elena', 'Calle', 'Soriano', 'Mujer', '600000003', 'elenacalle@gmail.com', '8763915'),
(4, 14, 'Luis', 'Companys', 'Garcia', 'Hombre', '60000005', 'luiscompanys@gmail.com', '87625671'),
(5, 15, 'Alba', 'Benito', 'Albert', 'Mujer', '650567732', 'albabenito@gmail.com', '42697213'),
(6, 16, 'Amparo', 'Albert', 'Laplaza', 'Mujer', '606277789', 'albertlaplaza@gmail.com', '74568290'),
(7, 17, 'Ambrosio', 'Galindez', 'Garcia', 'Hombre', '633214596', 'ambrosiogdez@gmail.com', '291755364'),
(8, 18, 'Luisa', 'Martinez', 'Benito', 'Mujer', '687123456', 'luisamartinez@gmail.com', '321456987'),
(9, 19, 'Leon', 'Trotsky', 'Perez', 'Hombre', '625879321', 'leontrotsky@gmail.com', '4789651'),
(10, 20, 'Rosa', 'Luxemburgo', 'Delicado', 'Mujer', '625132147', 'rosaluxe@gmail.com', '321456987');

-- 
-- Añadir tabla cuestionario
-- by Salva Tamarit
--

CREATE TABLE IF NOT EXISTS `cuestionario` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `evaluacion` int(6) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

INSERT INTO `cuestionario` (`id`, `descripcion`, `fecha`, `evaluacion`, `activo`) VALUES
(1,'Descripcion uno','2013-11-01',1,0),
(2,'Descripcion dos','2013-11-01',1,0),
(3,'Descripcion tres','2013-11-01',1,0),
(4,'Descripcion cuatro','2013-11-01',1,0),
(5,'Descripcion cinco','2013-11-01',1,0),
(6,'Descripcion seis','2013-11-01',1,0),
(7,'Descripcion siete','2013-11-01',1,0),
(8,'Descripcion ocho','2013-11-01',1,0),
(9,'Descripcion nueve','2013-11-01',1,0),
(10,'Descripcion diez','2013-11-01',1,0);


--
-- Base de datos: `ausiasyield`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada`
--

CREATE TABLE IF NOT EXISTS `entrada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contenido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_hilo` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Creada por José Grancha' AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `entrada`
--

INSERT INTO `entrada` (`id`, `titulo`, `contenido`, `id_usuario`, `id_hilo`, `fecha`) VALUES
(1, 'Modificacion clase Java(Pojo1.class)', 'Hay errores en la clase', 1, 1, '2013-11-03'),
(2, 'Creación clase mysql', 'Crear completamente la clase', 2, 2, '2013-10-10'),
(3, 'Clase DAO Entrada', 'Modificar método getPages()', 3, 3, '2013-11-28'),
(4, 'Optimizar Funcionamiento Programa', 'Realizar mejoras en el código', 4, 4, '2013-11-05'),
(5, 'Error entrada form login', 'Da una excepción al intentar entrar', 5, 5, '2013-09-19'),
(6, 'Problemas con listados', 'Un campo no aparece', 6, 6, '2013-11-23'),
(7, 'Borrado y edit NO funcionan en Empresa', 'Solucionar el problema', 7, 7, '2013-10-16'),
(8, 'Depuración código', 'Depurar código y hacer pruebas', 8, 8, '2013-09-23'),
(9, 'Listado Usuarios no está disponible', 'Arreglar', 9, 9, '2013-10-09'),
(10, 'Realizar mantenimiento clases DAO', 'Probar y optimizar', 10, 10, '2013-11-20');