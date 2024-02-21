name: Build C++

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  install:
    runs-on: ubuntu-latest
    steps:
      - name: Install dependencies
        run: |
          sudo apt-get update
          sudo apt-get install -y -f build-essential g++ cmake
  build:
    needs: install
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Build project
        run: g++ main.cpp --std=c++17 -o Palette
        executable: ./Palette 000 afC940 876 5104 FEFED 9964Ba 00G000
