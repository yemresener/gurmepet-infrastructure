#!/bin/sh
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
FILENAME="/backups/ecommerce_${TIMESTAMP}.sql.gz"

mysqldump -h mysql -u root -p"${MYSQL_ROOT_PASSWORD}" ecommerce | gzip > "$FILENAME"
    
# 7 günden eski yedekleri sil
find /backups -name "*.sql.gz" -mtime +7 -delete

echo "Backup tamamlandı: $FILENAME"