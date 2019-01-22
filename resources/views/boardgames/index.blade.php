<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Lista de Board Games</title>
</head>
<body>
    <button>Agregar Board Game</button>
    <table>
        <thead>
            <tr>
                <th>
                    <th>Nombre</th>
                    <th>Precio</th>
                    <th>Acciones</th>
                </th>
            </tr>
        </thead>
        <tbody>
            @foreach($boardgames as $boardgame)
                <tr>
                    <td>{{ $boardgame->nombre }}</td>
                    <td>{{ $boardgame->precio }}</td>
                    <td>
                        <button>Editar</button>
                        <button>Borrar</button>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>