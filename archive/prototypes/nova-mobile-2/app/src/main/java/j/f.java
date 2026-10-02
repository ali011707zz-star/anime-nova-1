package j;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import j.b;
import java.util.ArrayList;

/* compiled from: SupportActionModeWrapper.java */
/* loaded from: classes.dex */
public class f extends ActionMode {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8001a;

    /* renamed from: b, reason: collision with root package name */
    public final b f8002b;

    /* compiled from: SupportActionModeWrapper.java */
    /* loaded from: classes.dex */
    public static class a implements b.a {

        /* renamed from: a, reason: collision with root package name */
        public final ActionMode.Callback f8003a;

        /* renamed from: b, reason: collision with root package name */
        public final Context f8004b;

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList<f> f8005c = new ArrayList<>();

        /* renamed from: d, reason: collision with root package name */
        public final s.g<Menu, Menu> f8006d = new s.g<>();

        public a(Context context, ActionMode.Callback callback) {
            this.f8004b = context;
            this.f8003a = callback;
        }

        @Override // j.b.a
        public boolean a(b bVar, MenuItem menuItem) {
            return this.f8003a.onActionItemClicked(e(bVar), new k.c(this.f8004b, (j0.b) menuItem));
        }

        @Override // j.b.a
        public boolean b(b bVar, Menu menu) {
            return this.f8003a.onCreateActionMode(e(bVar), f(menu));
        }

        @Override // j.b.a
        public void c(b bVar) {
            this.f8003a.onDestroyActionMode(e(bVar));
        }

        @Override // j.b.a
        public boolean d(b bVar, Menu menu) {
            return this.f8003a.onPrepareActionMode(e(bVar), f(menu));
        }

        public ActionMode e(b bVar) {
            int size = this.f8005c.size();
            for (int i10 = 0; i10 < size; i10++) {
                f fVar = this.f8005c.get(i10);
                if (fVar != null && fVar.f8002b == bVar) {
                    return fVar;
                }
            }
            f fVar2 = new f(this.f8004b, bVar);
            this.f8005c.add(fVar2);
            return fVar2;
        }

        public final Menu f(Menu menu) {
            Menu menu2 = this.f8006d.get(menu);
            if (menu2 != null) {
                return menu2;
            }
            k.e eVar = new k.e(this.f8004b, (j0.a) menu);
            this.f8006d.put(menu, eVar);
            return eVar;
        }
    }

    public f(Context context, b bVar) {
        this.f8001a = context;
        this.f8002b = bVar;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f8002b.a();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f8002b.b();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new k.e(this.f8001a, (j0.a) this.f8002b.c());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f8002b.d();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f8002b.e();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f8002b.f();
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f8002b.g();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f8002b.h();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f8002b.i();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f8002b.j();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f8002b.k(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f8002b.m(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f8002b.n(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f8002b.p(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z10) {
        this.f8002b.q(z10);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i10) {
        this.f8002b.l(i10);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i10) {
        this.f8002b.o(i10);
    }
}
