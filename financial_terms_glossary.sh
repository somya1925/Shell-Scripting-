Shell Scripting Code:
#!/bin/bash
 
# Define financial terms and their descriptions
terms=("stocks" "bonds" "real estate" "short term capital gain" "long term capital gain" "diversification in stocks" "MTP" "Alpha" "Gamma")
descriptions=("Shares of ownership in a company" "Loans made to businesses or governments" "Property that is owned and used to generate income" "Profit from selling an asset held for one year or less" "Profit from selling an asset held for more than one year" "Spreading investments across different asset classes to reduce risk" "Modern portfolio theory, a framework for optimizing investment portfolios" "A measure of a portfolio's risk-adjusted performance" "A measure of the sensitivity of an option's price to changes in the underlying asset")
 
# Welcome message
echo "Welcome to the financial terms glossary!"
 
# Display a menu of available terms
echo "Select the term you want to learn more about:"
for index in "${!terms[@]}"; do
  echo "[$index] - ${terms[$index]}"
done
 
# Prompt the user to select a term
read -p "Enter your choice: " choice
 
# Validate the user's choice
if [[ $choice -lt 0 || $choice -ge ${#terms[@]} ]]; then
  echo "Invalid choice. Please enter a number between 0 and ${#terms[@]} - 1."
  exit 1
fi
 
# Provide the description of the selected term
selectedTerm=${terms[$choice]}
selectedDescription=${descriptions[$choice]}
echo "Here's a description of $selectedTerm:"
echo $selectedDescription
 
# Ask the user if they want to learn more about another term
read -p "Do you want to learn about another term? (y/n) " answer
 
while [[ $answer == "y" ]]; do
  # Display the menu again
  echo "Select the term you want to learn more about:"
  for index in "${!terms[@]}"; do
    echo "[$index] - ${terms[$index]}"
  done
 
  # Prompt the user to select another term
  read -p "Enter your choice: " choice
 
  # Validate the user's choice
  if [[ $choice -lt 0 || $choice -ge ${#terms[@]} ]]; then
    echo "Invalid choice. Please enter a number between 0 and ${#terms[@]} - 1."
  else
    # Provide the description of the selected term
    selectedTerm=${terms[$choice]}
    selectedDescription=${descriptions[$choice]}
    echo "Here's a description of $selectedTerm:"
    echo $selectedDescription
 
    # Ask the user if they want to learn more about another term
    read -p "Do you want to learn about another term? (y/n) " answer
  fi
done
 
# Thank the user for using the glossary
echo "Thank you for using the financial terms glossary!"
