<?php
    include_once 'includes/sesiones.php';
    $sesiones = new Sesiones();
    if (isset($_SESSION["userfund"])) {
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Tarjeta | FO</title>
    <link rel="stylesheet" href="css/menu.css">
    <link rel="stylesheet" href="css/secciones.css">
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="#" class="active">Mi tarjeta</a></li>
                <li><a href="#">Administrar</a></li>
                <div class="dropdown">
                    <button class="dropbtn"><?php echo $_SESSION["userfund"] ?></button>
                    <div class="dropdown-content">
                        <a href="#">Cuenta</a>
                        <a href="includes/logout.php">Salir</a>
                    </div>
                </div>
            </ul>
        </nav>
    </header>
    <div class="container">
        <div class="pnl_principal">
            <div class="pnl_datos">
                <h4>Datos</h4>
                <form action="">
                    <input type="text" name="txtcodigo" id="txtcodigo">
                    <input type="button" value="Buscar">
                </form>
                <div>
                    <p>
                        <div class="linea"><h5>ID de familia:</h5><span>0001</span></div>
                        <div class="linea"><h5>Padre:</h5><span>José Pérez</span></div>
                        <div class="linea"><h5>Madre:</h5><span>Maria Mamani</span></div>
                    </p>
                    <p>
                        <div class="linea"><h5>Hijos inscritos:</h5><span>2</span></div>
                        <div class="linea"><h5>Hijo 1:</h5><span>Juan Jose Perez Mamani</span></div>
                        <div class="linea"><h5>Hijo 2:</h5><span>Marisol Perez Mamani</span></div>
                        <div class="linea"><h5>Hijo 3:</h5><span></span></div>
                    </p>
                    <p>
                        <div class="linea"><h5>Telefono 1:</h5><span>76565454</span></div>
                        <div class="linea"><h5>Telefono 2:</h5><span>76565433</span></div>
                        <div class="linea"><h5>Barrio:</h5><span>Trafalgar</span></div>
                    </p>
                </div>
                <div class="linea-r"><button>Editar</button></div>
            </div>
            <div class="pnl_tarjeta">
                <h4>Mi Tarjeta</h4>
                <h5>Reuniones</h5>
                <div class="fila">
                    <div>
                        <label for="chkene">E</label>
                        <label for="chkfeb">F</label>
                        <label for="chkmar">M</label>
                        <label for="chkabr">A</label>
                        <label for="chkmay">M</label>
                        <label for="chkjun">J</label>
                        <label for="chkjul">J</label>
                        <label for="chkago">A</label>
                        <label for="chksep">S</label>
                        <label for="chkoct">O</label>
                        <label for="chknov">N</label>
                        <label for="chkdic">D</label>
                    </div>
                    <div>
                        <input type="checkbox" name="chkene" id="chkene"/>
                        <input type="checkbox" name="chkfeb" id="chkfeb"/>
                        <input type="checkbox" name="chkmar" id="chkmar"/>
                        <input type="checkbox" name="chkabr" id="chkabr"/>
                        <input type="checkbox" name="chkmay" id="chkmay"/>
                        <input type="checkbox" name="chkjun" id="chkjun"/>
                        <input type="checkbox" name="chkjul" id="chkjul"/>
                        <input type="checkbox" name="chkago" id="chkago"/>
                        <input type="checkbox" name="chksep" id="chksep"/>
                        <input type="checkbox" name="chkoct" id="chkoct"/>
                        <input type="checkbox" name="chknov" id="chknov"/>
                        <input type="checkbox" name="chkdic" id="chkdic"/>
                    </div>
                </div>
                <br/>
                <br/>
                <h5>Aportes</h5>
                <br/>
                <h5>Hijo 1</h5>
                <div class="fila">
                    <div>
                        <label for="chkene-1">E</label>
                        <label for="chkfeb-1">F</label>
                        <label for="chkmar-1">M</label>
                        <label for="chkabr-1">A</label>
                        <label for="chkmay-1">M</label>
                        <label for="chkjun-1">J</label>
                        <label for="chkjul-1">J</label>
                        <label for="chkago-1">A</label>
                        <label for="chksep-1">S</label>
                        <label for="chkoct-1">O</label>
                        <label for="chknov-1">N</label>
                        <label for="chkdic-1">D</label>
                    </div>
                    <div>
                        <input type="checkbox" name="chkene-1" id="chkene-1"/>
                        <input type="checkbox" name="chkfeb-1" id="chkfeb-1"/>
                        <input type="checkbox" name="chkmar-1" id="chkmar-1"/>
                        <input type="checkbox" name="chkabr-1" id="chkabr-1"/>
                        <input type="checkbox" name="chkmay-1" id="chkmay-1"/>
                        <input type="checkbox" name="chkjun-1" id="chkjun-1"/>
                        <input type="checkbox" name="chkjul-1" id="chkjul-1"/>
                        <input type="checkbox" name="chkago-1" id="chkago-1"/>
                        <input type="checkbox" name="chksep-1" id="chksep-1"/>
                        <input type="checkbox" name="chkoct-1" id="chkoct-1"/>
                        <input type="checkbox" name="chknov-1" id="chknov-1"/>
                        <input type="checkbox" name="chkdic-1" id="chkdic-1"/>
                    </div>
                </div>
                <br/>
                <h5>Hijo 2</h5>
                <div class="fila">
                    <div>
                        <label for="chkene-2">E</label>
                        <label for="chkfeb-2">F</label>
                        <label for="chkmar-2">M</label>
                        <label for="chkabr-2">A</label>
                        <label for="chkmay-2">M</label>
                        <label for="chkjun-2">J</label>
                        <label for="chkjul-2">J</label>
                        <label for="chkago-2">A</label>
                        <label for="chksep-2">S</label>
                        <label for="chkoct-2">O</label>
                        <label for="chknov-2">N</label>
                        <label for="chkdic-2">D</label>
                    </div>
                    <div>
                        <input type="checkbox" name="chkene-2" id="chkene-2"/>
                        <input type="checkbox" name="chkfeb-2" id="chkfeb-2"/>
                        <input type="checkbox" name="chkmar-2" id="chkmar-2"/>
                        <input type="checkbox" name="chkabr-2" id="chkabr-2"/>
                        <input type="checkbox" name="chkmay-2" id="chkmay-2"/>
                        <input type="checkbox" name="chkjun-2" id="chkjun-2"/>
                        <input type="checkbox" name="chkjul-2" id="chkjul-2"/>
                        <input type="checkbox" name="chkago-2" id="chkago-2"/>
                        <input type="checkbox" name="chksep-2" id="chksep-2"/>
                        <input type="checkbox" name="chkoct-2" id="chkoct-2"/>
                        <input type="checkbox" name="chknov-2" id="chknov-2"/>
                        <input type="checkbox" name="chkdic-2" id="chkdic-2"/>
                    </div>
                </div>
                <br/>
                <h5>Hijo 3</h5>
                <div class="fila">
                    <div>
                        <label for="chkene-3">E</label>
                        <label for="chkfeb-3">F</label>
                        <label for="chkmar-3">M</label>
                        <label for="chkabr-3">A</label>
                        <label for="chkmay-3">M</label>
                        <label for="chkjun-3">J</label>
                        <label for="chkjul-3">J</label>
                        <label for="chkago-3">A</label>
                        <label for="chksep-3">S</label>
                        <label for="chkoct-3">O</label>
                        <label for="chknov-3">N</label>
                        <label for="chkdic-3">D</label>
                    </div>
                    <div>
                        <input type="checkbox" name="chkene-3" id="chkene-3"/>
                        <input type="checkbox" name="chkfeb-3" id="chkfeb-3"/>
                        <input type="checkbox" name="chkmar-3" id="chkmar-3"/>
                        <input type="checkbox" name="chkabr-3" id="chkabr-3"/>
                        <input type="checkbox" name="chkmay-3" id="chkmay-3"/>
                        <input type="checkbox" name="chkjun-3" id="chkjun-3"/>
                        <input type="checkbox" name="chkjul-3" id="chkjul-3"/>
                        <input type="checkbox" name="chkago-3" id="chkago-3"/>
                        <input type="checkbox" name="chksep-3" id="chksep-3"/>
                        <input type="checkbox" name="chkoct-3" id="chkoct-3"/>
                        <input type="checkbox" name="chknov-3" id="chknov-3"/>
                        <input type="checkbox" name="chkdic-3" id="chkdic-3"/>
                    </div>
                </div>
                <br/>
            </div>
            <div class="pnl_menu">
                <h4>Acciones</h4>
                <button>Aporte</button>
                <button>Multa</button>
            </div>
            <div class="pnl_lista">
                <h4>Detalles</h4>
            </div>
        </div>
    </div>
</body>
</html>
<?php
    } else {
        header('location:vistas/login.php');
    }
?>