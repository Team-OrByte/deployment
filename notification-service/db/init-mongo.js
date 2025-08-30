db = db.getSiblingDB('notification-management');

db.createUser({
  user: 'notif-user',
  pwd: 'notif_pass',
  roles: [{ role: 'readWrite', db: 'notification-management' }],
});
