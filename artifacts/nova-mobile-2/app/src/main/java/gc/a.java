package gc;

import androidx.recyclerview.widget.RecyclerView;
import java.io.InputStream;
import java.io.OutputStream;
import jc.l;

/* compiled from: IOStreams.kt */
/* loaded from: classes2.dex */
public final class a {
    public static final long a(InputStream inputStream, OutputStream outputStream, int i10) {
        l.f(inputStream, "<this>");
        l.f(outputStream, "out");
        byte[] bArr = new byte[i10];
        int read = inputStream.read(bArr);
        long j10 = 0;
        while (read >= 0) {
            outputStream.write(bArr, 0, read);
            j10 += read;
            read = inputStream.read(bArr);
        }
        return j10;
    }

    public static /* synthetic */ long b(InputStream inputStream, OutputStream outputStream, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST;
        }
        return a(inputStream, outputStream, i10);
    }
}
