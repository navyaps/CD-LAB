%{
int vowel_count = 0;
int consonant_count = 0;
%}

%%
[aAeEiIoOuU]   { vowel_count++; }
[A-Za-z]        { consonant_count++; }
.               ;  // Ignore other characters
\n              {
    printf("Vowels: %d\n", vowel_count);
    printf("Consonants: %d\n", consonant_count);
    vowel_count = 0;
    consonant_count = 0;
}
%%

int main() {
    yylex();
    return 0;
}
