#!/bin/bash
awk -F":" '{print $1, $3, $6}' /etc/passwd;

# awk = suite d'action de la forme : 
# motif { action }
# le motif determine sur quoi est appliquée l'action.
# -F = separateur de champ
# '$1', '$2' etc correspondent au champs.
