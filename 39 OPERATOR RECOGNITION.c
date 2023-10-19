#include <stdio.h>

int main() {
  char c;

  printf("Enter the operator: ");
  scanf("%c", &c);

  switch (c) {
    case '+':
      printf("The operator is addition.\n");
      break;
    case '-':
      printf("The operator is subtraction.\n");
      break;
    case '*':
      printf("The operator is multiplication.\n");
      break;
    case '/':
      printf("The operator is division.\n");
      break;
    case '%':
      printf("The operator is modulo.\n");
      break;
    default:
      printf("Invalid operator.\n");
      break;
  }

  return 0;
}
