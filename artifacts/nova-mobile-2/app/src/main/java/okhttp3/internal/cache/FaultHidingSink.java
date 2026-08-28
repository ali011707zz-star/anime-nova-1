package okhttp3.internal.cache;

import cd.a0;
import cd.f;
import cd.j;
import java.io.IOException;

/* loaded from: classes2.dex */
class FaultHidingSink extends j {
    private boolean hasErrors;

    public FaultHidingSink(a0 a0Var) {
        super(a0Var);
    }

    @Override // cd.j, cd.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.hasErrors) {
            return;
        }
        try {
            super.close();
        } catch (IOException e10) {
            this.hasErrors = true;
            onException(e10);
        }
    }

    @Override // cd.j, cd.a0, java.io.Flushable
    public void flush() throws IOException {
        if (this.hasErrors) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e10) {
            this.hasErrors = true;
            onException(e10);
        }
    }

    public void onException(IOException iOException) {
    }

    @Override // cd.j, cd.a0
    public void write(f fVar, long j10) throws IOException {
        if (this.hasErrors) {
            fVar.a(j10);
            return;
        }
        try {
            super.write(fVar, j10);
        } catch (IOException e10) {
            this.hasErrors = true;
            onException(e10);
        }
    }
}
