#include <iostream>
class String
{
private:
    int maxLen;
    int len;
    char *chars;

public:
    String(int maxLength)
    {
        if (maxLength == 0)
        {
            maxLength = 1;
        }
        len = 0;
        maxLen = maxLength;
        chars = new char[maxLength];
    }

    int length()
    {
        return len;
    }

    char charAt(int j)
    {
        if (j < 0 || j >= len)
        {
            return '\0';
        }
        return chars[j];
    }

    void setCharAt(int j, char c)
    {
        if (j < 0 || j >= len)
        {
            return;
        }
        chars[j] = c;
    }

    String &appendChar(char c)
    {
        if (len < maxLen)
        {
            chars[len] = c;
            len++;
        }
        return *this;
    }

    void eraseLastChar()
    {
        if (len > 0)
        {
            len--;
        }
    }

    int intValue()
    {
        int intVal = 0;
        int index = 0;
        bool neg = false;

        if (len > 0 && chars[0] == '-')
        {
            neg = true;
            index = 1;
        }

        while (index < len && isDigit(chars[index]))
        {
            intVal = (intVal * 10) + charToDigit(chars[index]);
            index++;
        }

        return neg ? -intVal : intVal;
    }

    static bool isDigit(char c)
    {
        return (c >= '0' && c <= '9');
    }

    static int charToDigit(char c)
    {
        return c - '0';
    }

    static char digitToChar(int d)
    {
        return d + '0';
    }

    void erase()
    {
        len = 0;
    }

    void setInt(int number)
    {
        erase();
        if (number < 0)
        {
            appendChar('-');
            number = -number;
        }
        setIntHelper(number);
    }

    void setIntHelper(int number)
    {
        if (number < 10)
        {
            appendChar(digitToChar(number));
        }
        else
        {
            int nextNum = number / 10;
            setIntHelper(nextNum);
            appendChar(digitToChar(number % 10));
        }
    }

    static char newLine()
    {
        return '\n';
    }

    static char backSpace()
    {
        return '\b';
    }

    static char doubleQuote()
    {
        return '"';
    }

    void dispose()
    {
        delete[] chars;
    }

    void print()
    {
        for (int i = 0; i < len; i++)
        {
            std::cout << chars[i];
        }
        std::cout << std::endl;
    }
};

int main()
{
    String s(10);
    s.appendChar('H').appendChar('e').appendChar('l').appendChar('l').appendChar('o');
    s.print();

    s.eraseLastChar();
    s.print();

    s.setInt(12345);
    s.print();

    s.setInt(-6789);
    s.print();

    return 0;
}