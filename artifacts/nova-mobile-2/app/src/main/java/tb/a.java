package tb;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import pb.d;
import pb.e;
import rb.b;

/* compiled from: ChangeLogRecyclerView.java */
/* loaded from: classes.dex */
public class a extends RecyclerView {

    /* renamed from: k, reason: collision with root package name */
    public static String f14106k = "ChangeLogRecyclerView";

    /* renamed from: f, reason: collision with root package name */
    public int f14107f;

    /* renamed from: g, reason: collision with root package name */
    public int f14108g;

    /* renamed from: h, reason: collision with root package name */
    public int f14109h;

    /* renamed from: i, reason: collision with root package name */
    public String f14110i;

    /* renamed from: j, reason: collision with root package name */
    public b f14111j;

    /* compiled from: ChangeLogRecyclerView.java */
    /* renamed from: tb.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class AsyncTaskC0354a extends AsyncTask<Void, Void, rb.a> {

        /* renamed from: a, reason: collision with root package name */
        public b f14112a;

        /* renamed from: b, reason: collision with root package name */
        public sb.b f14113b;

        public AsyncTaskC0354a(b bVar, sb.b bVar2) {
            this.f14112a = bVar;
            this.f14113b = bVar2;
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public rb.a doInBackground(Void... voidArr) {
            try {
                sb.b bVar = this.f14113b;
                if (bVar != null) {
                    return bVar.a();
                }
                return null;
            } catch (Exception unused) {
                String str = a.f14106k;
                a.this.getResources().getString(d.f12209c);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(rb.a aVar) {
            if (aVar != null) {
                this.f14112a.e(aVar.b());
            }
        }
    }

    public a(Context context) {
        this(context, null);
    }

    @TargetApi(21)
    public void a(AttributeSet attributeSet, int i10) {
        c(attributeSet, i10);
        b();
        d();
    }

    public void b() {
        sb.b bVar;
        try {
            if (this.f14110i != null) {
                bVar = new sb.b(getContext(), this.f14110i);
            } else {
                bVar = new sb.b(getContext(), this.f14109h);
            }
            b bVar2 = new b(getContext(), new rb.a().b());
            this.f14111j = bVar2;
            bVar2.k(this.f14107f);
            this.f14111j.j(this.f14108g);
            String str = this.f14110i;
            if (str != null && (str == null || !qb.b.a(getContext()))) {
                Toast.makeText(getContext(), d.f12208b, 1).show();
                setAdapter(this.f14111j);
            }
            new AsyncTaskC0354a(this.f14111j, bVar).execute(new Void[0]);
            setAdapter(this.f14111j);
        } catch (Exception unused) {
            getResources().getString(d.f12209c);
        }
    }

    public void c(AttributeSet attributeSet, int i10) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, e.f12212a, i10, i10);
        try {
            this.f14107f = obtainStyledAttributes.getResourceId(e.f12216e, this.f14107f);
            this.f14108g = obtainStyledAttributes.getResourceId(e.f12215d, this.f14108g);
            this.f14109h = obtainStyledAttributes.getResourceId(e.f12213b, this.f14109h);
            this.f14110i = obtainStyledAttributes.getString(e.f12214c);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void d() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(1);
        setLayoutManager(linearLayoutManager);
    }

    public a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public a(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f14107f = qb.a.f12674b;
        this.f14108g = qb.a.f12675c;
        this.f14109h = qb.a.f12673a;
        this.f14110i = null;
        a(attributeSet, i10);
    }
}
