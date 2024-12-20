#include <iostream>

using namespace std;

const int MAX = 10;

// Function to perform Gaussian elimination to find the inverse of a matrix
bool inverseMatrix(double matrix[MAX][MAX], double inverse[MAX][MAX], int n)
{
    // Initialize the inverse matrix as the identity matrix
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < n; j++)
        {
            inverse[i][j] = (i == j) ? 1.0 : 0.0;
        }
    }

    // Perform Gaussian elimination
    for (int i = 0; i < n; i++)
    {
        // Find pivot element
        double pivot = matrix[i][i];
        if (pivot == 0.0)
        {
            cout << "Matrix is singular and cannot be inverted." << endl;
            return false;
        }

        // Normalize the pivot row
        for (int j = 0; j < n; j++)
        {
            matrix[i][j] /= pivot;
            inverse[i][j] /= pivot;
        }

        // Eliminate other rows
        for (int k = 0; k < n; k++)
        {
            if (k != i)
            {
                double factor = matrix[k][i];
                for (int j = 0; j < n; j++)
                {
                    matrix[k][j] -= factor * matrix[i][j];
                    inverse[k][j] -= factor * inverse[i][j];
                }
            }
        }
    }

    return true;
}

int main()
{
    int n;
    cout << "Enter the size of the matrix (n * n): ";
    cin >> n;

    if (n > MAX)
    {
        cout << "Matrix size exceeds the maximum allowed size of " << MAX << "." << endl;
        return 1;
    }

    double matrix[MAX][MAX], inverse[MAX][MAX];

    cout << "Enter the elements of the matrix:" << endl;
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < n; j++)
        {
            cin >> matrix[i][j];
        }
    }

    if (inverseMatrix(matrix, inverse, n))
    {
        cout << "The inverse of the matrix is: " << endl;
        for (int i = 0; i < n; i++)
        {
            for (int j = 0; j < n; j++)
            {
                cout << inverse[i][j] << "\t";
            }
            cout << endl;
        }
    }
    else
    {
        cout << "The matrix has no inverse." << endl;
    }

    return 0;
}
