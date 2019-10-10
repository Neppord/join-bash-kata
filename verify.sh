#! /usr/bin/env bash

SOULD_BE_ALICE=$(./lookup_person.sh Alice)
if grep -q "Alice" <<< $SOULD_BE_ALICE; then
  echo "Found Alice try next step"
else
  echo "expected lookup_person to include Alice was $SOULD_BE_ALICE"
  exit 1
fi

if grep -q "013371337" <<< $SOULD_BE_ALICE; then
  echo "Found Phonenumber try next step"
else
  echo "expected lookup_person to include 013371337 was $SOULD_BE_ALICE"
  exit 1
fi

if grep -q "Gothenburg" <<< $SOULD_BE_ALICE; then
  echo "Found Address try next step"
else
  echo "expected lookup_person to include Gothenburg was $SOULD_BE_ALICE"
  exit 1
fi
