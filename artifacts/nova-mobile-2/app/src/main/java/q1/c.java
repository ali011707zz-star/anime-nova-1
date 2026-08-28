package q1;

import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.os.Build;
import android.os.CancellationSignal;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import o1.p0;
import r1.j;

/* compiled from: DBUtil.java */
/* loaded from: classes.dex */
public class c {
    public static void a(r1.g gVar) {
        ArrayList<String> arrayList = new ArrayList();
        Cursor A0 = gVar.A0("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (A0.moveToNext()) {
            try {
                arrayList.add(A0.getString(0));
            } catch (Throwable th) {
                A0.close();
                throw th;
            }
        }
        A0.close();
        for (String str : arrayList) {
            if (str.startsWith("room_fts_content_sync_")) {
                gVar.s("DROP TRIGGER IF EXISTS " + str);
            }
        }
    }

    public static Cursor b(p0 p0Var, j jVar, boolean z10, CancellationSignal cancellationSignal) {
        Cursor C = p0Var.C(jVar, cancellationSignal);
        if (!z10 || !(C instanceof AbstractWindowedCursor)) {
            return C;
        }
        AbstractWindowedCursor abstractWindowedCursor = (AbstractWindowedCursor) C;
        int count = abstractWindowedCursor.getCount();
        return (Build.VERSION.SDK_INT < 23 || (abstractWindowedCursor.hasWindow() ? abstractWindowedCursor.getWindow().getNumRows() : count) < count) ? b.a(abstractWindowedCursor) : C;
    }

    public static int c(File file) throws IOException {
        FileChannel fileChannel = null;
        try {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            FileChannel channel = new FileInputStream(file).getChannel();
            channel.tryLock(60L, 4L, true);
            channel.position(60L);
            if (channel.read(allocate) == 4) {
                allocate.rewind();
                int i10 = allocate.getInt();
                channel.close();
                return i10;
            }
            throw new IOException("Bad database header, unable to read 4 bytes at offset 60");
        } catch (Throwable th) {
            if (0 != 0) {
                fileChannel.close();
            }
            throw th;
        }
    }
}
