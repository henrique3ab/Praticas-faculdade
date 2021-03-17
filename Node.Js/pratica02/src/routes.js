import { Router } from require('express');

const routes = Router();

routes.get('/', (req, res) => {
    res.send('Hello express app!')
});
routes.get('/teste', (req, res) => {
    res.send('Hello express app teste!')
});

export default routes;//module.exports = routes;