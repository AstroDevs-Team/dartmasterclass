class Database{
  bool isOpen = false;

  void open(){
    isOpen = true;
    print("Database opened");
  }

  void close(){
    isOpen = false;
    print("Database closed");
  }
}