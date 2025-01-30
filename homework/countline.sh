#!/binbash

# Author: Spencer Baysinger
# Filename: countline.sh
# Created: 2025/01/29
# Updated: 2025/01/29
# Description: This script will count the number of lines in files.
# Usage: ./countline.sh {optional: path to file or directory}

# Function to count lines in a file
count_lines() {
  local file=$1
  if [[ -f $file ]]; then
    # Count the number of lines in the file
    wc -l < "$file" 2>/dev/null || echo 0
  else
    # If not a file, return 0 lines
    echo 0
  fi
}

# Initialize total line count
total_lines=0

# Check if an error file is specified; create it if necessary
error_file="error.txt"
> "$error_file"

# Iterate over all parameters (paths)
for path in "$@"; do
  # If the path is a directory, iterate recursively
  if [[ -d $path ]]; then
    for file in $(find "$path"); do
      lines=$(count_lines "$file")
      total_lines=$((total_lines + lines))
    done
  elif [[ -f $path ]]; then
    # If the path is a file, count its lines
    lines=$(count_lines "$path")
    total_lines=$((total_lines + lines))
  else
    echo "Warning: '$path' is not a valid file or directory." >&2
  fi
done

# Output the total line count
echo $total_lines

# Check for errors and write to error.txt if any occur
if [[ -s "$error_file" ]]; then
  cat "$error_file" >&2
fi