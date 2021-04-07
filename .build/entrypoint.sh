#!/bin/sh -l

set -e

input_paths="$1"
config_file="$2"

### Function Header ###########################################################
Header() {
  ##########
  # Prints #
  ##########
  echo "---------------------------------------------"
  echo "-- GitHub Actions TYPO3 PHPStan ---"
  echo "---------------------------------------------"
  echo "TYPO3 PHPStan source code can be found at:"
  echo " - https://github.com/TYPO3-Continuous-Integration/TYPO3-CI-PHPStan"
  echo "---------------------------------------------"
}

### Function Check #############################################################
Check() {
  ##########
  # Prints #
  ##########
  echo "---------------------------------------------"
  echo "-- Running check... ---"
  echo "---------------------------------------------"
  sh -c "phpstan -c $config_file $input_paths"
}

#### Function Footer ###########################################################
Footer() {
  ##########
  # Prints #
  ##########
  echo "----------------------------------------------"
  echo "----------------------------------------------"
  echo "The script has completed"
  echo "----------------------------------------------"
  echo "----------------------------------------------"
}

################################################################################
############################### MAIN ###########################################
################################################################################

##########
# Header #
##########
Header

##########
# Check #
##########
Check

##########
# Footer #
##########
Footer
