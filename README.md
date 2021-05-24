# org-img

**Exemplo de utilização com agendamento no crontab**

```
SHELL=/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

# Example of job definition:
#   .---------------- minute (0 - 59)
#   |  .------------- hour (0 - 23)
#   |  |  .---------- day of month (1 - 31)
#   |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
#   |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
#   |  |  |  |  |
#   *  *  *  *  *     user-name  command to be executed
    17 *  *  *  *     root       cd / && run-parts --report /etc/cron.hourly
    25 6  *  *  *     root	 test -x /usr/sbin/anacron || ( cd / && run-parts --report /etc/cron.daily )
    47 6  *  *  7     root	 test -x /usr/sbin/anacron || ( cd / && run-parts --report /etc/cron.weekly )
    52 6  1  *  *     root	 test -x /usr/sbin/anacron || ( cd / && run-parts --report /etc/cron.monthly )
    1  0  1  *  *     user   python ~/.org-img.py ~/Imagens
```
