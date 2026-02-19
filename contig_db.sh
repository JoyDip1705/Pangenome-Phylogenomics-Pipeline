for f in genomes/*.fa
do
  base=$(basename $f .fa)
  anvi-gen-contigs-database -f $f -o ${base}.db -n "$base genome"
done

