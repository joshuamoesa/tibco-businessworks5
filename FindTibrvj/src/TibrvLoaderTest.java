import com.tibco.tibrv.Tibrv;
import com.tibco.tibrv.TibrvException;
 
public class TibrvLoaderTest {
    public static void main(String[] args) {
        new TibrvLoaderTest().start();
    }
    private void start() {
    	System.out.println("printClasspath");
        printClasspath();
    	System.out.println("printLibraryPath");
        printLibraryPath();
    	System.out.println("testLoadLibrary");
        testLoadLibrary();
    	System.out.println("openTibrvjLibrary");
        openTibrvjLibrary();
    }
    private void printClasspath() {
        String cp = System.getProperty("java.class.path");
        for(String cpElement : cp.split(";")){
            System.out.println("Classpath element: " + cpElement);
        }
    }
    private void printLibraryPath() {
        String lp = System.getProperty("java.library.path");
        for(String lpElement : lp.split(";")){
            System.out.println("Library path element: " + lpElement);
        }
    }
    private void testLoadLibrary() {
        System.loadLibrary("tibrvj");
    }
    private void openTibrvjLibrary() {
        try {
            Tibrv.open(Tibrv.IMPL_NATIVE);
        } catch (TibrvException e) {
            throw new RuntimeException("Can't load Tibrv", e);
        }
    }
}