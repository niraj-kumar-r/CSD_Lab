// Function to calculate the length of a string
int strlen(char *str)
{
    int length = 0;
    while (str[length] != '\0')
    {
        length++;
    }
    return length;
}

// Function to copy a string from src to dest
void strcpy(char *dest, char *src)
{
    int i = 0;
    while (src[i] != '\0')
    {
        dest[i] = src[i];
        i++;
    }
    dest[i] = '\0'; // Null terminate the destination string
}

// Function to compare two strings (similar to strcmp)
int strcmp(char *str1, char *str2)
{
    while (*str1 != '\0' && *str2 != '\0')
    {
        if (*str1 != *str2)
        {
            return (*str1 - *str2);
        }
        str1++;
        str2++;
    }
    return (*str1 - *str2); // If both strings are equal till the null-terminator
}

// Function to concatenate two strings (similar to strcat)
void strcat(char *dest, char *src)
{
    while (*dest != '\0')
    {
        dest++; // Move to the end of the destination string
    }
    while (*src != '\0')
    {
        *dest = *src; // Copy each character from src to dest
        dest++;
        src++;
    }
    *dest = '\0'; // Null terminate the concatenated string
}

// Function to convert a string to uppercase
void to_uppercase(char *str)
{
    while (*str != '\0')
    {
        if (*str >= 'a' && *str <= 'z')
        {
            *str = *str - 'a' + 'A'; // Convert to uppercase
        }
        str++;
    }
}

// Function to convert a string to lowercase
void to_lowercase(char *str)
{
    while (*str != '\0')
    {
        if (*str >= 'A' && *str <= 'Z')
        {
            *str = *str - 'A' + 'a'; // Convert to lowercase
        }
        str++;
    }
}

// Function to check if a string is a palindrome
int is_palindrome(char *str)
{
    int length = len(str);
    int i = 0;
    while (i < length / 2)
    {
        if (str[i] != str[length - i - 1])
        {
            return 0; // Not a palindrome
        }
        i++;
    }
    return 1; // Is a palindrome
}

// Function to reverse a string
void reverse(char *str)
{
    int length = len(str);
    int i = 0;
    while (i < length / 2)
    {
        char temp = str[i];
        str[i] = str[length - i - 1];
        str[length - i - 1] = temp;
        i++;
    }
}

// Function to convert a string to an integer
int atoi(char *str)
{
    int num = 0;
    int sign = 1;
    if (*str == '-')
    {
        sign = -1;
        str++;
    }
    while (*str != '\0')
    {
        num = num * 10 + (*str - '0');
        str++;
    }
    return num * sign;
}

// Function to convert an integer to a string
void itoa(int num, char *str)
{
    int i = 0;
    int is_negative = 0;
    if (num < 0)
    {
        is_negative = 1;
        num = -num;
    }
    while (num != 0)
    {
        str[i++] = num % 10 + '0';
        num = num / 10;
    }
    if (is_negative)
    {
        str[i++] = '-';
    }
    str[i] = '\0';
    reverse(str);
}