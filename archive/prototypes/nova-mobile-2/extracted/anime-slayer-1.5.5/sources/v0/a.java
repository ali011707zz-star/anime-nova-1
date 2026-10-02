package v0;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import v0.b;

/* compiled from: CursorAdapter.java */
/* loaded from: classes.dex */
public abstract class a extends BaseAdapter implements Filterable, b.a {

    /* renamed from: f, reason: collision with root package name */
    public boolean f14734f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f14735g;

    /* renamed from: h, reason: collision with root package name */
    public Cursor f14736h;

    /* renamed from: i, reason: collision with root package name */
    public Context f14737i;

    /* renamed from: j, reason: collision with root package name */
    public int f14738j;

    /* renamed from: k, reason: collision with root package name */
    public C0381a f14739k;

    /* renamed from: l, reason: collision with root package name */
    public DataSetObserver f14740l;

    /* renamed from: m, reason: collision with root package name */
    public v0.b f14741m;

    /* compiled from: CursorAdapter.java */
    /* renamed from: v0.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0381a extends ContentObserver {
        public C0381a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z10) {
            a.this.i();
        }
    }

    /* compiled from: CursorAdapter.java */
    /* loaded from: classes.dex */
    public class b extends DataSetObserver {
        public b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            a aVar = a.this;
            aVar.f14734f = true;
            aVar.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            a aVar = a.this;
            aVar.f14734f = false;
            aVar.notifyDataSetInvalidated();
        }
    }

    public a(Context context, Cursor cursor, boolean z10) {
        f(context, cursor, z10 ? 1 : 2);
    }

    public void a(Cursor cursor) {
        Cursor j10 = j(cursor);
        if (j10 != null) {
            j10.close();
        }
    }

    @Override // v0.b.a
    public Cursor b() {
        return this.f14736h;
    }

    public abstract CharSequence c(Cursor cursor);

    public abstract void e(View view, Context context, Cursor cursor);

    public void f(Context context, Cursor cursor, int i10) {
        if ((i10 & 1) == 1) {
            i10 |= 2;
            this.f14735g = true;
        } else {
            this.f14735g = false;
        }
        boolean z10 = cursor != null;
        this.f14736h = cursor;
        this.f14734f = z10;
        this.f14737i = context;
        this.f14738j = z10 ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i10 & 2) == 2) {
            this.f14739k = new C0381a();
            this.f14740l = new b();
        } else {
            this.f14739k = null;
            this.f14740l = null;
        }
        if (z10) {
            C0381a c0381a = this.f14739k;
            if (c0381a != null) {
                cursor.registerContentObserver(c0381a);
            }
            DataSetObserver dataSetObserver = this.f14740l;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    public abstract View g(Context context, Cursor cursor, ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f14734f || (cursor = this.f14736h) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        if (!this.f14734f) {
            return null;
        }
        this.f14736h.moveToPosition(i10);
        if (view == null) {
            view = g(this.f14737i, this.f14736h, viewGroup);
        }
        e(view, this.f14737i, this.f14736h);
        return view;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f14741m == null) {
            this.f14741m = new v0.b(this);
        }
        return this.f14741m;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        Cursor cursor;
        if (!this.f14734f || (cursor = this.f14736h) == null) {
            return null;
        }
        cursor.moveToPosition(i10);
        return this.f14736h;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        Cursor cursor;
        if (this.f14734f && (cursor = this.f14736h) != null && cursor.moveToPosition(i10)) {
            return this.f14736h.getLong(this.f14738j);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (this.f14734f) {
            if (this.f14736h.moveToPosition(i10)) {
                if (view == null) {
                    view = h(this.f14737i, this.f14736h, viewGroup);
                }
                e(view, this.f14737i, this.f14736h);
                return view;
            }
            throw new IllegalStateException("couldn't move cursor to position " + i10);
        }
        throw new IllegalStateException("this should only be called when the cursor is valid");
    }

    public abstract View h(Context context, Cursor cursor, ViewGroup viewGroup);

    public void i() {
        Cursor cursor;
        if (!this.f14735g || (cursor = this.f14736h) == null || cursor.isClosed()) {
            return;
        }
        this.f14734f = this.f14736h.requery();
    }

    public Cursor j(Cursor cursor) {
        Cursor cursor2 = this.f14736h;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            C0381a c0381a = this.f14739k;
            if (c0381a != null) {
                cursor2.unregisterContentObserver(c0381a);
            }
            DataSetObserver dataSetObserver = this.f14740l;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f14736h = cursor;
        if (cursor != null) {
            C0381a c0381a2 = this.f14739k;
            if (c0381a2 != null) {
                cursor.registerContentObserver(c0381a2);
            }
            DataSetObserver dataSetObserver2 = this.f14740l;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f14738j = cursor.getColumnIndexOrThrow("_id");
            this.f14734f = true;
            notifyDataSetChanged();
        } else {
            this.f14738j = -1;
            this.f14734f = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }
}
