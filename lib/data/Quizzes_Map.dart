import 'dart:collection';

List<List<String>> q1 = [
  ['А', 'Щ', 'Ь', 'Л', 'Е', 'Т', 'И', 'Ч', 'У', 'Ъ', 'Ш', 'э', 'л', 'ц', 'ч', 'л'],
  ['Ы', 'Б', 'Е', 'Ь', 'я', 'щ', 'и', 'М', 'С', 'Ъ', 'Ё', 'П', 'Л', 'К', 'Π', 'Γ'],
  ['Д', 'О', 'М', 'А', 'Ш', 'Н', 'Е', 'Е', 'З', 'А', 'Д', 'А', 'Н', 'И', 'Е', 'Ъ'],
  ['Л', 'А', 'Ц', 'К', 'Г', '3', 'М', '3', 'Л', 'Х', 'Ы', 'У', 'Э', 'А', 'э', 'ъ'],
  ['Д', 'Ы', 'Ё', 'Ц', 'м', 'м', 'и', 'д', 'Ц', 'Н', 'Я', 'Й', 'Э', 'У', 'Р', 'А'],
  ['Ъ', 'Ё', 'Ы', 'Й', 'А', 'Й', 'М', 'П', 'Ю', 'О', 'У', 'К', 'К', '3', 'A', 'A'],
  ['Р', 'З', 'Ы', 'Н', 'К', 'щ', 'л', 'г', 'о', 'х', 'Ч', 'O', '3', 'X', 'H', 'P'],
  ['С', 'Ё', 'Ю', 'Л', 'С', '3', 'П', 'О', 'Ь', 'Ь', 'E', 'P', 'A', 'B', 'Е', 'У'],
  ['У', 'Г', 'Х', 'ъ', 'о', 'ч', 'ю', 'Б', 'Ь', 'С', 'Н', 'У', 'М', 'Я', 'Ц', 'Т'],
  ['А', 'И', 'П', 'М', 'Д', 'Л', 'Б', 'Ё', 'Ч', 'Ё', 'И', 'Й', 'Е', 'Й', 'Х', 'ь'],
  ['Х', 'Ф', 'А', 'Ъ', 'Ф', '3', 'X', 'B', 'C', 'P', 'Κ', 'Χ', 'Η', 'П', 'П', 'Л'],
  ['И', 'Б', 'А', 'Д', 'Е', 'Ж', 'У', 'Р', 'Н', 'Ы', 'Й', 'Д', 'Ц', 'О', 'Н', 'У'],
  ['Π', 'Α', 'Τ', 'A', 'H', 'M', 'О', 'К', 'Я', 'A', 'H', 'C', 'С', 'А', 'Л', 'К'],
  ['Р', 'К', 'У', 'Щ', 'О', 'А', 'Л', 'Я', 'Е', 'Э', 'Ч', 'С', 'Т', 'X', 'A', '3'],
  ['Д', 'З', 'Н', 'Ж', 'К', 'И', 'Н', 'Б', 'Е', 'Ч', 'У', 'И', 'И', 'Б', 'П', 'И'],
  ['Ю', 'Ж', 'Р', 'Ш', 'Х', 'А', 'Н', 'E', 'M', 'E', 'P', 'Е', 'П', 'У', 'Щ', 'Ф']
];
// row first, column second
List<List<List<int>>>q1_l=[[
  [0, 2], [0, 3], [0, 4], [0, 5], [0, 6], [0, 7], [0, 8]], 
  [[2, 0], [2, 1], [2, 2], [2, 3], [2, 4], [2, 5], [2, 6], [2, 7], [2, 8], [2, 9], [2, 10], [2, 11], [2, 12], [2, 13], [2, 14]], 
  [[11, 10], [11, 3], [11, 4], [11, 5], [11, 6], [11, 7], [11, 8], [11, 9]],
  [[12, 1], [12, 2], [12, 3], [12, 4], [12, 5], [12, 6], [12, 7], [12, 8], [12, 9], [12, 10], [12, 11], [12, 12], [12, 13], [12, 14],[12,15]],
  [[14, 4], [14, 5], [14, 6], [14, 7], [14, 8], [14, 9], [14, 10]],
  [[15, 5], [15, 6], [15, 7], [15, 8], [15, 9], [15, 10], [15, 11], [15, 12]],
  [[5, 4], [6, 4], [7, 4], [8, 4], [9, 4],],
  [[5, 10], [6, 10], [7, 10], [8, 10], [9, 10], [10, 10],[11, 10],[12, 10]],
  [[5, 11], [6, 11], [7, 11], [8, 11],],
  [[4, 12], [5, 12], [6, 12], [7, 12], [8, 12], [9, 12], [10, 12]],
  [[4, 14], [5, 14], [6, 14], [7, 14], [8, 14],],
  [[5, 15], [6, 15], [7, 15], [8, 15], [9, 15], [10, 15], [11,15], [12, 15], [13, 15], [14, 15], [15, 15], ]];
