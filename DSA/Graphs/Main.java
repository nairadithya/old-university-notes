import java.io.IOException;
import java.io.FileWriter;
import java.io.BufferedWriter;
import java.util.List;

public class Main {

    public static String __toString(Object val) {
        if (val instanceof String) {
            return "\"" + val + "\"";
        } else if (val == null) {
            return "null";
        } else if (val.getClass().isArray()) {
            StringBuffer sb = new StringBuffer();
            Object[] vals = (Object[])val;
            sb.append("[");
            for (int ii=0; ii<vals.length; ii++) {
                sb.append(__toString(vals[ii]));
                if (ii<vals.length-1)
                    sb.append(",");
            }
            sb.append("]");
            return sb.toString();
        } else if (val instanceof List) {
            StringBuffer sb = new StringBuffer();
            List vals = (List)val;
            sb.append("[");
            for (int ii=0; ii<vals.size(); ii++) {
                sb.append(__toString(vals.get(ii)));
                if (ii<vals.size()-1)
                    sb.append(",");
            }
            sb.append("]");
            return sb.toString();
        } else {
            return String.valueOf(val);
        }
    }

    public static void main(String[] args) throws IOException {
        BufferedWriter output = new BufferedWriter(new FileWriter("/tmp/babel-JNOp6Y/java-gMzpYs"));
        output.write(__toString(_main(args)));
        output.close();
    }    public static Object _main(String[] args) {
        return 5;
    }
}