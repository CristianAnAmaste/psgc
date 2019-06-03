const express = require ('express'); //require express
const router = express.Router();//usa un modulo de express

router.get('/', (req, res)=>{
     res.send('hola mundo');//le manda al servidor lo que se quiere mostrar
});

module.exports = router;