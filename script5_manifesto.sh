#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Shanaajensine | Course: Open Source Software
# Description: Asks the user 3 questions interactively and generates
#              a personalised open source philosophy statement

# --- alias concept demonstrated via comment ---
# alias show_manifesto='cat manifesto_$(whoami).txt'
# This alias would let you quickly view your manifesto

echo "================================================"
echo "   Open Source Manifesto Generator"
echo "================================================"
echo ""
echo "  Answer three questions to generate your"
echo "  personal open source philosophy statement."
echo ""

# --- Read user input interactively ---
read -p "  1. Name one open-source tool you use every day: " TOOL
read -p "  2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "  3. Name one thing you would build and share freely: " BUILD

# --- Get current date and username for the output file ---
DATE=$(date '+%d %B %Y')
USERNAME=$(whoami)
OUTPUT="manifesto_${USERNAME}.txt"

echo ""
echo "  Generating your manifesto..."
echo ""

# --- Compose the manifesto paragraph and write to file ---
echo "================================================" > $OUTPUT
echo "   My Open Source Manifesto" >> $OUTPUT
echo "   Generated on: $DATE" >> $OUTPUT
echo "   By: $USERNAME" >> $OUTPUT
echo "================================================" >> $OUTPUT
echo "" >> $OUTPUT
echo "Every day, I rely on $TOOL — a tool that exists" >> $OUTPUT
echo "because someone chose to build it openly and share" >> $OUTPUT
echo "it freely with the world. To me, freedom in software" >> $OUTPUT
echo "means $FREEDOM. It means having the right to look" >> $OUTPUT
echo "inside the tools I depend on, to understand them," >> $OUTPUT
echo "to fix them, and to make them better." >> $OUTPUT
echo "" >> $OUTPUT
echo "Open source is not just a licensing choice — it is" >> $OUTPUT
echo "a philosophy. It says that knowledge grows when it" >> $OUTPUT
echo "is shared, not when it is locked away. Standing on" >> $OUTPUT
echo "the shoulders of those who built Git, Linux, and" >> $OUTPUT
echo "countless other tools, I commit to giving back." >> $OUTPUT
echo "One day, I will build $BUILD and release it freely," >> $OUTPUT
echo "so that someone else can stand on my shoulders too." >> $OUTPUT
echo "" >> $OUTPUT
echo "================================================" >> $OUTPUT

# --- Display the manifesto on screen ---
cat $OUTPUT

echo ""
echo "  Manifesto saved to: $OUTPUT"
echo "================================================"
