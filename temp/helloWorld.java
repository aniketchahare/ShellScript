public class HelloWorld {
	public static void main(String[] argv) {
		while(true) {
			System.out.println("Hello World!!!");
			try{
				Thread.sleep(60000);
			} catch (Exception ex) {}
		}
	}
}
