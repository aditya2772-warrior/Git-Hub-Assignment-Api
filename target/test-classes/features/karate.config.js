function fn() {
  var config = {
  //  userId: 1
 };

  var testData = read('classpath:features/Testdata/globalData.json');
  config.userId = testData.userId;
  return config;
}
