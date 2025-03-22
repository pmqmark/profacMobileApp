import 'package:flutter/material.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class CartViewMoreTopBanner extends StatelessWidget {
  const CartViewMoreTopBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 171,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: NetworkImage(
            'https://www.southernliving.com/thmb/yT3SGvAjaMSpt6Vwt62nZLeqJkY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1327576000-fff516a82eff488db59e9b22db013034.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5, bottom: 5, top: 5),
              child: Icon(
                Icons.arrow_back_outlined,
                color: Colors.black,
                size: 22,
              ),
            ),
            Spacer(),
            SizedBox(
              width: 22,
              height: 22,
              child: IconButton.filled(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 15,
                ),
                onPressed: () {},
                padding: EdgeInsets.zero,
                style: IconButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                ),
              ),
            ),
            HorizontalSpace(10),
            SizedBox(
              width: 22,
              height: 22,
              child: IconButton.filled(
                icon: Icon(
                  Icons.share,
                  color: Colors.black,
                  size: 15,
                ),
                onPressed: () {},
                padding: EdgeInsets.zero,
                style: IconButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
