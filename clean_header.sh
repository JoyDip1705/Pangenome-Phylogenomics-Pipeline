for f in genomes/*.fna
do
  anvi-script-reformat-fasta $f \
    -o ${f%.fna}.fa \
    --simplify-names
done
