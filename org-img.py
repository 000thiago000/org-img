import os, sys, time

pasta = sys.argv[1]
arquivos = os.listdir(pasta)

for i in arquivos:

    if os.path.isfile(pasta + '/' + i ) :

        data = time.ctime(os.path.getmtime(pasta + '/' + i))
        data = data.split()

        if not os.path.exists(pasta + '/' + data[4]):
            os.makedirs(pasta + '/' + data[4])

        if not os.path.exists(pasta + '/' + data[4] + '/' + data[1]):
            os.makedirs(pasta + '/' + data[4] + '/' + data[1])

        if not os.path.exists(pasta + '/' + data[4] + '/' + data[1] + '/' + data[2]):
            os.makedirs(pasta + '/' + data[4] + '/' + data[1] + '/' + data[2])

        os.rename(pasta + '/' + i, pasta + '/' + data[4] + '/' + data[1] + '/' + data[2] + '/' + i)
