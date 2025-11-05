#!/bin/bash
# cars.sh — Maintain an inventory of old cars
# Author: Ben Grossman

# This script allows the user to add cars to an inventory file or list all cars.

INVENTORY_FILE="my_old_cars"

# Ensure the inventory file exists
if [ ! -f "$INVENTORY_FILE" ]; then
  touch "$INVENTORY_FILE"
fi

# Main menu loop
while true; do
  echo "----------------------------"
  echo "Car Inventory Menu"
  echo "1. Add a car"
  echo "2. List cars"
  echo "3. Quit"
  echo "----------------------------"
  read -r -p "Enter your choice (1-3): " choice

  case "$choice" in
    1)
      # Add a car
      read -r -p "Enter the year: " year
      read -r -p "Enter the make: " make
      read -r -p "Enter the model: " model

      # Combine fields separated by colons
      echo "${year}:${make}:${model}" >> "$INVENTORY_FILE"
      echo "Car added successfully."
      ;;
    2)
      # List cars sorted by year
      echo "Year:Make:Model"
      sort "$INVENTORY_FILE"
      ;;
    3)
      echo "Goodbye!"
      break
      ;;
    *)
      echo "Invalid choice. Please enter 1, 2, or 3."
      ;;
  esac
done
