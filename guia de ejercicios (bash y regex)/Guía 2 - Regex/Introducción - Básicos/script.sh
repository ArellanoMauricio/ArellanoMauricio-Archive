echo "Las ocurrencias de la letra s."
echo ""
grep -E "s" oraciones.txt
echo ""
echo "Las ocurrencias de un caracter, seguido de la letra o (ej. to)."
echo ""
grep -E ".o" oraciones.txt
echo ""
echo "Todos los dígitos en el archivo."
echo ""
grep -E "[0-9]" oraciones.txt
echo ""
echo "Las ocurrencias del punto (.)."
echo ""
grep -E "\." oraciones.txt
echo ""
echo "Las ocurrencias de la letra c al comienzo de la palabra."
echo ""
grep -E "\b[Cc]\w*" oraciones.txt
echo ""
echo "Las palabras que comienzan con la letra p (no es necesario incluir las mayúsculas)."
echo ""
grep -E "\bp\w*" oraciones.txt
echo ""
echo ""
echo ""
echo "Todas las L (mayusculas) al principio de linea."
echo ""
grep -E "^L" oraciones.txt
echo ""
echo "Todas los "!" al final de linea."
echo ""
grep -E "!$" oraciones.txt
echo ""
echo "Todos los espacios."
echo ""
grep -E " " oraciones.txt
echo ""
echo "Todas las mayusculas y todos los numeros del 1 al 3."
echo ""
grep -E "[A-Z1-3]" oraciones.txt
