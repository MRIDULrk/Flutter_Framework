Widget buildPriceAndAddToCartSection() {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: const BoxDecoration(
      color: AppColors.lightBlue,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              '\$1000',
              style: TextStyle(
                  color: AppColors.themeColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(
          width: 120,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Add To Cart'),
          ),
        ),
      ],
    ),
  );
}