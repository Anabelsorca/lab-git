#!/bin/bash

for file in *.fastq; do
    echo "Procesando $file..."
    total_lines=$(wc -l < "$file")
    lines_to_keep=$((total_lines / 24))
    head -n "$lines_to_keep" "$file" > "temp_$file"
    mv "temp_$file" "$file"
done

echo "Recorte completado con 1/24 de cada archivo."

