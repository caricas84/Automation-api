function fn() {

    var env = karate.env || 'dev';

    karate.log('Ambiente:', env);

    var config = {};

    if (env == 'dev') {
        config.baseUrl = 'https://jsonplaceholder.typicode.com';
    } else if (env == 'qa') {
        config.baseUrl = 'https://jsonplaceholder.typicode.com';
    } else if (env == 'prod') {
        config.baseUrl = 'https://jsonplaceholder.typicode.com';
    } else {
        config.baseUrl = 'https://jsonplaceholder.typicode.com';
    }

    karate.configure('headers', read('classpath:utils/headers.js'));

    return config;

}