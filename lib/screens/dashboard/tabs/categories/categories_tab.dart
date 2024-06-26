import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../logic/products/category/product_category_cubit.dart';
import '../../../../widgets/errors/unknown_error.dart';
import '../../../../widgets/no_data_found.dart';
import '../../../../widgets/scroll_edge_detector.dart';
import 'category_tile.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({super.key});

  static const id = 'categoriesTab';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCategoryCubit, ProductCategoryState>(
      builder: (context, state) {
        if (state is ProductCategoryTopLevelLoadInProgress) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }
        if (state is ProductCategoryTopLevelLoadFailure) {
          return UnknownError(
            onTryAgain: () =>
                context.read<ProductCategoryCubit>().loadTopLevelCategories(),
          );
        }
        final categories = state.topLevelCategoriesState.categories;
        if (categories.isEmpty) {
          return NoDataFound(
            onRefresh: () =>
                context.read<ProductCategoryCubit>().loadTopLevelCategories(),
          );
        }

        return RefreshIndicator.adaptive(
          onRefresh: () async {
            await context.read<ProductCategoryCubit>().loadTopLevelCategories();
          },
          child: ScrollEdgeDetector(
            onBottom: () => context
                .read<ProductCategoryCubit>()
                .loadMoreTopLevelCategories(),
            child: GridView.builder(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              padding: const EdgeInsets.all(12),
              itemCount: state is ProductCategoryTopLevelLoadMoreInProgress
                  ? categories.length + 1
                  : categories.length,
              itemBuilder: (context, index) {
                if (index == categories.length) {
                  // Loading indicator when loading more items
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                }
                final category = categories[index];
                return CategoryTile(
                  category: category,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
