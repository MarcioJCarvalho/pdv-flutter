final createTable = '''
  CREATE TABLE IF NOT EXISTS products(
    id INTEGER NOT NULL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    qtd VARCHAR(255) NOT NULL,
    img VARCHAR(255) NOT NULL
  )
''';

final insert1 = '''
INSERT INTO products(nome, qtd, img)
VALUES('Monitor','8','https://media.istockphoto.com/vectors/computer-icon-isolated-vector-modern-computer-mockup-laptop-computer-vector-id1178429134?k=20&m=1178429134&s=170667a&w=0&h=JH_mZEzcx_a4NtNMGjTA8T9Mz1oUfc2n-7XaA4bsqDc=')
''';

final insert2 = '''
INSERT INTO products(nome, qtd, img)
VALUES('Mouse','20','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaJanHhoTqvnVyVl9BJtPhL9ySKSmvgwp_t0kCOOnJ98exoY_3EjHt0vyxk3NwQPX-y8A&usqp=CAU')
''';

final insert3 = '''
INSERT INTO products(nome, qtd, img)
VALUES('Placa Mãe','15','https://t4.ftcdn.net/jpg/02/20/20/65/360_F_220206537_1u7m3xViU3QTt3LiXiSLQMEY189hzwmr.jpg')
''';

final insert4 = '''
INSERT INTO products(nome, qtd, img)
VALUES('Teclado','5','https://image.shutterstock.com/image-vector/keyboard-vector-icon-260nw-1029411061.jpg')
''';

final insert5 = '''
INSERT INTO products(nome, qtd, img)
VALUES('Memória RAM','10','https://icon-library.com/images/computer-memory-icon/computer-memory-icon-27.jpg')
''';