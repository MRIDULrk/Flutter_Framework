Widget buildDescriptionSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Description',
          style: Theme.of(context).textTheme.titleMedium),
      const SizedBox(height: 8),
      const Text(
        '''Nike Air is our iconic innovation that uses pressurized air in a durable flexible membrane to provide lightweight cushioning. Nike Air is our iconic innovation that uses pressurized air in a durable flexible membrane to provide lightweight cushioning. Nike Air is our iconic innovation that uses pressurized air in a durable flexible membrane to provide lightweight cushioning.
                       ''',
        style: TextStyle(color: Colors.black45),
      ),
    ],
  );
}