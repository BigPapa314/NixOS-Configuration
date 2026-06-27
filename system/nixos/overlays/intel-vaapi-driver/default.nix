_: prev: {
  intel-vaapi-driver = prev.intel-vaapi-driver.override {
    enableHybridCodec = true;
  };
}
