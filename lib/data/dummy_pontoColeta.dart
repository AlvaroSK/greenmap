import 'package:green_map/models/pontoColeta.dart';

const DUMMY_PONTOCOLETA = {
  '1': const pontoColeta(
      id: '1',
      avatarUrl:'https://i0.wp.com/betaeq.com.br/wp-content/uploads/2017/04/Imagem.png' ,
      cnpj: '12345678',
      nome: 'Eco Plus',
      telefone: '(79)9112321',
      endereco: 'Rua São Sebastião, N° 432',
      email: 'pontocoleta1@email.com',
      materialColetado: 'Baterias'
  ),

  '2': const pontoColeta(
      id: '2',
      avatarUrl:'https://cdn4.ecycle.com.br/cache/images/guia_da_reciclagem/50-750-logoreciclagem-750.jpg',
      cnpj: '231241542',
      nome: 'Recicla+',
      telefone: '(79)888888',
      endereco: 'Avenida Heraclito Rollemberg, N° 512',
      email: 'pontocoleta2@email.com',
      materialColetado: 'Papéis/Papelão'
  ),

  '3': const pontoColeta(
      id: '3',
      avatarUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTrlHrEsXEiTFc9TWUAfm-GfPpjlXMdboYtGQ&usqp=CAU',
      cnpj: '3412312321',
      nome: 'Coletora Viver Bem',
      telefone: '(79)777777',
      endereco: 'Rua Jose Afonso Pereira, N° 333',
      email: 'pontocoleta3@email.com',
      materialColetado: 'Resíduos Orgânicos'
  ),
};