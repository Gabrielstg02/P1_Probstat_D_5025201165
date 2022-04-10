# P1_Probstat_D_5025201165

Nomor 1
![Rplot](https://user-images.githubusercontent.com/72547769/162623727-90ae8759-3cde-4091-a8c6-b69921f706ec.png)

``` C++
void createNewTxt()
{
  char *num;
  int gacha = 1;
  int gacha_num[] = {90, 180, 270, 360, 450};
  int count = 0;
  int progems = 79000;
  for (int i = 79000; i > 0; i -= 160)
  {
    progems -= 160;
    if (progems > 0)
    {
      if (gacha % 10 == 0 && count < 5)
      {
        char fileName[100];
        if (asprintf(&num, "%d", gacha_num[count]) == -1)
        {
          perror("asprintf");
        }
        strcat(strcpy(fileName, "gacha_gacha/total_gacha_"), num);
        strcat(fileName, "/");
        free(num);

        if (asprintf(&num, "%d", gacha) == -1)
        {
          perror("asprintf");
        }
        strcat(fileName, "_gacha_");
        strcat(fileName, num);
        strcat(fileName, ".txt");
        free(num);

        char *args[] = {"touch", fileName, NULL};
        touchFile(args);
      }

      if (gacha % 90 == 0 && gacha != 0)
        count++;
      gacha++;
    }
  }
}
```

> fungsi createNewTxt digunakan untuk membuat file txt baru di dalam folder yang telah dibuat oleh fungsi **createNewDir()**. setiap jumlah **gacha** % 10 bernilai 0, file txt akan dibuat dan ada sekitar 9 file di setiap foldernya.


Nomor 2
![Rplot01](https://user-images.githubusercontent.com/72547769/162623795-202b13cb-1b1b-4fa9-a363-98b0522e2408.png)


Nomor 3
![Rplot02](https://user-images.githubusercontent.com/72547769/162623816-242adb33-87c7-4b54-94e4-677eb73908f9.png)


Nomor 4
![Rplot03](https://user-images.githubusercontent.com/72547769/162623885-eb08101b-38b2-455f-b0aa-49e97e92a977.png)

Nomor 5

![Rplot04](https://user-images.githubusercontent.com/72547769/162623901-a85acad4-f179-446c-aff9-26e10098ba6f.png)

![Rplot05](https://user-images.githubusercontent.com/72547769/162623920-f62b450e-a88a-459a-8cb6-1984b861d79b.png)

![Rplot06](https://user-images.githubusercontent.com/72547769/162623936-acffca05-cdbf-4ce4-beab-069398b36071.png)

![Rplot07](https://user-images.githubusercontent.com/72547769/162623942-7531194e-712a-4c94-a5b4-e7dc87590f74.png)

Nomor 6
![Rplot08](https://user-images.githubusercontent.com/72547769/162623953-bb216f8d-89b4-4e3e-af49-d335b8d9d18d.png)

![Rplot09](https://user-images.githubusercontent.com/72547769/162623964-69ee14b0-37e7-4a07-b6df-339866d943ab.png)
