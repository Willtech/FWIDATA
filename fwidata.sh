#!/bin/bash
# fwidata.sh
# Purpose: Generate the fwidata script with neofetch output embedded
# Created: Professor. Damian A. James Williamson Grad.
# Assisted: Microsoft CoPilot
# Created by fwidata.sh

VERSION="1.1"

# Output file
OUTFILE="fwidata"

# Capture current date in DD/MM/YYYY format
DATE=$(date +"%d/%m/%Y")

# Handle switches for fwidata.sh itself
case "$1" in
  --help|-h)
    echo "Usage: $0 [options]"
    echo "Options:"
    echo "  --help, -h     Show this help message"
    echo "  --version, -v  Show version information"
    exit 0
    ;;
  --version|-v)
    echo "fwidata.sh version $VERSION"
    exit 0
    ;;
esac

# Start writing header to fwidata
cat > "$OUTFILE" <<EOF
#!/bin/bash
# fwidata
# Created: Professor. Damian A. James Williamson Grad.
# Assisted: Microsoft CoPilot
# Created by fwidata.sh
# Date of Capture: $DATE

VERSION="$VERSION"
DATE="$DATE"

case "\$1" in
  --help|-h)
    echo "Usage: ./fwidata [options]"
    echo "Options:"
    echo "  --help, -h     Show this help message"
    echo "  --version, -v  Show version information"
    echo "  --date, -d     Show capture date only"
    exit 0
    ;;
  --version|-v)
    echo "fwidata version \$VERSION"
    exit 0
    ;;
  --date|-d)
    echo "\$DATE"
    exit 0
    ;;
esac

EOF

# Capture neofetch output (with color codes preserved) and show live
NEO_OUTPUT=$(neofetch | tee /dev/tty)

# Append variable assignment with preserved formatting
echo "fwidata=\"" >> "$OUTFILE"
echo "$NEO_OUTPUT" | sed "s/'/\\\\'/g" >> "$OUTFILE"
echo "\"" >> "$OUTFILE"
echo "" >> "$OUTFILE"

# Append example usage
cat >> "$OUTFILE" <<'EOF'
# Example: replay the captured neofetch output
echo "$fwidata"
EOF

# Make the generated file executable
chmod +x "$OUTFILE"

echo "fwidata script created successfully: $OUTFILE"
