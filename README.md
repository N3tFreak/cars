# HW 10 — cars.sh

## Author
Ben Grossman  
CPSC 298 — Introduction to *Nix  
Fall 2025

---

## Description
This Bash script helps maintain an inventory of old cars.  
It allows the user to:
1. Add a car (year, make, model)
2. List all cars (sorted by year)
3. Quit the program

Each car is stored in `my_old_cars` with fields separated by colons (`:`).

---

## Files
- `cars.sh` — Main script for managing car inventory  
- `my_old_cars` — Text file containing car entries  

---

## Usage
Run the script and follow the menu prompts:

```bash
chmod +x cars.sh
./cars.sh < cars-input
```

Example interaction:
```
Car Inventory Menu
1. Add a car
2. List cars
3. Quit
Enter your choice (1-3): 1
Enter the year: 2020
Enter the make: Toyota
Enter the model: Supra
Car added successfully.
```

---

## Testing
1. Run ShellCheck locally:
   ```bash
   shellcheck cars.sh
   ```
    No warnings or errors expected.

2. Test execution:
   ```bash
   ./cars.sh
   ```
   or through Jenkins as described below.

---

## Jenkins Instructions
1. Create a Jenkins job named `cars-ben-grossman`.  
2. The job should:
   - Pull your GitHub repository  
   - Run `shellcheck cars.sh`  
   - Run `./cars.sh < cars-input`  
3. Verify Jenkins reports a green check.

---

## References
- what we learne in class
- ChatGPT for fixing errors
