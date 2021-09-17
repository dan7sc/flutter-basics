Future<int> getValue() {
  return Future.value(1);
}

Future<int> calculate() async {
  int value = await getValue();
  return value * 10;
}

Future<int> getErrorValue() {
  return Future.error('invalid value');
}

Future<int> calculateWithError() async {
  try {
    return await getErrorValue();
  } catch (e) {
    print(e);
    return 1;
  } finally {
    print('done');
  }
}

void main() async {
  print('calculate: ${await calculate()}');
  print('calculateWithError: ${await calculateWithError()}');
}
