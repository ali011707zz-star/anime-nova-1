package com.bumptech.glide.load.engine;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p7.e;

/* loaded from: classes.dex */
public final class GlideException extends Exception {

    /* renamed from: l, reason: collision with root package name */
    public static final StackTraceElement[] f4631l = new StackTraceElement[0];

    /* renamed from: f, reason: collision with root package name */
    public final List<Throwable> f4632f;

    /* renamed from: g, reason: collision with root package name */
    public e f4633g;

    /* renamed from: h, reason: collision with root package name */
    public p7.a f4634h;

    /* renamed from: i, reason: collision with root package name */
    public Class<?> f4635i;

    /* renamed from: j, reason: collision with root package name */
    public String f4636j;

    /* renamed from: k, reason: collision with root package name */
    public Exception f4637k;

    public GlideException(String str) {
        this(str, (List<Throwable>) Collections.emptyList());
    }

    public static void b(List<Throwable> list, Appendable appendable) {
        try {
            c(list, appendable);
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void c(List<Throwable> list, Appendable appendable) throws IOException {
        int size = list.size();
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            appendable.append("Cause (").append(String.valueOf(i11)).append(" of ").append(String.valueOf(size)).append("): ");
            Throwable th = list.get(i10);
            if (th instanceof GlideException) {
                ((GlideException) th).h(appendable);
            } else {
                d(th, appendable);
            }
            i10 = i11;
        }
    }

    public static void d(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    public final void a(Throwable th, List<Throwable> list) {
        if (th instanceof GlideException) {
            Iterator<Throwable> it2 = ((GlideException) th).e().iterator();
            while (it2.hasNext()) {
                a(it2.next(), list);
            }
            return;
        }
        list.add(th);
    }

    public List<Throwable> e() {
        return this.f4632f;
    }

    public List<Throwable> f() {
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        return arrayList;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    public void g(String str) {
        List<Throwable> f10 = f();
        int size = f10.size();
        int i10 = 0;
        while (i10 < size) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Root cause (");
            int i11 = i10 + 1;
            sb2.append(i11);
            sb2.append(" of ");
            sb2.append(size);
            sb2.append(")");
            f10.get(i10);
            i10 = i11;
        }
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuilder sb2 = new StringBuilder(71);
        sb2.append(this.f4636j);
        sb2.append(this.f4635i != null ? ", " + this.f4635i : "");
        sb2.append(this.f4634h != null ? ", " + this.f4634h : "");
        sb2.append(this.f4633g != null ? ", " + this.f4633g : "");
        List<Throwable> f10 = f();
        if (f10.isEmpty()) {
            return sb2.toString();
        }
        if (f10.size() == 1) {
            sb2.append("\nThere was 1 cause:");
        } else {
            sb2.append("\nThere were ");
            sb2.append(f10.size());
            sb2.append(" causes:");
        }
        for (Throwable th : f10) {
            sb2.append('\n');
            sb2.append(th.getClass().getName());
            sb2.append('(');
            sb2.append(th.getMessage());
            sb2.append(')');
        }
        sb2.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb2.toString();
    }

    public final void h(Appendable appendable) {
        d(this, appendable);
        b(e(), new a(appendable));
    }

    public void i(e eVar, p7.a aVar) {
        j(eVar, aVar, null);
    }

    public void j(e eVar, p7.a aVar, Class<?> cls) {
        this.f4633g = eVar;
        this.f4634h = aVar;
        this.f4635i = cls;
    }

    public void k(Exception exc) {
        this.f4637k = exc;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public GlideException(String str, Throwable th) {
        this(str, (List<Throwable>) Collections.singletonList(th));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        h(printStream);
    }

    public GlideException(String str, List<Throwable> list) {
        this.f4636j = str;
        setStackTrace(f4631l);
        this.f4632f = list;
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        h(printWriter);
    }

    /* loaded from: classes.dex */
    public static final class a implements Appendable {

        /* renamed from: f, reason: collision with root package name */
        public final Appendable f4638f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f4639g = true;

        public a(Appendable appendable) {
            this.f4638f = appendable;
        }

        public final CharSequence a(CharSequence charSequence) {
            return charSequence == null ? "" : charSequence;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c10) throws IOException {
            if (this.f4639g) {
                this.f4639g = false;
                this.f4638f.append("  ");
            }
            this.f4639g = c10 == '\n';
            this.f4638f.append(c10);
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(CharSequence charSequence) throws IOException {
            CharSequence a10 = a(charSequence);
            return append(a10, 0, a10.length());
        }

        @Override // java.lang.Appendable
        public Appendable append(CharSequence charSequence, int i10, int i11) throws IOException {
            CharSequence a10 = a(charSequence);
            boolean z10 = false;
            if (this.f4639g) {
                this.f4639g = false;
                this.f4638f.append("  ");
            }
            if (a10.length() > 0 && a10.charAt(i11 - 1) == '\n') {
                z10 = true;
            }
            this.f4639g = z10;
            this.f4638f.append(a10, i10, i11);
            return this;
        }
    }
}
