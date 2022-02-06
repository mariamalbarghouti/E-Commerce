import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/home/controllers/home_controller.dart';

class HomeBody extends GetView<HomeController> {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      // On Sucess
      (state) => GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 2,
          ),
          itemCount: state?.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 2.0,
              color: Colors.amber,
              // If It Satisfy Logic Layer
              child: state![index].failureOption.isNone()
                  ? InkWell(
                      onTap: () async =>
                          await controller.goToMoreDetails(state[index]),
                      child: Stack(
                        fit: StackFit.expand,
                        clipBehavior: Clip.hardEdge,
                        children: [
                          // Image
                          Image.network(
                            state[index].pickedImages.getOrCrash()[0],
                            fit: BoxFit.fill,
                            height: 200,
                            width: 200,
                          ),
                          // Price
                          OverflowBox(
                            minHeight: 30,
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              color: Colors.black.withOpacity(0.7),
                              height: 30,
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  "${state[index].price.getOrCrash()}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  // Not Statisfy
                  : Container(
                      color: Colors.red,
                      child: Center(
                        child: Center(
                          child: Text(
                            "😨Unexcepected Error Happened contact us. product id is${state[index].id}",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
            );
          }),

      // On Error
      onError: (error) => Container(
        color: Colors.green,
        child: const Center(
          child: Text("Unexcepected Error"),
        ),
      ),
      // On Loading
      onLoading: const Center(child: CircularProgressIndicator()),
    );
  }
}
