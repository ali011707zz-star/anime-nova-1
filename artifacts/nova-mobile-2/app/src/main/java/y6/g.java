package y6;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.widget.SingleLineTextView;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.text.DecimalFormat;
import java.util.ArrayList;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.params.CoreProtocolPNames;
import y6.g;

/* compiled from: QualityDialogAdapter.kt */
/* loaded from: classes.dex */
public final class g extends BaseAdapter {

    /* renamed from: f, reason: collision with root package name */
    public final Activity f16462f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList<p4.n> f16463g;

    /* renamed from: h, reason: collision with root package name */
    public final v4.a f16464h;

    /* renamed from: i, reason: collision with root package name */
    public final v4.b f16465i;

    /* renamed from: j, reason: collision with root package name */
    public final String f16466j;

    /* renamed from: k, reason: collision with root package name */
    public a f16467k;

    /* compiled from: QualityDialogAdapter.kt */
    /* loaded from: classes.dex */
    public interface a {
        void a(int i10, String str);

        void b(int i10, String str, v4.b bVar);
    }

    /* compiled from: QualityDialogAdapter.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.a<vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ int f16469g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ j4.y f16470h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i10, j4.y yVar) {
            super(0);
            this.f16469g = i10;
            this.f16470h = yVar;
        }

        public static final void c(j4.y yVar, int i10, g gVar) {
            jc.l.f(yVar, "$binding");
            jc.l.f(gVar, "this$0");
            ProgressBar progressBar = yVar.f8824c;
            jc.l.e(progressBar, "binding.progress");
            SupportExtentionKt.gone(progressBar);
            ImageButton imageButton = yVar.f8827f;
            jc.l.e(imageButton, "binding.sizeButton");
            SupportExtentionKt.visible(imageButton);
            if (i10 > 0) {
                ImageButton imageButton2 = yVar.f8827f;
                jc.l.e(imageButton2, "binding.sizeButton");
                SupportExtentionKt.gone(imageButton2);
                SingleLineTextView singleLineTextView = yVar.f8825d;
                jc.l.e(singleLineTextView, "binding.qualitySize");
                SupportExtentionKt.visible(singleLineTextView);
                yVar.f8825d.setText(gVar.k(i10));
            }
        }

        public final void b() {
            g gVar = g.this;
            final int j10 = gVar.j(gVar.i().get(this.f16469g).c());
            Activity g10 = g.this.g();
            final j4.y yVar = this.f16470h;
            final g gVar2 = g.this;
            g10.runOnUiThread(new Runnable() { // from class: y6.h
                @Override // java.lang.Runnable
                public final void run() {
                    g.b.c(j4.y.this, j10, gVar2);
                }
            });
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            b();
            return vb.p.f15031a;
        }
    }

    public g(Activity activity, ArrayList<p4.n> arrayList, v4.a aVar, v4.b bVar, String str) {
        jc.l.f(activity, "activity");
        jc.l.f(arrayList, "qualities");
        jc.l.f(aVar, "serverModel");
        jc.l.f(str, "title");
        this.f16462f = activity;
        this.f16463g = arrayList;
        this.f16464h = aVar;
        this.f16465i = bVar;
        this.f16466j = str;
    }

    public static final void l(g gVar, int i10, View view) {
        jc.l.f(gVar, "this$0");
        a aVar = gVar.f16467k;
        if (aVar == null) {
            return;
        }
        aVar.a(i10, gVar.f16466j);
    }

    public static final void m(g gVar, int i10, View view) {
        jc.l.f(gVar, "this$0");
        a aVar = gVar.f16467k;
        if (aVar == null) {
            return;
        }
        aVar.b(i10, gVar.f16466j, gVar.f16465i);
    }

    public static final void n(j4.y yVar, g gVar, int i10, View view) {
        jc.l.f(yVar, "$binding");
        jc.l.f(gVar, "this$0");
        ImageButton imageButton = yVar.f8827f;
        jc.l.e(imageButton, "binding.sizeButton");
        SupportExtentionKt.gone(imageButton);
        ProgressBar progressBar = yVar.f8824c;
        jc.l.e(progressBar, "binding.progress");
        SupportExtentionKt.visible(progressBar);
        zb.a.a((r12 & 1) != 0 ? true : true, (r12 & 2) != 0 ? false : false, (r12 & 4) != 0 ? null : null, (r12 & 8) != 0 ? null : null, (r12 & 16) != 0 ? -1 : 0, new b(i10, yVar));
    }

    public final void f(a aVar) {
        jc.l.f(aVar, "obj");
        this.f16467k = aVar;
    }

    public final Activity g() {
        return this.f16462f;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f16463g.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(final int i10, View view, ViewGroup viewGroup) {
        final j4.y c10;
        jc.l.f(viewGroup, "parent");
        if (view != null) {
            c10 = j4.y.a(view);
        } else {
            c10 = j4.y.c(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        }
        jc.l.e(c10, "if (convertView != null)… parent, false)\n        }");
        c10.f8823b.setOnClickListener(new View.OnClickListener() { // from class: y6.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                g.l(g.this, i10, view2);
            }
        });
        c10.f8828g.setOnClickListener(new View.OnClickListener() { // from class: y6.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                g.m(g.this, i10, view2);
            }
        });
        c10.f8827f.setOnClickListener(new View.OnClickListener() { // from class: y6.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                g.n(j4.y.this, this, i10, view2);
            }
        });
        c10.f8826e.setText(this.f16463g.get(i10).a());
        v4.b bVar = this.f16465i;
        if ((bVar != null && bVar.d() == 1) || jc.l.a(this.f16464h.a(), "TP")) {
            ImageButton imageButton = c10.f8823b;
            jc.l.e(imageButton, "binding.downloadButton");
            SupportExtentionKt.invisible(imageButton);
            ImageButton imageButton2 = c10.f8827f;
            jc.l.e(imageButton2, "binding.sizeButton");
            SupportExtentionKt.invisible(imageButton2);
        } else {
            ImageButton imageButton3 = c10.f8823b;
            jc.l.e(imageButton3, "binding.downloadButton");
            SupportExtentionKt.visible(imageButton3);
            SingleLineTextView singleLineTextView = c10.f8826e;
            jc.l.e(singleLineTextView, "binding.qualityTitle");
            SupportExtentionKt.visible(singleLineTextView);
        }
        LinearLayout b10 = c10.b();
        jc.l.e(b10, "binding.root");
        return b10;
    }

    @Override // android.widget.Adapter
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public p4.n getItem(int i10) {
        p4.n nVar = this.f16463g.get(i10);
        jc.l.e(nVar, "qualities[position]");
        return nVar;
    }

    public final ArrayList<p4.n> i() {
        return this.f16463g;
    }

    public final int j(String str) {
        Throwable th;
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        try {
            URLConnection openConnection = new URL(str).openConnection();
            if (openConnection != null) {
                httpURLConnection = (HttpURLConnection) openConnection;
                try {
                    httpURLConnection.setRequestProperty(CoreProtocolPNames.USER_AGENT, "Mozilla/5.0 (Linux; Android 4.4.2; Nexus 4 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.114 Mobile Safari/537.36");
                    httpURLConnection.setRequestMethod(HttpHead.METHOD_NAME);
                    httpURLConnection.getInputStream().close();
                    int contentLength = httpURLConnection.getContentLength();
                    httpURLConnection.disconnect();
                    return contentLength;
                } catch (Exception unused) {
                    httpURLConnection2 = httpURLConnection;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return 0;
                } catch (Throwable th2) {
                    th = th2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            }
            throw new NullPointerException("null cannot be cast to non-null type java.net.HttpURLConnection");
        } catch (Exception unused2) {
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = null;
        }
    }

    public final String k(int i10) {
        DecimalFormat decimalFormat = new DecimalFormat("0");
        double d10 = i10;
        if (d10 < 1048576.0d) {
            Double.isNaN(d10);
            return jc.l.m(decimalFormat.format(d10 / 1024.0d), "Kb");
        }
        if (d10 < 1.073741824E9d) {
            Double.isNaN(d10);
            return jc.l.m(decimalFormat.format(d10 / 1048576.0d), "Mb");
        }
        if (d10 >= 1.099511627776E12d) {
            return "";
        }
        Double.isNaN(d10);
        return jc.l.m(decimalFormat.format(d10 / 1.073741824E9d), "Gb");
    }
}
