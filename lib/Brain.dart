class Cal{
  Cal({required this.q1, required this.q2, required this.q3, required this.q4});

   final int q1;
   final int q2;
   final int q3;
   final int q4;

  int _val=40 ;
  int calculte()
  {
    _val=q1+q2+q3-q4;
    return _val;
  }
  String getmentalstatus()
  {
    if(_val<15)
      {
        return 'Depressed';
      }
    else if(_val>=15 && _val<=25)
      {
        return 'Anxiety';
      }
    else {
      return 'Excellent';
    }
  }
  String getsuggestions()
  {
    if(_val<15)
    {
      return 'Do something productive that diverts your mind such as cycling or baking with your mom ,or have your fav food';
    }
    else if(_val>=15 && _val<=25)
    {
      return 'Go out for a cycle ride or a walk,would be better if you do this with family or friends and enjoy the time you spend with them';
    }
    else {
      return 'You are doing awesome.No need to stress about your mental health.Enjoy every moment of your life ';
    }
  }
}