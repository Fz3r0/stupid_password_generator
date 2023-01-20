#!/bin/bash

    # Github:   Fz3r0

    # Twitter:  @Fz3r0_OPs

    # Youtube:  @Fz3r0_OPs

counter=0
clear
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-"
echo ""
echo "              Generador de Passwords Estúpidos v1.0 by Fz3r0"
echo ""
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-"
echo ""
echo "[+] Este script genera Passwords vulnerables, filtrados, públicos y estúpidos."
echo ""
echo "[+] ¡No utlizar ninguno de estos Passwords en Producción!" 
echo ""
echo "[+] ¡Esta herramienta está hecha para probar ataques de fuerza bruta!"
echo ""
echo "[+] Los Passwords generados tienen 10 o más caracteres (Perfectos para WPA2)"
echo ""
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-"
echo ""
echo "    5 PASSWORDS ESTÚPIDOS QUE UTILIZA TU TÍO EL BORRACHO SON:"
echo ""
#Obtenemos las primeras 10000 lineas del archivo rockyou.txt
head -10000 /usr/share/wordlists/rockyou.txt | shuf | while read line; do
    # Verificamos si la línea tiene 10 o más caracteres
    if [[ ${#line} -ge 10 ]]; then
        #Imprimimos la linea
        echo $line
        #Incrementamos el contador en 1
        counter=$((counter+1))
        #Verificamos si el contador ha alcanzado 5
        if [[ $counter -eq 5 ]]; then
            #Salimos del ciclo
            break
        fi
    fi
done
