DBUSER="gerard"
DB_PASSWORD="1234"
BACKUP_DIR="/home/gerard/Escritorio/Copia_seguridad_MariaDB/backups"

TIMESTAMP=$(date +"%Y-%m-%d%H:%M:%S")

mysqldump -u $DBUSER -p$DB_PASSWORD --all-databases > "$BACKUP_DIR/backup_total$TIMESTAMP.sql"

mysqldump -u $DBUSER -p$DB_PASSWORD mysql > "$BACKUP_DIR/backup_usuaris$TIMESTAMP.sql"

mysqldump -u $DBUSER -p$DB_PASSWORD --all-databases --no-data > "$BACKUP_DIR/backup_estructura$TIMESTAMP.sql"

mysqldump -u $DBUSER -p$DB_PASSWORD --all-databases --no-create-info > "$BACKUP_DIR/backup_dades$TIMESTAMP.sql"

echo "Còpia de seguretat feta a les $TIMESTAMP"
