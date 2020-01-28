public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String fix=noSpaces(word);
  fix = onlyLetters(fix);
  if(fix.equals(reverse(fix))){
    return true;
  }
  return false;
}
public String reverse(String word)
{
    String sNew = new String();
    for(int i=word.length()-1;i>=0;i--){
    sNew=sNew+word.substring(i,i+1);
  }
    return sNew;
}
public String noSpaces(String word){
  String gg ="";
  for (int i=0;i<word.length();i++){
    if(Character.isLetter(word.charAt(i)) == true)
{
  gg+=word.charAt(i);
}

}
return gg.toLowerCase();
}
public String onlyLetters(String sString){
   String gg ="";
   for (int i=0;i<sString.length();i++){
    if(Character.isLetter(sString.charAt(i)) == true)
{
  gg+=sString.charAt(i);
}

}
return gg;
}



