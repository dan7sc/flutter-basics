import 'package:flutter/material.dart';

class PizzaToppingsSelector extends StatelessWidget {
  final GlobalKey<FormFieldState<List<PizzaTopping>>> _formFieldKey =
      GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormField<List<PizzaTopping>>(
          key: _formFieldKey,
          initialValue: [],
          builder: (state) {
            return Wrap(
              spacing: 5,
              children: PizzaTopping.allPizzaToppings.map((topping) {
                return ChoiceChip(
                  label: Text(topping.name),
                  selected: state.value!.contains(topping),
                  onSelected: state.value!.length < 2 || state.value!.contains(topping)
                  ? (selected) {
                    List<PizzaTopping> newValue = List.of(state.value!);
                    if (selected) {
                      newValue.add(topping);
                    } else {
                      newValue.remove(topping);
                    }
                    state.didChange(newValue);
                  }
                  : null,
                );
              }).toList(),
            );
          },
        ),
        ElevatedButton(
          child: Text('Get toppings'),
          onPressed: () =>
              print(_formFieldKey.currentState?.value!.map((e) => e.name)),
        ),
      ],
    );
  }
}

class PizzaTopping {
  PizzaTopping({required this.name});

  final String name;

  static List<PizzaTopping> allPizzaToppings = [
    PizzaTopping(name: 'Apple'),
    PizzaTopping(name: 'Orange'),
    PizzaTopping(name: 'Banana'),
    PizzaTopping(name: 'Strawberry'),
  ];
}
