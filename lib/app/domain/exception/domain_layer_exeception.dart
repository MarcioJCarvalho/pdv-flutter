class DomainLayerException implements Exception{

  String cause;
  //construtor
  DomainLayerException(this.cause);

  @override
  String toString() {
    // TODO: implement toString
    return cause;
  }

}