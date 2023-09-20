typedef struct file stFile;

int compare(const void *a, const void *b);

void CreateFile(char *name);

void mergeSortExterno(char *name);

int CreateSortFiles(char *name);

void SaveFile(char *name, int *array, int size, int FlagBreakLine);

void merge(char *name, int numFiles, int K);

int findLower(stFile* file, int numFiles, int K, int* lower);

void fillBuffer(stFile *file, int K);

void checkOrderedFile(char *filename);


