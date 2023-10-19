#include <stdio.h>

int is_comment(char* str) {
  if (str[0] != '/') {
    return 0;
  }

  if (str[1] == '/') {
    return 1;
  } else if (str[1] == '*') {
    int i = 2;
    while (str[i] != '*' && str[i+1] != '/') {
      i++;
    }

    if (str[i] == '*' && str[i+1] == '/') {
      return 1;
    } else {
      return 0;
    }
  } else {
    return 0;
  }
}

int main() {
  char str[100];
  printf("Enter a string: ");
  scanf("%s", str);

  if (is_comment(str)) {
    printf("The string is a comment.\n");
  } else {
    printf("The string is not a comment.\n");
  }

  return 0;
}
