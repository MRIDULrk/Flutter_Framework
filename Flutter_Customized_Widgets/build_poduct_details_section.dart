Widget buildProductDetails() {
  return SingleChildScrollView(
    child: Column(
      children: [
        const ProductImageSlider(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                        'Nike Air Jordan-4 The Summer Sale Hot Deal-20% off',
                        style: Theme.of(context).textTheme.titleMedium),
                  ),
                  const itemCountButton(),
                ],
              ),
              const SizedBox(height: 8),

              buildRatingAndReviewSection(),

              const SizedBox(height: 8),
              ColorPicker(
                  colors: const [
                    Colors.red,
                    Colors.green,
                    Colors.yellow,
                    Colors.blue,
                    Colors.blueGrey,
                  ], onColorSelected: (color) {

              }),

              const SizedBox(height: 8),
              SizePicker(
                  sizes: const ['S', 'M', 'L', 'XL', 'XXL'],
                  onSizeSelected: (String selectedSize) {}),

              const SizedBox(height: 16),
              buildDescriptionSection(),
            ],
          ),
        ),
      ],
    ),
  );
}





