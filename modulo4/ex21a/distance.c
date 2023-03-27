/*
  return number of different char between the 2 strings
  if the size differs return -1
*/
 int distance(char *a, char *b)
{
    int n = 0;
    while (*a != '\0'){
      if (*b == '\0')
      {
        return -1;
      }
      if (*b != *a)
      {
        n ++;
      }
      b++;
      a++;
    }
    if (*b != '\0')
    {
      return -1;
    }
    return n;
}
