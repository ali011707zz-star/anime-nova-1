package n3;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: LottieFetchResult.java */
/* loaded from: classes.dex */
public interface d extends Closeable {
    boolean isSuccessful();

    InputStream j() throws IOException;

    String s0();

    String y0();
}
