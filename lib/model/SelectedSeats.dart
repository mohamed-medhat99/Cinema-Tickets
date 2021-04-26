


class Cinema{
  List<String> selectedSeats;
  bool flag;

  var seats;

  String get selectedSeatsAsString => selectedSeats.join(', ');

  List<String> reservedSeats;
  initSeatsMap(){
    for(int i=0; i<selectedSeats.length; i++){
      this.seats[i] = false;
    }
  }
  String get reservedSeatsAsString => selectedSeats.join(', ');
}