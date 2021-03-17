import pessoas from '../models/Pessoa';
class PessoaController{
    show(req, res){
        const {id} = req.params;
        console.log('Acessou /pessoas/id');
        return res.json(pessoas[id-1]);
    }
    index(req, res){
        return res.json(pessoas);
    }
    store(req, res){
        const { nome, idade } = req.body;
        pessoas.push({id: (pessoas.lenght+1), nome, idade});
        return res.json(pessoas);
    };
    update (req, res){
        const {id, nome, idade } = req.body;
        if(id > pessoas.lenght || id < 0)
        return res.status(400).send();
        pessoas[id-1] = {id, nome, idade};
        return res.json(pessoas[id-1]);
    };
    destroy(req, res)  {
        const {id} = req.body;
        if(id > pessoas.length || id < 0 || pessoas[id-1] === null)
        return res.status(400).send(); //retorno um bad request (requisição inválida)
        delete pessoas[id-1];// exclui um elemento da lista, começando do elemento id
        return res.json(pessoas);
    };
}


export default PessoaController();