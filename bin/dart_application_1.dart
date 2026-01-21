import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main(List<String> arguments) {
  //-------------------Q1-------------------------
  print(swapNumber(0));
  print(swapNumber(1));
 //-------------------Q2-------------------------
  print(containsAllLetters("The quick brown fox jumps over the lazy dog")); 
  print(containsAllLetters("toosmallword")); 
  //-------------------Q3-------------------------
  countLetters("mississippi");
}

//-------------------Q1-------------------------
int swapNumber (int num){
 // int x;
//if(num==1)
//x=0;
//else
//x=1;
return 1-num;
}
//-------------------Q2-------------------------
bool containsAllLetters(String srt) {
  
  srt = srt.toLowerCase();
  Set<String> letters = {};

  for (var char in srt.split('')) {
    
    if (char.compareTo('a') >= 0 && char.compareTo('z') <= 0) {
      letters.add(char);
    }
  }
  return letters.length == 26;
}
//-------------------Q3-------------------------
void countLetters(String str) {
  Map<String, int> map = {};

  for (var char in str.split('')) {
    if (map.containsKey(char)) {
      map[char] = map[char]! + 1;
    } else {
      map[char] = 1;
    }
  }

  print(map);
}
