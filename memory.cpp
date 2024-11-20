class Memory
{
public:
    static int *memory;
    static int *freeList;
    static int *memoryBottom;

    static int heapBottom;
    static int heapBase;

    static int heapBottomAddress;
    static int heapBaseAddress;

    static int LENGTH;
    static int NEXT;

    static int ALLOC_LENGTH;

    static int TEmp;
    static int TEmp1;
    static int bra;

    void init()
    {
        heapBaseAddress = 8192;
        heapBottomAddress = 16384;
        heapBottomAddress = heapBottomAddress * 4;
        heapBase = 2048;
        heapBottom = 16384;

        memory = 0;
        freeList = (int *)heapBaseAddress;
        LENGTH = 0;
        NEXT = 4;
        freeList[LENGTH] = heapBottom - heapBase;
        freeList[NEXT] = 0;

        ALLOC_LENGTH = -4;
    }

    int peek(int address)
    {
        address = address + address;
        address = address + address;
        return memory[address];
    }

    void poke(int address, int value)
    {
        address = address + address;
        address = address + address;
        memory[address] = value;
    }

    int *bestFit(int size)
    {
        int *curBlock;
        int *bestBlock;
        int bestSize;
        int curSize;

        bestBlock = 0;
        bestSize = heapBottom - heapBase;
        curBlock = freeList;

        if (curBlock + NEXT == 0)
        {
            return curBlock;
        }

        while (curBlock != 0)
        {
            curSize = curBlock[LENGTH] - 1;

            if (curSize < size && curSize < bestSize)
            {
                bestBlock = curBlock;
                bestSize = curSize;
            }

            curBlock = curBlock + NEXT;
        }

        return bestBlock;
    }

    void deAlloc(int *object)
    {
        int *preBlock;
        int *nextBlock;
        int size;

        size = object[ALLOC_LENGTH];
        object = object + 1;
        preBlock = findPreFree(object);

        if (preBlock == 0)
        {
            object[LENGTH] = size;
            object[NEXT] = (int)freeList;
            freeList = object;
        }
        else
        {
            if ((preBlock - preBlock[LENGTH]) == object)
            {
                preBlock[LENGTH] = preBlock[LENGTH] + size;
                object = preBlock;
            }
            else
            {
                object[LENGTH] = size;
                object[NEXT] = preBlock[NEXT];
                preBlock[NEXT] = (int)object;
            }
        }

        if ((object - object[LENGTH]) == (int *)object[NEXT])
        {
            nextBlock = (int *)object[NEXT];
            object[LENGTH] = object[LENGTH] + nextBlock[LENGTH];
            object[NEXT] = nextBlock[NEXT];
        }
    }

    int *findPreFree(int *object)
    {
        int *preBlock;

        if (freeList < object)
        {
            return 0;
        }

        preBlock = freeList;
        while (preBlock[NEXT] != 0 && preBlock[NEXT] > (int)object)
        {
            preBlock = (int *)preBlock[NEXT];
        }

        return preBlock;
    }

    int alloc(int size)
    {
        int *foundBlock;
        int *nextBlock;
        int *result;

        foundBlock = bestFit(size);
        result = foundBlock + 4;

        if (foundBlock != 0)
        {
            if (foundBlock[LENGTH] > (size + 3))
            {
                nextBlock = foundBlock + size + size + size + size + 4;
                nextBlock[NEXT] = foundBlock[NEXT];
                nextBlock[LENGTH] = foundBlock[LENGTH] - size - 1;
                result[ALLOC_LENGTH] = size + 1;
                freeList = nextBlock;
            }
            else
            {
                nextBlock = (int *)foundBlock[NEXT];
                result[ALLOC_LENGTH] = foundBlock[LENGTH];
            }
        }

        return (int *)result;
    }
};

int main()
{
    Memory memory;
    memory.init();
    return 0;
}