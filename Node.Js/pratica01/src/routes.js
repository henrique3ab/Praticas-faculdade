import {Router} from'express';
import PessoaController from'./controllers/PessoaController';
import routes from Router();

routes.get('/', (req, res) => {
    console.log("Alguem acionou a rota raiz.");
    return res.status(303).send("Servidor está ok");
});
routes.get('/pessoas/:id', PessoaController.show );
routes.get('/pessoas', PessoaController.index);
routes.post('/pessoas', PessoaController.store);
routes.put('/pessoas', PessoaController.update);
routes.delete('/pessoas',PessoaController.destroy);

export default routes;