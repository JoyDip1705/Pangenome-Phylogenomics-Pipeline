for db in *.db
do
  anvi-run-hmms -c $db --num-threads 4
  anvi-run-ncbi-cogs -c $db --num-threads 4
  anvi-scan-trnas -c $db --num-threads 4
  anvi-run-scg-taxonomy -c $db --num-threads 4
done
