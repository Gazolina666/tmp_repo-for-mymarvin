#include <stdio.h>
#include <string.h>


/*
char *my_strpbrk(const char *s, const char *accept);

int main() {
    char str[] = "This is a test string.";
    char key[] = "aeiou";

    char *result = my_strpbrk(str, key);

    if (result != NULL) {
        printf("Le premier caractère de str qui appartient à key est : %c\n", *result);
    } else {
        printf("Aucun caractère de str n'appartient à key.\n");
    }

    return 0;
}
*/

size_t my_strcspn(const char *s, const char *reject);


int main() {
    char str[] = "This is a test string.";
    char key[] = "aeiou";

    size_t length = strcspn(str, key);
    size_t len = my_strcspn(str, key);

    printf("strcspn : %zu\n", length);
    printf("my_strcspn : %zu\n", len);

    return 0;
}









/*
char *my_strstr(const char *str1, const char *str2);

int main(void)
{
    char *str1 = strdup("Rakdos, Dimir, Orzhov, Gruul, Izzet, Selsenya, Azorius, Golgari, Boros, Simic");
    char *str2 = strdup("Dimir");

    printf("strstr : %s\n", strstr(str1, str2));
    printf("my_strstr : %s\n", my_strstr(str1, str2));
}
*/

/*
void *my_memset(void *s, int c, size_t n);

int main(void)
{
    char str1[50];
    char str2[50];

    memset(str1, '-', 50);
    my_memset(str2, '-', 50);

    printf("step 1 memset    : %s\n", str1);
    printf("step 1 my_memset : %s\n", str2);

    memset(str1 + 10, 'X', 11);
    memset(str2 + 10, 'X', 11);

    printf("step 2 memset    : %s\n", str1);
    printf("step 2 my_memset : %s\n", str2);

    return 0;
}
*/

/*
char *my_strchr(const char *s, int c);

int main (void) {
    printf("%s\n", my_strchr("Hello", 'e'));
}
*/