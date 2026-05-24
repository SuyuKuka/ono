Compute Poly and print the result:
Test avec 3 racines :
  $ echo "1\n-7\n14\n-8" | ono symbolic poly.wat
  ono: [ERROR] Trap: unreachable
  model {
    symbol symbol_0 i32 2
    symbol symbol_1 i32 1
    symbol symbol_2 i32 4
  }
  breadcrumbs 1
  ono: [ERROR] owi error: Reached problem!
  [123]

Test avec 2 racines :
  $ echo "1\n0\n-3\n2" | ono symbolic poly.wat
  ono: [ERROR] Trap: unreachable
  model {
    symbol symbol_0 i32 134217729
    symbol symbol_1 i32 -2
    symbol symbol_2 i32 1
  }
  breadcrumbs 1
  ono: [ERROR] owi error: Reached problem!
  [123]

Test avec 1 racine :
  $ echo "1\n-1\n1\n-1" | ono symbolic poly.wat
  ono: [ERROR] Trap: unreachable
  model {
    symbol symbol_0 i32 -2147483647
    symbol symbol_1 i32 -2147483647
    symbol symbol_2 i32 1
  }
  breadcrumbs 0 1 1
  ono: [ERROR] owi error: Reached problem!
  [123]
