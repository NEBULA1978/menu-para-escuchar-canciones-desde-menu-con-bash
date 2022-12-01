#!/bin/bash
while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar directorio"
    echo "2. Mostrar calendario"
    echo "3. Mostrar dato"
    echo "5. Escuchar cancion Beni desde submenu"
    echo "6. Elegir la cancion de Beni"
    echo "7. Introduce la cancion a Escuchar Beni"
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Mostrando directorio"
        ls
        read foo
        ;;
    2)
        echo "Mostrando calendario"
        cal
        read foo
        ;;
    3)
        echo "Mostrando fecha de hoy"
        date
        read foo
        ;;
    5)  echo "5. Escuchar cancion Beni desde submenu"

        while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Introduce la cancion a Escuchar Beni"
    echo "2. Mostrar calendario"
    echo "3. Mostrar dato"
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Introduce la cancion a Escuchar Beni"
        echo -e "\n"
        # nvlc 'Zoo Station.mp3'
        read cancion
        mpg123 -q $cancion
        read foo
        ;;
    2)
        echo "Mostrando calendario"
        
        read foo
        ;;
    3)
        echo "Mostrando fecha de hoy"
        date
        read foo
        ;;
    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done


    
        echo "Escuchar cancion 'Zoo Station.mp3'"
        # NO VAN
        # play /home/beni/Música/Beni/Zoo\ Station.mp3
        # play $cancion
        # nvlc 'Zoo Station.mp3'
        # play $1
        # NO VAN

        mpg123 -q 'Zoo Station.mp3'
        mpg123 -q "Youssou N'Dour - 7 Seconds ft. Neneh Cherry.mp3"
        mpg123 -q 'You Belong To Me - JX.mp3'
        mpg123 -q 'Wonderful Days (2001 Radio Edit).mp3'
        mpg123 -q 'Wicked Game.mp3'
        mpg123 -q 'We Are The World.mp3'
        mpg123 -q 'Viva La Vida.mp3'
        mpg123 -q 'Vamos A La Playa.mp3'
        mpg123 -q 'Umbrella.mp3'
        mpg123 -q 'Tribal Dance.mp3'
        # play 'Zoo Station.mp3'
        read foo
        ;;
    6)
        echo "Elegir la cancion de Beni"
        echo "NO FUNCIONA"
        # nvlc 'Zoo Station.mp3'
        echo "Escuchar cancion mezclada de musica de Beni"
        echo -n "Deseas escuchar musicon de Beni? [s/n]: "
        read resultado

        if [[ $resultado == [sS] ]]; then
            echo "Vamos a escuchar mezcla de Beni..."
            echo -n "Introduce el nombre de la cancion: "
            read resultado
            # Ruta absoluta de esta carpeta /home/next/Música/menu para escuchar canciones desde menu con bash
            mpg123 -q $resultado
        elif [[ $resultado == [nN] ]]; then
            echo "El archivo no se va a escuchar"
        else
            echo "Opcion invalida"
        fi

        read foo
        ;;
    7)  
        echo -n "Introduce la cancion a Escuchar Beni"
        echo -e "\n"
        # nvlc 'Zoo Station.mp3'
        read cancion
        mpg123 -q $cancion
        read foo
        ;;
    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
