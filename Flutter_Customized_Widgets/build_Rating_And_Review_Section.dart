Widget buildRatingAndReviewSection() {
  return Wrap(
    children: [
      Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          const Icon(Icons.star, color: Colors.amber),
          const SizedBox(width: 4),
          const Text(
            '3',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
          const SizedBox(width: 4),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Review',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: AppColors.themeColor,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(width: 4),
      Card(
        color: AppColors.themeColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        child: const Padding(
          padding: EdgeInsets.all(2.0),
          child: Icon(Icons.favorite_outline_rounded, color: Colors.white),
        ),
      ),
    ],
  );
}