module.exports = {
    username: process.env.DB_USERNAME || 'root',
    password: process.env.DB_PASSWORD || 'WwFFTRDJ7s2RgPWx',
    database: process.env.DB_NAME || 'bookify',
    host: process.env.DB_HOST || '127.0.0.1',
    port: process.env.DB_PORT || 3306,
    dialect: process.env.DB_DIALECT || 'mysql'
};
