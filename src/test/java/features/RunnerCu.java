// package features;

// import com.intuit.karate.Results;
// import com.intuit.karate.Runner;

// import net.masterthought.cucumber.Configuration;
// import net.masterthought.cucumber.ReportBuilder;

// import org.apache.commons.io.FileUtils;

// import java.io.File;
// import java.util.ArrayList;
// import java.util.Collection;
// import java.util.List;

// public class RunnerCu {

//     @org.junit.jupiter.api.Test
//     void testParallel() {
//         Results results = Runner.path("classpath:features")
//                 .outputCucumberJson(true)
//                 .parallel(1);

//         generateReport(results.getReportDir());
      
//     }

//     public static void generateReport(String karateOutputPath) {
//         File reportOutputDir = new File("target/karate-reports");
//         Collection<File> jsonFiles = FileUtils.listFiles(
//                 new File(karateOutputPath), new String[]{"json"}, true
//         );

//         List<String> jsonPaths = new ArrayList<>();
//         for (File file : jsonFiles) {
//             jsonPaths.add(file.getAbsolutePath());
//         }

//         Configuration config = new Configuration(reportOutputDir, "Karate Project");
//         ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
//         reportBuilder.generateReports();
//     }
// }
